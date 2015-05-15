#include "signal.h"
#include "signal_interrupt.h"
#include "time_of_flight.h"
#include "leds.h"


#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>

#include <util/delay.h>
#include <stdint.h>



void init(void);


int main(void)
{
	// Initialisieren
	init();
	leds_blink(1<<LEDS_YELLOW);
	
	// Interrupts aktivieren
	sei();
	leds_blink(1<<LEDS_GREEN);
	
	// Testweise Signal aktivieren
	signal_start();
	
	while (1)
	{
		if (!(PIND & (1<<PD2)))
		{
			leds_on(1<<LEDS_GREEN);
			leds_off(1<<LEDS_RED);
		}
		else
		{
			leds_on(1<<LEDS_RED);
			leds_off(1<<LEDS_GREEN);
		}
	}
	
	return 0;
}


void init()
{
	// Zur sicherheit Watchdog ausschalten
	wdt_disable();
	
	leds_init();
	signal_init();
	signal_interrupt_init();
	tof_init();
}





