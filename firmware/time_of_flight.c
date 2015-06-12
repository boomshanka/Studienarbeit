#include "time_of_flight.h"
#include "signal.h"

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <util/atomic.h>


volatile uint8_t tof_flag = 0;
volatile uint8_t tof_overflow = 0;


void tof_init()
{
	// Interrupt INT0 auf fallende Flanke
	MCUCR = (1<<ISC01);
	
	// Überlaufinterrupt vom Zähler 0 aktivieren
	TIMSK |= (1<<TOIE0);
}



void tof_startmes()
{
	// Status Running
	tof_flag = (1<<TOF_RUNNING);
	
	// Überlaufregister zurücksetzen
	tof_overflow = 0;
	// Timer zurücksetzen
	TCNT0 = 0;
	
	// Zeitkritischer Bereich
	ATOMIC_BLOCK(ATOMIC_FORCEON)
	{
		// Timer starten (Vorteiler 8)
		TCCR0 = (1<<CS01);
		
		// Signal starten
		signal_start();
		// 5 Zyklen warten
		_delay_us(125);
		// Signal stoppen
		signal_stop();
	}
	
	// Totzeit! FIXME
	_delay_us(250);
	
	// Empfänger aktiviern
	// Statusbit löschen
	GIFR |= (1<<INTF0);
	// Interrupt INT0 aktivieren
	GIMSK |= (1<<INT0);
}


void tof_stopmes()
{
	// Timer stoppen
	TCCR0 = 0;
	
	// Interrupt INT0 deaktivieren
	GIMSK &= ~(1<<INT0);
	
	// Flag löschen
	tof_flag = 0;
}

uint16_t tof_getresult()
{
	// Ergebnis aus Überlaufregister und Zählerregister ausrechnen
	return (uint16_t)(255)*(uint16_t)(tof_overflow) + (uint16_t)(TCNT0);
}



// Interrupt bei empfangenen Signal
ISR(INT0_vect)
{
	// Zähler anhalten
	TCCR0 = 0;
	
	// Flag setzen
	tof_flag = (1<<TOF_SUCCESS)|(1<<TOF_STOPPED);
	
	// Interrupt deaktivieren
	GIMSK &= ~(1<<INT0);
}


// Interrupt bei Überlauf von Zähler 0
ISR (TIMER0_OVF_vect)
{
	if (++tof_overflow == 0)
	{
		// Timeout!
		// Zähler anhalten
		TCCR0 = 0;
		// Flag setzen
		tof_flag = (1<<TOF_TIMEOUT)|(1<<TOF_STOPPED);
		// Interrupt INT0 deaktivieren
		GIMSK &= ~(1<<INT0);
	}
}

