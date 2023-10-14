#include "8051_inc_error_hide.h"  //-->#include <mcs51/8051.h>
#include <stdint.h>

#define LED P0_0

void delay(uint16_t t) {
	while(t--);
}

void main(void) {
	while(1) {
		LED = 0;
		delay(20000);
		LED = 1;
		delay(20000);
	}
}