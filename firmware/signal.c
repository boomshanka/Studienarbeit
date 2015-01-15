#include "signal.h"



void signal_init(void)
{
	// COM1A0 & COM1A1: Ausgangspins bei Vergleichswert setzen, bei Überlauf löschen
	// WGM11 & WGM12 & WGM13: FastPWM-Modus
	TCCR1A = (1<<COM1A1) | (1<<COM1A0) | (1<<WGM11);
    TCCR1B = (1<<WGM12) | (1<<WGM13) | (1<<CS10);
    // Vergleichswert
    OCR1A = 100;
    // Überlaufwert
    ICR1 = 200;
}

