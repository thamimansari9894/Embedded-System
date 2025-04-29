#include<pic.h>
#define _XTAL_FREQ 10000000
void main(){
PORTC=0x00;
TRISC=0x80;
PORTD=0x00;
TRISD0=1;
SSPSTAT=0x00;
SSPCON=0x20;

while(1){
if(RD0==1){
SSPBUF=0xAA;
while(SSPIF==0);
SSPIF=0;}}}