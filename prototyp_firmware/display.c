#include "display.h"

#include <avr/io.h>
#include <util/delay.h>


#define PIN_CLOCK	PD5
#define PIN_DATA	PD6
#define PIN_STROBE	PD7

#define DISPLAY_DOT	0x01

uint8_t first_diggit = 0;



void display_init(void)
{
	// Pins auf Ausgang schalten
	DDRD |= (1<<PIN_CLOCK)|(1<<PIN_DATA)|(1<<PIN_STROBE);
	
	// Display auf null setzen
	_display_write(0);
	_display_write(0);
	_display_write(0);
	_display_write(0);
	
}


void display_number(uint16_t number)
{
	// Strobe off
	PORTD &= ~(1<<PIN_STROBE);
		
	first_diggit = 0;
	
	_display_write_number((number / 1000) % 10);
	_display_write_number((number / 100) % 10);
	_display_write_number((number / 10) % 10);
	_display_write_number(number % 10);
	
	// Strobe on
	PORTD |= (1<<PIN_STROBE);
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


void _display_write(uint8_t data)
{
	for (uint8_t j = 0x80; j != 0; j = j>>1)
	{
		// Datenleitung
		if (data & j)
			PORTD |= (1<<PIN_DATA);
		
		// Clock high
		PORTD |= (1<<PIN_CLOCK);
		
		//_delay_us(10);
		
		// Clock low
		PORTD &= ~(1<<PIN_CLOCK);
		
		// Datenleitung low
		PORTD &= ~(1<<PIN_DATA);
	}
}


void _display_write_number(uint8_t number)
{
	if (number == 0)
	{
		if (!first_diggit)
		{
			// Leere Anzeige
			_display_write(0);
		}
		else
		{
			// Anzeige mit 0
			_display_write(_display_convert(0));
		}
	}
	else
	{
		first_diggit = 1;
		_display_write(_display_convert(number));
	}
}




