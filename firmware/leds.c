#include "leds.h"

#include <avr/io.h>

#include <util/delay.h>


#define LEDS_PORT	PORTC
#define LEDS_DDR	DDRC

uint8_t leds_counter = 0;
uint8_t leds_threshold = 50;
uint8_t leds_direction = 0;


void leds_init()
{
	// Pins auf Ausgang stellen
	LEDS_DDR |= (1<<LEDS_RED)|(1<<LEDS_YELLOW)|(1<<LEDS_GREEN);
	
	leds_blink(1<<LEDS_RED, 3);
}


void leds_on(uint8_t pins)
{
	LEDS_PORT |= (pins);
}


void leds_off(uint8_t pins)
{
	LEDS_PORT &= ~(pins);
}


void leds_blink(uint8_t pins, uint8_t n)
{
	for(uint8_t i = 0; i < 2*n; ++i)
	{
		LEDS_PORT ^= (pins);
		_delay_ms(50);
	}
}


void leds_pulse(uint8_t pins)
{
	if (++leds_counter == 0)
	{
		// Überlauf
		if (leds_direction == 0)
		{
			// Nach oben
			if (++leds_threshold == 255)
			{
				leds_direction = 1;
			}
		}
		else
		{
			if (--leds_threshold == 0)
			{
				leds_direction = 0;
			}
		}
	}
	
	if (leds_counter > leds_threshold)
	{
		LEDS_PORT &= ~(pins);
	}
	else
	{
		LEDS_PORT |= (pins);
	}
}



