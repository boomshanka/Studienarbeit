#ifndef SIGNAL_H
#define SIGNAL_H

#include <avr/io.h>



void signal_init(void);

inline void signal_start(void)
{
	// Pin PB1 als Ausgang konfigurieren
	DDRB |= (1<<PB1);
}

inline void signal_stop(void)
{
	// Pin PB1 als Eingang konfigurieren
	DDRB &= ~(1<<PB1);
}

#endif 

