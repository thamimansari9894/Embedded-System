#include<pic.h>
#define _XTAL_FREQ 10000000
void main(){
PORTD=0x00;
TRISD=0X00;
PORTC=0x00;
TRISC=0x38;
SSPSTAT=0x00;
SSPCON=0x24;
while(1){
if(SSPBUF==0xAA){
RD0=1;}}}

