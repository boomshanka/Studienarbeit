#ifndef _TIME_OF_FLIGHT_H__
#define _TIME_OF_FLIGHT_H__

#define TOF_RUNNING 0
#define TOF_STOPPED	1
#define TOF_SUCCESS	3
#define TOF_TIMEOUT	4

#include <stdint.h>


extern volatile uint8_t tof_flag;


void		tof_init(void);

void		tof_startmes(void);
void		tof_stopmes(void);
uint16_t	tof_getresult(void);

void		tof_waitfortrigger(void);
void		tof_sendtrigger(void);


#endif

