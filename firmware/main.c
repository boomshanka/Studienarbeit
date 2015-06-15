#include "device.h"
#include "leds.h"
#include "display.h"

#include "signal.h"
#include "time_of_flight.h"

#include "twi_slave.h"
#include "protocol.h"

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>

#include <util/delay.h>
#include <stdint.h>


void init(void);

void loop_big(void);
void loop_small(void);

uint8_t slave_update(void);
void	slave_statchange(uint8_t);

void twi(void);

void print_vel(void);
void print_dis(void);


uint8_t state_dis = 1;
uint8_t connected = 0;
uint8_t command = 0;

//uint8_t data[4] = {0};
//uint8_t data_length = 0;


int main(void)
{
	// Initialisieren
	init();
	leds_blink(1<<LEDS_YELLOW, 3);
	
	// Interrupts aktivieren
	sei();
	leds_blink(1<<LEDS_GREEN, 3);
	
	// Kurz warten, dann Adresse blinken
	_delay_ms(500);
	if (device_big())
	{
		display_number(0, 0);
		leds_blink(1<<LEDS_GREEN, 2);
		
		// Hauptschleife für große Platine starten
		loop_big();
	}
	else if (device_small())
	{
		leds_blink(1<<LEDS_YELLOW, 2);
	}
	else
	{
		leds_blink(1<<LEDS_RED, 2);
	}
	
	// Hauptschleife für kleine Platine starten
	loop_small();
	
	return 0;
}


void init()
{
	// Zur sicherheit Watchdog ausschalten
	wdt_disable();
	
	device_init();
	if (device_big())
	{
		// Anzeige initialisieren
		display_init();
		display_number(8888, 0xf);
	}
	leds_init();
	signal_init();
	tof_init();
	
	twis_init(device_address());
}



void twi()
{
	if (rxlength > 0)
	{
		slave_statchange(rxbuffer[0]);
		
		rxlength = 0;
	}
}


void loop_big()
{
	print_dis();
	uint16_t counter = 0;
	
	while (1)
	{
		if (!connected)
		{
			// Nicht verbunden, Wechsel zwischen Modus Distanz und Geschwindigkeit möglich
			if (state_dis)
			{
				// Distanz
				if (!(slave_update() & (1<<TOF_RUNNING)))
				{
					// Keine Messung läuft, kann gestartet werden
					if (++counter == 20000)
					{
						leds_off((1<<LEDS_GREEN)|(1<<LEDS_RED));
					}
					else if (counter == 25000)
					{
						tof_startmes();
						counter = 0;
					}
				}
			}
			else
			{
				// Geschwindigkeit
				
			}
		}
		else
		{
			// Gelbe LED pulsieren lassen
			leds_pulse(1<<LEDS_YELLOW);
			slave_update();
		}
		
		twi();
	}
}


void loop_small()
{
	while (1)
	{
		if (!connected)
		{
			// Nicht verbunden, rote LED pulsieren lassen
			leds_pulse(1<<LEDS_RED);
		}
		else
		{
			// Gelbe LED pulsieren lassen
			leds_pulse(1<<LEDS_YELLOW);
			slave_update();
		}
		
		twi();
	}
}



uint8_t slave_update()
{
	// Achtung! Race-Condition mit tof_flag möglich
	uint8_t temp_flag = tof_flag;
	
	if (temp_flag & (1<<TOF_STOPPED))
	{
		// Messung beendet
		// Status prüfen
		if (temp_flag & (1<<TOF_SUCCESS))
		{
			uint16_t result = tof_getresult();
			txbuffer[0] = PROT_MESSUCC;
			txbuffer[1] = (uint8_t)(result>>16);	// Highbyte
			txbuffer[2] = (uint8_t)result;			// Lowbyte
			txlength = 3;
			leds_on(1<<LEDS_GREEN);
			
			if (device_big())
				display_number(result, 2);
		}
		else if (temp_flag & (1<<TOF_TIMEOUT))
		{
			txbuffer[0] = PROT_MESFAIL;
			txlength = 1;
			leds_on(1<<LEDS_RED);
						
			if (device_big())
				display_number(0, 0);
		}
		
		// Flag löschen
		tof_flag = 0;
	}
	
	return temp_flag;
}


void slave_statchange(uint8_t command)
{
	switch (command)
	{
		case PROT_CONNECT:
			// Status Verbinden setzen
			connected=1;
			// Alle Messungen unterbrechen
			tof_stopmes();
			// LEDs aus
			leds_off((1<<LEDS_RED) | (1<<LEDS_YELLOW));
			// Display leeren
			if (device_big())
				display_number(0, 0);
			break;
			
		case PROT_DISCONNECT:
			// Status nicht Verbunden
			connected=0;
			// Alle Messungen unterbrechen
			tof_stopmes();
			// LEDs aus
			leds_off((1<<LEDS_RED) | (1<<LEDS_YELLOW) | (1<<LEDS_GREEN));
			// Status Distanz
			print_dis();
			state_dis = 1;
			break;
			
		case PROT_STARTMES:
			// Messung starten
			leds_off((1<<LEDS_RED) | (1<<LEDS_YELLOW) | (1<<LEDS_GREEN));
			tof_startmes();
			break;
			
		case PROT_DIST_SEND:
			// Ultraschall- & Trigger-Signal senden
			leds_off((1<<LEDS_RED) | (1<<LEDS_YELLOW) | (1<<LEDS_GREEN));
			tof_sendtrigger();
			break;
				
		case PROT_DIST_MES:
			// Auf Trigger-Signal warten, dann Zeitmessung starten
			leds_off((1<<LEDS_RED) | (1<<LEDS_GREEN));
			leds_on(1<<LEDS_YELLOW);
			tof_waitfortrigger();
			break;
			
		default:
			// Fehler! Unbekanntes Kommando / Kommunikationsfehler
			leds_blink((1<<LEDS_RED), 2);
			break;
	}
}



void print_vel()
{
	_display_write(0x66); // V
	_display_write(0x8f); // E
	_display_write(0x0e | DISPLAY_DOT); // L.
	_display_write(0);
	
	_delay_ms(1500);
	display_number(0, 0);
	
}


void print_dis()
{
	_display_write(0xee); // D
	_display_write(0x06); // I
	_display_write(0xab | DISPLAY_DOT); // S.
	_display_write(0);
	
	_delay_ms(1500);
	display_number(0, 0);
}


