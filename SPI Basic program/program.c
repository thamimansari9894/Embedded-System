#include<pic.h>
#define _XTAL_FREQ 10000000
void main(){
SSPSTAT=0x00;
SSPCON=0b00100000;//SPI configration
PORTC=0x00;
TRISC5=0;//OUTPUT SD0/MOSI/DOUT
TRISC4=1;//INPUT SDI/MISO/DIN
TRISC3=0;//OUTPUT SCK/CLK
TRISC2=0;//OUTPUT CS(chip set)/SS/LOAD (names)
RC2=1;//CS=1 Chip set
__delay_ms(1000);//system need to wait
RC2=0;//CS=0// start
SSPBUF=0x01;//address low byte
while(SSPIF==0);
SSPIF=0;
SSPBUF=0x2A;//address high byte
while(SSPIF==0);
SSPIF=0;
RC2=1;//CS=1// stop
while(1){}}