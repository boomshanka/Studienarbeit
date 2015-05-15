#include "signal.h"



void signal_init()
{
	// COM1A0 & COM1A1: Ausgangspin PB1 bei Vergleichswert setzen, bei Überlauf löschen
	// COM1B0 & COM1B1: Ausgangspins PB2 bei Vergleichswert setzen, bei Überlauf löschen
	// WGM11 & WGM12 & WGM13: FastPWM-Modus
//	TCCR1A = (1<<COM1A1) | (1<<COM1A0) | (1<<WGM11);
	TCCR1A = (1<<COM1B1) | (1<<WGM11);
    TCCR1B = (1<<WGM12) | (1<<WGM13); // Timer wird noch nicht gestartet!
    
    // Vergleichswert für PB1
    //OCR1A = 100;
    // Vergleichswert für PB2
    OCR1B = 100;
    
    // Überlaufwert
    ICR1 = 200;
    
    // PB2 als Ausgang konfigurieren
    DDRB |= (1<<PB2);
}

