#include "signal.h"
#include "signal_interrupt.h"
#include "time_of_flight.h"
#include "leds.h"

#include "twi_slave.h"

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
	leds_blink(1<<LEDS_YELLOW, 3);
	
	// Interrupts aktivieren
	sei();
	leds_blink(1<<LEDS_GREEN, 3);
	
	// Testweise Signal aktivieren
	//signal_start();
	
	while (1)
	{
		/*uint8_t data = twis_read_nack();
		uint8_t type;
		if (twis_response_required(&type))
		{
			twis_write(0xb2);
		}*/
		
		
		
		if (tof_measure() != 0)
		{
			leds_blink(1<<LEDS_GREEN, 1);
		}
		else
		{
			leds_blink(1<<LEDS_RED, 1);
		}
		
		_delay_ms(250);
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
	
	twis_init(0x1a, TWIS_BITRATE_100k);
}





