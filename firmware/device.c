#include "device.h"

#include <avr/io.h>
#include <util/delay.h>


uint8_t dev_big  = 0;
uint8_t dev_small = 0;



void device_init()
{
	// Prüfe ob große Platine mit Anzeige vorliegt (PB6 & PB7 verbunden)
	// PB6 Pullup
	PORTB |= (1<<PB6);
	// PB7 Ausgang (low)
	DDRB |= (1<<PB7);
	// Kurz warten, damit sich Pegel einstellen
	_delay_us(50);
	
	if (!(PINB & (1<<PB6)))
	{
		// Pin trotz Pullup Low->Verbunden
		dev_big = 1;
	}
	else
	{
		// Kleine Platine, Prüfe ob PD6 & PD7 verbunden sind
		// PD6 Pullup
		PORTD |= (1<<PD6);
		// PD7 Ausgang (low)
		DDRD |= (1<<PD7);
		// Kurz warten
		_delay_us(50);
		
		if (!(PIND & (1<<PD6)))
		{
			// Pin trotz Pullup Low->Verbunden
			dev_small = 1;
		}
		
		PORTD &= ~(1<<PD6);
		DDRD &= ~(1<<PD7);
	}
	
	PORTB &= ~(1<<PB6);
	DDRB &= ~(1<<PB7);
}


uint8_t device_big()
{
	return dev_big;
}


uint8_t device_small()
{
	return dev_small;
}


uint8_t device_address()
{
	if (dev_big)
		return 0x2a;
	else if (dev_small)
		return 0x2c;
	else
		return 0x2e;
}

