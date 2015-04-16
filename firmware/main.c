#include "signal.h"
#include "signal_interrupt.h"
#include "time_of_flight.h"

#include "display.h"

#include <avr/io.h>
#include <avr/interrupt.h>

#include <util/delay.h>


int main(void)
{
	// Init-Funktionen
	display_init();
	signal_init();
	signal_interrupt_init();
	tof_init();
	
	// Interrupts aktivieren
	sei();
	
/*	signal_start();
	while(1)
	{
		_delay_ms(10);
	}*/
		
	
	while (1)
	{
		display_number(tof_measure()/(uint16_t)(6));
		
		_delay_ms(500);
	}
	
	return 0;
}

