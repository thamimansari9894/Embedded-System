#include<pic.h>
#define seg RD
void main(){
unsigned char seg[10]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x08,0x90};
unsigned char x;
unsigned int i;
PORTD=0x00;
TRISD=0x00;
while(1){
	for(x=0;x<10;x++){
PORTD=seg[x];
		for(i=0;i<10000;i++);
}
}
}