#include<pic.h>
void main(){
TRISD=0x00;
PORTD=0x00;
TRISB=0x00;
PORTB=0x00;
T1CON=0x03;
TMR1H=0x00;
TMR1L=0x00;
while(1){5
PORTB=TMR1L;
PORTD=TMR1H;}}


