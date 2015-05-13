#ifndef SIGNAL_H
#define SIGNAL_H

#include <avr/io.h>



void signal_init(void);

inline void signal_start(void)
{
	// Pin PB2 als Ausgang konfigurieren
	//DDRB |= (1<<PB2);
	
	// Timer mit CPU-Frequenz starten
	TCCR1B |= (1<<CS10);
}

inline void signal_stop(void)
{
	// Timer anhalten
	TCCR1B &= ~(1<<CS10);
	
	// Zähler zurücksetzen
	TCNT1 = 0;
	
	// Pin PB2 als Eingang konfigurieren
	//DDRB &= ~(1<<PB2);
}

#endif 

