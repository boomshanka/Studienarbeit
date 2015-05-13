#ifndef DISPLAY
#define DISPLAY

#include <stdint.h>


void display_init(void);

void display_number(uint16_t number);

uint8_t _display_convert(uint8_t);
void _display_write(uint8_t data);
void _display_write_number(uint8_t number);



#endif 

