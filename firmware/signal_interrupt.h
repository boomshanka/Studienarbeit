#ifndef _SIGNAL_INTERRUPT_H__
#define _SIGNAL_INTERRUPT_H__

#include <stdint.h>



volatile uint8_t flag;
volatile uint8_t counterreg;
volatile uint16_t overflow;
volatile uint16_t of;


void signal_interrupt_init(void);

void signal_interrupt_activate(void);
void signal_interrupt_deactivate(void);



#endif

