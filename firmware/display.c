#include "display.h"

#include <avr/io.h>
#include <util/delay.h>


#define PIN_CLOCK	PD5
#define PIN_DATA	PD6
#define PIN_STROBE	PD7

#define DISPLAY_DOT	0x01



void display_init(void)
{
	// Pins auf Ausgang schalten
	DDRD |= (1<<PIN_CLOCK)|(1<<PIN_DATA)|(1<<PIN_STROBE);
	
	
	// Testschleife
	for (uint8_t i = 0; i<10; ++i)
	{
		uint8_t number = _display_convert(i);
		
		for (uint8_t j = 0x80; j != 0; j = j>>1)
		{
			// Datenleitung
			if (number & j)
				PORTD |= (1<<PIN_DATA);
			
			// Clock high
			PORTD |= (1<<PIN_CLOCK);
			
			_delay_us(10);
			
			// Clock low
			PORTD &= ~(1<<PIN_CLOCK);
			
			// Datenleitung low
			PORTD &= ~(1<<PIN_DATA);
		}
		
		// Strobe on
		PORTD |= (1<<PIN_STROBE);
		_delay_ms(1000);
		
		// Strobe off
		PORTD &= ~(1<<PIN_STROBE);
	}
	
	
}


uint8_t _display_convert(uint8_t number)
{
	switch(number)
	{
		case 0:
			return 0xee;
			
		case 1:
			return 0x60;
			
		case 2:
			return 0xcd;
			
		case 3:
			return 0xe9;
			
		case 4:
			return 0x63;
			
		case 5:
			return 0xab;
			
		case 6:
			return 0xaf;
			
		case 7:
			return 0xe0;
			
		case 8:
			return 0xef;
			
		case 9:
			return 0xeb;
			
		default:
			return 0;			
	}
}

