#ifndef _SIGNAL_INTERRUPT_H__
#define _SIGNAL_INTERRUPT_H__


volatile uint8_t flag;


void signal_interrupt_init(void);

void signal_interrupt_activate(void);



#endif

