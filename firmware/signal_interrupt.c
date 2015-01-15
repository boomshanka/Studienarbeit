#include <avr/interrupt.h>
#include <avr/io.h>


volatile uint8_t flag = 0;


void signal_interrupt_init()
{
	// Interrupt INT1 auf steigende Flanke
	MCUCR = (1<<ISC11)|(1<<ISC10);
	
	// Pin PD0 auf Ausgang
	DDRD |= (1<<PD0);
}

void signal_interrupt_activate()
{
	// Interrupt INT1 aktivieren
	GIMSK |= (1<<INT1);
}


ISR(INT1_vect)
{
	flag = 1;
	
	if (PORTD & (1<<PD0))
		PORTD &= ~(1<<PD0);
	else
		PORTD |= (1<<PD0);
}

