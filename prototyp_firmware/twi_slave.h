#ifndef _TWI_SLAVE_H__
#define _TWI_SLAVE_H__

// Bitrate 100kHz oder 200kHz. 400kHz ist zu hoch!
#define TWIS_BITRATE_100k	100000UL
#define TWIS_BITRATE_200k	200000UL

#define	TWIS_READ			0x60
#define	TWIS_WRITE			0xA8


#include <stdint.h>



void	twis_init(uint8_t address, uint32_t bitrate);

uint8_t	twis_response_required(uint8_t *response_type);
void	twis_stop(void);

void	twis_write(uint8_t data);
uint8_t	twis_read_ack(void);
uint8_t twis_read_nack(void);



#endif // _TWI_SLAVE_H__


