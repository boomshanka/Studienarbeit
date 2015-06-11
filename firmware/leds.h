#ifndef LEDS_H
#define LEDS_H

#define LEDS_RED	PC2
#define LEDS_YELLOW	PC1
#define LEDS_GREEN	PC0

#include <stdint.h>


void leds_init(void);

void leds_on(uint8_t pins);
void leds_off(uint8_t pins);

void leds_blink(uint8_t pins, uint8_t n);
void leds_pulse(uint8_t pins);


#endif

