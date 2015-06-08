#include "leds.h"

#include <avr/io.h>

#include <util/delay.h>


#define LEDS_PORT	PORTC
#define LEDS_DDR	DDRC


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


