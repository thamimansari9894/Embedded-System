#include<pic.h>
#define _XTAL_FREQ 10000000
void MAX_INIT();
void SPI_WRITE(int address,int data);
void main(){
SSPSTAT=0x00;
SSPCON=0b00100000;
PORTC=0x00;
TRISC5=0;
TRISC4=1;
TRISC3=0;
TRISC2=0;
MAX_INIT();
while(1){
for(int i=0;i<=9;i++){
SPI_WRITE(0x01,i);
__delay_ms(1000);}
for(int i=0;i<=9;i++){
SPI_WRITE(0x03,i);
__delay_ms(1000);}}}

void MAX_INIT(){
SPI_WRITE(0x09,0xFF);
SPI_WRITE(0x0A,0xFF);
SPI_WRITE(0x0B,0xFF);
SPI_WRITE(0x0C,0xFF);}

void SPI_WRITE(int address,int data){
RC2=0;
SSPBUF=address;
while(SSPIF==0);
SSPIF=0;
SSPBUF=data;
while(SSPIF==0);
SSPIF=0;
RC2=1;}