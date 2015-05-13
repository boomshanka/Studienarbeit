#include <avr/interrupt.h>
#include <avr/io.h>


volatile uint8_t flag = 0;

volatile uint8_t counterreg = 0;
volatile uint16_t overflow = 0;
volatile uint16_t of = 0;



void signal_interrupt_init()
{
	// Interrupt INT0 auf fallende Flanke
	MCUCR = (1<<ISC01);
	
	// Überlaufinterrupt vom Zähler 0 aktivieren
	TIMSK |= (1<<TOIE0);
	
	
}

void signal_interrupt_activate()
{
	// Bit löschen
	GIFR |= (1<<INTF0);
	
	// Interrupt INT0 aktivieren
	GIMSK |= (1<<INT0);
}


void signal_interrupt_deactivate()
{
	// Interrupt INT0 deaktivieren
	GIMSK &= ~(1<<INT0);
}


// Interrupt bei empfangenen Signal
ISR(INT0_vect)
{
	counterreg = TCNT0;
	overflow = of;
	flag = 1;
}


// Interrupt bei Überlauf von Zähler 0
ISR (TIMER0_OVF_vect)
{
	++of;
}

