#include "signal.h"
#include "signal_interrupt.h"
#include "time_of_flight.h"

#include "display.h"

#include <avr/io.h>
#include <avr/interrupt.h>

#include <util/delay.h>


void init(void);
void state_dist(void);
void state_vel(void);


int main(void)
{
	// Initialisieren
	init();
	
	// Interrupts aktivieren
	sei();
	
	
	// State-System mit zwei Zuständen
	// Wechsel erfolgt über ein Interrupt, das ein Flag setzt
	uint8_t state = 0;//1;
	while (1)
	{
		if (state)
		{
			state_dist();
			state = 0;
		}
		else
		{
			state_vel();
			state = 1;
		}
	}
	
	return 0;
}


void init()
{
	display_init();
	signal_init();
	signal_interrupt_init();
	tof_init();
}


void state_dist()
{
	// "DIS." auf Display ausgeben
	_display_write(0);
	_display_write(0xab | 0x01); // S.
	_display_write(0x60); // I
	_display_write(0xee); // D
	_delay_ms(2000);
	display_number(0);
	
	while (1)
	{
		display_number(tof_measure()/(uint16_t)(6));
		
		_delay_ms(500);
	}
}


void state_vel()
{
	// "VEL." auf Display ausgeben
	_display_write(0);
	_display_write(0x61 | 0x01); // L.
	_display_write(0x8f); // E
	_display_write(0x64); // V
	_delay_ms(2000);
	display_number(0);
}


