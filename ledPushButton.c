/*
 * ledpushbuttn.c
 *
 * Created: 11/6/2022 2:16:36 PM
 * Author : Dell
 */ 

#include <avr/io.h>


int main(void)
{
    /* Replace with your application code */
	
	DDRB = 0xFF;
	DDRD = 0x00;
	
    while (1) 
    {
		/*if(PIND == 0x01){
			PORTB = 0x01;
		}
		else if(PIND == 0x00){
			PORTB = 0x00;
		}*/
		
		PORTB = ~ PIND;
    }
}

