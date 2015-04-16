#include "time_of_flight.h"
#include "signal.h"
#include "signal_interrupt.h"

#include <avr/io.h>
#include <util/delay.h>


void tof_init()
{
	// Timer initialisieren (Vorteiler 8)
	//TCCR0 = (1<<CS02)|(1<<CS00);
	TCCR0 = (1<<CS01);
}



uint16_t tof_measure()
{
	// Flag auf 0
	flag = 0;
	
	
	// Timer starten
	TCNT0 = 0;
	
	// Overflow auf 0
	of = 0;
	
	// Signal starten
	signal_start();
	
	// 5 Zyklen warten
	_delay_us(125);
	
	// Signal stoppen
	signal_stop();
	
	// 5 Zyklen warten
	_delay_us(125);
	
	// Interrupts aktivieren
	signal_interrupt_activate();
	
	// Auf Signal warten
	uint8_t time = 0;
	while (!flag && time != 255)
	{
		_delay_ms(1);
		++ time;
	}
	
	// Interrupts deaktivieren
	signal_interrupt_deactivate();
	
	// Wert zurück
	if (time == 255)
		return 0;
		
	return overflow*(uint16_t)(255) + (uint16_t)(counterreg);
	//return overflow;
}


