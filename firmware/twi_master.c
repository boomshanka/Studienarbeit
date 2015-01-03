/****************************************************************************
  TWI State codes
****************************************************************************/
// General TWI Master staus codes                      
#define TWI_START					0x08  // START has been transmitted  
#define TWI_REP_START				0x10  // Repeated START has been transmitted
#define TWI_ARB_LOST				0x38  // Arbitration lost

// TWI Master Transmitter staus codes                      
#define TWI_MTX_ADR_ACK				0x18  // SLA+W has been tramsmitted and ACK received
#define TWI_MTX_ADR_NACK			0x20  // SLA+W has been tramsmitted and NACK received 
#define TWI_MTX_DATA_ACK			0x28  // Data byte has been tramsmitted and ACK received
#define TWI_MTX_DATA_NACK			0x30  // Data byte has been tramsmitted and NACK received 

// TWI Master Receiver staus codes  
#define TWI_MRX_ADR_ACK				0x40  // SLA+R has been tramsmitted and ACK received
#define TWI_MRX_ADR_NACK			0x48  // SLA+R has been tramsmitted and NACK received
#define TWI_MRX_DATA_ACK			0x50  // Data byte has been received and ACK tramsmitted
#define TWI_MRX_DATA_NACK			0x58  // Data byte has been received and NACK tramsmitted

// TWI Slave Transmitter staus codes
#define TWI_STX_ADR_ACK				0xA8  // Own SLA+R has been received; ACK has been returned
#define TWI_STX_ADR_ACK_M_ARB_LOST	0xB0  // Arbitration lost in SLA+R/W as Master; own SLA+R has been received; ACK has been returned
#define TWI_STX_DATA_ACK			0xB8  // Data byte in TWDR has been transmitted; ACK has been received
#define TWI_STX_DATA_NACK			0xC0  // Data byte in TWDR has been transmitted; NOT ACK has been received
#define TWI_STX_DATA_ACK_LAST_BYTE	0xC8  // Last data byte in TWDR has been transmitted (TWEA = 0); ACK has been received

// TWI Slave Receiver staus codes
#define TWI_SRX_ADR_ACK				0x60  // Own SLA+W has been received ACK has been returned
#define TWI_SRX_ADR_ACK_M_ARB_LOST	0x68  // Arbitration lost in SLA+R/W as Master; own SLA+W has been received; ACK has been returned
#define TWI_SRX_GEN_ACK				0x70  // General call address has been received; ACK has been returned
#define TWI_SRX_GEN_ACK_M_ARB_LOST	0x78  // Arbitration lost in SLA+R/W as Master; General call address has been received; ACK has been returned
#define TWI_SRX_ADR_DATA_ACK		0x80  // Previously addressed with own SLA+W; data has been received; ACK has been returned
#define TWI_SRX_ADR_DATA_NACK		0x88  // Previously addressed with own SLA+W; data has been received; NOT ACK has been returned
#define TWI_SRX_GEN_DATA_ACK		0x90  // Previously addressed with general call; data has been received; ACK has been returned
#define TWI_SRX_GEN_DATA_NACK		0x98  // Previously addressed with general call; data has been received; NOT ACK has been returned
#define TWI_SRX_STOP_RESTART		0xA0  // A STOP condition or repeated START condition has been received while still addressed as Slave

// TWI Miscellaneous status codes
#define TWI_NO_STATE				0xF8  // No relevant state information available; TWINT = 0
#define TWI_BUS_ERROR				0x00  // Bus error due to an illegal START or STOP condition


#include "twi_master.h"
#include <util/twi.h>



/*
void twim_init()
{
	// Vorteiler auf 1 stellen (00), Statusregister löschen
	TWSR = 0x00;
	
	// Bitrate einstellen
	TWBR = ((F_CPU/TWI_BITRATE)-16)/2;
}
*/

uint8_t twim_start(uint8_t address, uint8_t type_rw)
{
	// Start senden und warten, bis Vorgang abgeschlossen ist
    TWCR = (1<<TWINT)|(1<<TWSTA)|(1<<TWEN);
	while (!(TWCR & (1<<TWINT)));
	
    // Status mit Maske prüfen
	uint8_t status = TWSR & 0xF8;
	if ((status != TWI_START) && (status != TWI_REP_START))
		return 0;
		
	// Adresse senden, warten
	TWDR = (address<<1) + type_rw;
	TWCR = (1<<TWINT)|(1<<TWEN);
	while (!(TWCR & (1<<TWINT)));
	
	// Status prüfen und zurückgeben
    status = TWSR & 0xF8;
	return ((status == TWI_START) || (status == TWI_REP_START));
}


void twim_stop(void)
{
	// Stop senden und warten
	TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWSTO);
	while (TWCR & (1<<TWINT));
}
	


uint8_t twim_write(uint8_t data)
{
	// Daten senden und warten
    TWDR = data;
    TWCR = (1<<TWINT)|(1<<TWEN);
    while (!(TWCR & (1<<TWINT)));
    
    // Status mit Maske prüfen und zurückgeben
    uint8_t status = TWSR & 0xF8;
	return (status == TWI_MTX_DATA_ACK);
}



uint8_t twim_read_ack(void)
{
	// Daten anfordern
	TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWEA); // ACK
	while ((TWCR & (1<<TWINT)) == 0);
	
	return TWDR;
}


uint8_t twim_read_nack(void)
{
	// Daten anfordern
	TWCR = (1<<TWINT)|(1<<TWEN); // NACK
	while ((TWCR & (1<<TWINT)) == 0);
	
	return TWDR;
}


uint8_t twim_status(void)
{
	 // Status mit Maske prüfen und zurückgeben
    uint8_t status = TWSR & 0xF8;
	return (status == TWI_MTX_DATA_ACK);
}





