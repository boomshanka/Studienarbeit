#ifndef _TWI_SLAVE_H__
#define _TWI_SLAVE_H__

#include <stdint.h>

#define buffer_size 4 								//Größe der Buffer in Byte (2..254)

//#################################### Schutz vor unsinnigen Buffergrößen
#if (buffer_size > 254)
	#error Buffer zu groß gewählt! Maximal 254 Bytes erlaubt.
#endif

#if (buffer_size < 2)
	#error Buffer muss mindestens zwei Byte groß sein!
#endif

//#################################### Globale Variablen, die vom Hauptprogramm genutzt werden 

volatile uint8_t rxbuffer[buffer_size];				// Der Empfangsbuffer, der vom Slave ausgelesen werden kann.
volatile uint8_t rxlength;
volatile uint8_t txbuffer[buffer_size];				// Der Sendebuffe, der vom Master ausgelesen werden kann.
volatile uint8_t txlength;


void	twis_init(uint8_t address);



#endif // _TWI_SLAVE_H__


