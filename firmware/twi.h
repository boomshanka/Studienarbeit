#ifndef _TWI_H__
#define _TWI_H__

#define TWI_READ	1
#define TWI_WRITE	0

#include <stdint.h>


void	twi_init(void);

uint8_t	twi_start(uint8_t address, uint8_t type_rw);
void	twi_stop(void);

uint8_t	twi_write(uint8_t data);
uint8_t	twi_read_ack(void);
uint8_t twi_read_nack(void);

uint8_t	twi_status(void);


#endif // _TWI_H__

