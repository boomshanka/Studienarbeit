#ifndef DISPLAY
#define DISPLAY

#define DISPLAY_DOT	0x10


// 0x01	 
//		 _
//		
// 0x02	
//		|
//		
// 0x04	
//		
//		|
// 0x08
//		
//		 _
// 0x10
//
//		   .
// 0x20
//		
//		  |
// 0x40
//		  |
//		
// 0x80	 _
//		
//	

#include <stdint.h>


void display_init(void);

void display_number(uint16_t number, uint8_t dot);

uint8_t _display_convert(uint8_t);
void _display_write(uint8_t data);
void _display_write_number(uint8_t number, uint8_t dot);



#endif 

