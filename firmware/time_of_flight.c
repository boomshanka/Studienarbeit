#include "time_of_flight.h"
#include "signal.h"
#include "signal_interrupt.h"

#include <avr/io.h>


void tof_init()
{
	twis_init(0x40, TWIS_BITRATE_100k);
	
	// Timer initialisieren
	TCCR0 = (1<<CS02)|(1<<CS00);
}

void tof_wait()
{
	uint8_t data = twis_read_nack();
	
	if (twis_response_required())
	{
		twis_write(tof_measure());
	}
	
	twis_stop();
}


uint8_t tof_measure()
{
	// Flag auf 0
	flag = 0;
	
	// Signal starten
	signal_start();
	
	// Timer starten
	TCNT0 = 0;
	
	// Auf Signal warten
	while (!flag);
	
	// Signal stoppen
	signal_stop();
	
	// Wert zurück
	return TCNT0;
}


