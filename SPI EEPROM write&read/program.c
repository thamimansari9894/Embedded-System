#include<pic.h>
#define _XTAL_FREQ 10000000
void write(int high,int low,int data);
void read(int high,int low);
void SPI(int data);
void main(){
PORTC=0x00;
TRISC=0x10;
PORTB=0x00;
TRISB=0x00;
SSPSTAT=0x00;
SSPCON=0x21;

write(0x00,0x08,'A');
__delay_ms(2000);
read(0x00,0x08);
write(0x00,0x09,'B');
__delay_ms(2000);
read(0x00,0x09); 
write(0x00,0x0A,'C');
__delay_ms(2000);
read(0x00,0x0A);
write(0x00,0x0B,'D');
__delay_ms(2000);
read(0x00,0x0B);
while(1){}}

void SPI(int data){
SSPBUF=data;
while(SSPIF==0);
SSPIF=0;}

void write(int high,int low,int data){
RC2=1;
__delay_ms(1000);
RC2=0;
SPI(0x06);//Write Enable
RC2=1;
RC2=0;
SPI(0x02);// Write comment
SPI(high);//HIGH BYTE
SPI(low);//LOW BYTE
SPI(data);
RC2=1;} 

void read(int high,int low){
RC2=1;
__delay_ms(1000);
RC2=0;
SPI(0x03);//Read Enable
SPI(high);//HIGH BYTE
SPI(low);//LOW BYTE
SPI(0x00);//Dummy
RC2=1;}



