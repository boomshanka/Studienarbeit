#ifndef _TWI_MASTER_H__
#define _TWI_MASTER_H__

#define TWIM_READ	1
#define TWIM_WRITE	0

#include <stdint.h>


// Für Master- & Slave-Modus muss TWI-Slave initialisiert werden
//void	twim_init(void);

uint8_t	twim_start(uint8_t address, uint8_t type_rw);
void	twim_stop(void);

uint8_t	twim_write(uint8_t data);
uint8_t	twim_read_ack(void);
uint8_t twim_read_nack(void);

uint8_t	twim_status(void);


#endif // _TWI_MASTER_H__

