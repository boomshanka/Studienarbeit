#include "time_of_flight.h"
#include "signal.h"

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <util/atomic.h>

// Triggerpin ist MISO (PB4)
#define TOF_TRIGGERPIN	PB4
#define TOF_TRIGGERPORT	PORTB
#define TOF_TRIGGERDDR	DDRB
#define TOF_TRIGGERSTAT	PINB


volatile uint8_t tof_flag = 0;
volatile uint8_t tof_overflow = 0;


void tof_init()
{
	// Interrupt INT0 auf fallende Flanke
	MCUCR = (1<<ISC01);
	
	// Überlaufinterrupt vom Zähler 0 aktivieren
	TIMSK |= (1<<TOIE0);
	
	// Triggerpin als Eingang mit Pullup
	TOF_TRIGGERDDR &= ~(1<<TOF_TRIGGERPIN);
	TOF_TRIGGERPORT |= (1<<TOF_TRIGGERPIN);
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
		// Signal starten
		signal_start();
		// Timer starten (Vorteiler 8)
		TCCR0 = (1<<CS01);
		
		// 5 Zyklen warten
		_delay_us(125);
		// Signal stoppen
		signal_stop();
	}
	
	// Totzeit! FIXME
	_delay_us(700);
	
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
	uint16_t result = (uint16_t)(255)*(uint16_t)(tof_overflow) + (uint16_t)(TCNT0);
	// Richtig wäre: 1/(v * 10^-3) [* 2] = 1/0.344 [* 2], also 2.90697674419 : 5.81395348837 statt 3 : 6
	// FIXME: Muss result gecastet werden? Dann kann Result gleich vom Typ Float sein!
	return result / ((tof_flag & (1<<TOF_DIRECT)) ? 2.9069767f : 5.8139534f);
}



void tof_waitfortrigger()
{
	// Status Waiting
	tof_flag = (1<<TOF_WAITING);
	
	// Überlaufregister zurücksetzen
	tof_overflow = 0;
	// Timer zurücksetzen
	TCNT0 = 0;
	
	// Warten solange Pin high ist
	// Wenn Flag TOF_WAITING nicht mehr gesetzt ist wird Warten abgebrochen
	while ((TOF_TRIGGERSTAT & (1<<TOF_TRIGGERPIN)) || (tof_flag & !(1<<TOF_WAITING))) {}
	
	// Timer starten (Vorteiler 8)
	TCCR0 = (1<<CS01);
	
	// Empfänger aktiviern
	// Statusbit löschen
	GIFR |= (1<<INTF0);
	// Interrupt INT0 aktivieren
	GIMSK |= (1<<INT0);
	
	// Status Waiting und Direct
	tof_flag = (1<<TOF_RUNNING)|(1<<TOF_DIRECT);
}


void tof_sendtrigger()
{
	// Triggerpin als Ausgang 
	TOF_TRIGGERDDR |= (1<<TOF_TRIGGERPIN);
	
	// Zeitkritischer Bereich
	ATOMIC_BLOCK(ATOMIC_FORCEON)
	{
		// Signal starten
		signal_start();
		// Trigger-Signal senden - Pin Low
		TOF_TRIGGERPORT &= ~(1<<TOF_TRIGGERPIN);
		
		// 5 Zyklen warten
		_delay_us(125);
		// Signal stoppen
		signal_stop();
	}
	
	// Triggerpin wieder Eingang mit Pullup
	TOF_TRIGGERDDR &= ~(1<<TOF_TRIGGERPIN);
	TOF_TRIGGERPORT |= (1<<TOF_TRIGGERPIN);
}



// Interrupt bei empfangenen Signal
ISR(INT0_vect)
{
	// Zähler anhalten
	TCCR0 = 0;
	
	// Flag setzen
	tof_flag = (1<<TOF_SUCCESS)|(1<<TOF_STOPPED)|(tof_flag & (1<<TOF_DIRECT));
	
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

