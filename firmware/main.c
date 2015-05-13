#include "signal.h"
#include "signal_interrupt.h"
#include "time_of_flight.h"
#include "leds.h"


#include <avr/io.h>
#include <avr/interrupt.h>

#include <util/delay.h>
#include <stdint.h>



void init(void);


int main(void)
{
	// Initialisieren
	init();
	
	// Interrupts aktivieren
	sei();
	
	
	while (1)
	{
		
	}
	
	return 0;
}


void init()
{
	leds_init();
	signal_init();
	signal_interrupt_init();
	tof_init();
}





