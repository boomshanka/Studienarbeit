#include "twi_slave.h"

#include "time_of_flight.h"
#include "protocol.h"

#include <avr/interrupt.h> 	
#include <util/twi.h>


//ACK nach empfangenen Daten senden/ ACK nach gesendeten Daten erwarten
#define TWCR_ACK 	TWCR = (1<<TWEN)|(1<<TWIE)|(1<<TWINT)|(1<<TWEA)|(0<<TWSTA)|(0<<TWSTO)|(0<<TWWC);  
//NACK nach empfangenen Daten senden/ NACK nach gesendeten Daten erwarten     
#define TWCR_NACK 	TWCR = (1<<TWEN)|(1<<TWIE)|(1<<TWINT)|(0<<TWEA)|(0<<TWSTA)|(0<<TWSTO)|(0<<TWWC);
//switched to the non adressed slave mode...
#define TWCR_RESET 	TWCR = (1<<TWEN)|(1<<TWIE)|(1<<TWINT)|(1<<TWEA)|(0<<TWSTA)|(0<<TWSTO)|(0<<TWWC);  



void twis_init(uint8_t address)
{
	// Vorteiler auf 1 stellen (00), Statusregister löschen
//	TWSR = 0x00;
	
	// Bitrate einstellen
//	TWBR = ((F_CPU/bitrate)-16)/2; // Als Slave nicht nötig (?)
	
	// Adresse setzen
//	TWAR = (address << 1);
	
	// TWI aktivieren
//	TWCR = (1<<TWEN)|(1<<TWEA);
	
	// Alternativ
	TWAR = (address << 1);
	TWCR &= ~(1<<TWSTA)|(1<<TWSTO);
	TWCR |= (1<<TWEA) | (1<<TWEN)|(1<<TWIE); 	
	
	rxlength = 0;
	txlength = 0; 
}



ISR (TWI_vect)  
{
	uint8_t pos = 0;
	
	switch (TW_STATUS) 						// TWI-Statusregister prüfen und nötige Aktion bestimmen 
	{
		case TW_SR_SLA_ACK: 				// 0x60 Slave Receiver, wurde adressiert	
			TWCR_ACK; 						// nächstes Datenbyte empfangen, ACK danach
			rxlength=0; 					// Schreibposition 0
			break;

		case TW_SR_DATA_ACK: 				// 0x80 Slave Receiver,Daten empfangen
			rxbuffer[rxlength++] = TWDR;	// Daten in Buffer schreiben
											// Buffer-Adresse weiterzählen für nächsten Schreibzugriff
			if(rxlength < buffer_size)	 	// im Buffer ist noch Platz für mehr als ein Byte
			{
				TWCR_ACK;					// nächstes Datenbyte empfangen, ACK danach, um nächstes Byte anzufordern
			}
			else   							// es kann nur noch ein Byte kommen, dann ist der Buffer voll
			{
				TWCR_NACK;					// letztes Byte lesen, dann NACK, um vollen Buffer zu signaliseren
			}
			
			if (rxlength == 1 && (rxbuffer[0] == PROT_CONNECT | rxbuffer[0] == PROT_DISCONNECT))
			{
				tof_flag &= ~(1<<TOF_WAITING);
			}
			break;

		case TW_ST_SLA_ACK: 				//
		case TW_ST_DATA_ACK: 				// 0xB8 Slave Transmitter, weitere Daten wurden angefordert
			TWDR = txbuffer[pos++]; 		// Datenbyte senden 
											// bufferadresse für nächstes Byte weiterzählen
			if(pos < txlength) 				// im Buffer ist mehr als ein Byte, das gesendet werden kann
			{
				TWCR_ACK; 					// nächstes Byte senden, danach ACK erwarten
			}
			else
			{
				TWCR_NACK; 					// letztes Byte senden, danach NACK erwarten
			}
			break;

		case TW_ST_DATA_NACK: 				// 0xC0 Keine Daten mehr gefordert 
		case TW_SR_DATA_NACK: 				// 0x88 
		case TW_ST_LAST_DATA: 				// 0xC8  Last data byte in TWDR has been transmitted (TWEA = 0); ACK has been received
		case TW_SR_STOP: 					// 0xA0 STOP empfangen
		default:
			TWCR_RESET; 					// Übertragung beenden, warten bis zur nächsten Adressierung
			break;	
	}
}
