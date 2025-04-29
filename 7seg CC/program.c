#include<pic.h>
#define seg RD
__CONFIG(0X3F3A);
#define _XTAL_FREQ 20000000
void main(){
unsigned char seg[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
unsigned char x;
unsigned int i;
PORTD=0x00;
TRISD=0x00;
while(1){
	for(x=0;x<10;x++){
PORTD=seg[x];
__delay_ms(1000);
}
}
}