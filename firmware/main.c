#include "device.h"
#include "leds.h"
#include "display.h"

#include "signal.h"
#include "signal_interrupt.h"
#include "time_of_flight.h"

#include "twi_slave.h"

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>

#include <util/delay.h>
#include <stdint.h>



void init(void);

void loop_big(void);
void loop_small(void);

void twi(void);

uint8_t connected = 0;


int main(void)
{
	// Initialisieren
	init();
	leds_blink(1<<LEDS_YELLOW, 3);
	
	// Interrupts aktivieren
	sei();
	leds_blink(1<<LEDS_GREEN, 3);
	
	// Kurz warten, dann Adresse blinken
	_delay_ms(500);
	if (device_big())
	{
		display_number(0);
		leds_blink(1<<LEDS_GREEN, 2);
		
		// Hauptschleife für große Platine starten
		loop_big();
	}
	else if (device_small())
	{
		leds_blink(1<<LEDS_YELLOW, 2);
	}
	else
	{
		leds_blink(1<<LEDS_RED, 2);
	}
	
	// Hauptschleife für kleine Platine starten
	loop_small();
	
	return 0;
}


void init()
{
	// Zur sicherheit Watchdog ausschalten
	wdt_disable();
	
	device_init();
	if (device_big())
	{
		// Anzeige initialisieren
		display_init();
		display_number(8888);
	}
	leds_init();
	signal_init();
	signal_interrupt_init();
	tof_init();
	
	twis_init(0x1a, TWIS_BITRATE_100k);
}



void twi()
{
	uint8_t	twi_responsetype;
	
	
	while (1)
	{
		if (twis_response_required(&twi_responsetype))
		{
			switch (twi_responsetype)
			{
				case TWIS_READ:
					// bsp 4 bites lesen
					twis_read_ack();
					twis_read_ack();
					twis_read_ack();
					twis_read_nack();
					
					twis_stop();
					break;
					
				case TWIS_WRITE:
					// bsp 2 bytes senden
					//twis_write();
					//twis_write();
					
					twis_stop();
					break;
					
				default:
					// Kommunikationsfehler
					break;
			}
		}
	}
}


void loop_big()
{
	while (1)
	{
		if (!connected)
		{
			// Nicht verbunden, Wechsel zwischen Modus Distanz und Geschwindigkeit möglich
		}
		else
		{
			// Gelbe LED pulsieren lassen
			leds_pulse(1<<LEDS_YELLOW);
		}
		
		//twi();
	}
}


void loop_small()
{
	while (1)
	{
		if (!connected)
		{
			// Nicht verbunden, rote LED pulsieren lassen
			leds_pulse(1<<LEDS_RED);
		}
		else
		{
			// Gelbe LED pulsieren lassen
			leds_pulse(1<<LEDS_YELLOW);
		}
		
		//twi();
	}
}


/*
 if (tof_measure() != 0)
		{
			leds_blink(1<<LEDS_GREEN, 1);
		}
		else
		{
			leds_blink(1<<LEDS_RED, 1);
		}
		
		_delay_ms(250);
*/
