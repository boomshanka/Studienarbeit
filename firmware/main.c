#include "signal.h"
#include "signal_interrupt.h"

#include <avr/io.h>
#include <avr/interrupt.h>


int main(void)
{
	// Init-Funktionen
	signal_init();
	signal_interrupt_init();
	
	// Interrupts aktivieren
	sei();
	
	// 
	signal_interrupt_activate();
//	signal_start();
	
	
	while (1) ;
	
	return 0;
}

