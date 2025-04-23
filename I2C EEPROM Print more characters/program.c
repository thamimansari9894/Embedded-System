#include<pic.h>
#define _XTAL_FREQ 10000000
#define RS RB0
#define RW RB1
#define EN RB2
void cmd(char a);
void dis(int dat);
void I2C_INIT();
void I2C_WRITE(int high,int low,int data);
void I2C_READ(int high,int low);
void main(){
PORTC=0x00;
TXSTA=0b00100100;
RCSTA=0b10010000;
SPBRG=64;
PORTB=0x00;
TRISB=0x00;
TRISD=0x00;
PORTD=0x00;
cmd(0x38);
cmd(0x0C);
cmd(0x10);
cmd(0x06);
cmd(0x80);
cmd(0xC0);
I2C_INIT();
I2C_WRITE(0x00,0x00,'A');
__delay_ms(2000);
I2C_READ(0x00,0x00);
I2C_WRITE(0x00,0x01,'B');
__delay_ms(2000);
I2C_READ(0x00,0x01);
I2C_WRITE(0x00,0x02,'C');
__delay_ms(2000);
I2C_READ(0x00,0x02);
I2C_WRITE(0x00,0x03,'D');
__delay_ms(2000);
I2C_READ(0x00,0x03);
I2C_WRITE(0x00,0x04,'E');
__delay_ms(2000);
I2C_READ(0x00,0x04);
I2C_WRITE(0x00,0x05,'F');
__delay_ms(2000);
I2C_READ(0x00,0x05);
I2C_WRITE(0x00,0x06,'G');
__delay_ms(2000);
I2C_READ(0x00,0x06);
while(1){}}

void cmd(char a){
    PORTD=a;
    RS=0;
    RW=0;
    __delay_ms(10);
    EN=1;
    EN=0;}
void dis(int dat){
    PORTD=dat;
    RS=1;
    RW=0;
    __delay_ms(2);
    EN=1;
    EN=0;}

void I2C_INIT(){
SSPSTAT=0X00;
SSPCON=0b00101000;
SSPCON2=0X00;
SSPADD=24;}

void I2C_WRITE(int high,int low,int data){
SEN=1;
while(SSPIF==0);
SSPIF=0;
__delay_ms(1000);
SSPBUF=0b10100000;//slave address
while(SSPIF==0);
SSPIF=0;
SSPBUF=high;//high byte
while(SSPIF==0);
SSPIF=0;
SSPBUF=low;//low byte
while(SSPIF==0);
SSPIF=0;
SSPBUF=data;//ASCII value shown in debugger 
while(SSPIF==0);
SSPIF=0;
PEN=1;
while(SSPIF==0);
SSPIF=0;}

void I2C_READ(int high,int low){
int data;
SEN=1;
while(SSPIF==0);
SSPIF=0;
SSPBUF=0b10100000;//slave address
while(SSPIF==0);
SSPIF=0;
SSPBUF=high;//high byte
while(SSPIF==0);
SSPIF=0;
SSPBUF=low;//low byte
while(SSPIF==0);
SSPIF=0;
RSEN=1;
while(SSPIF==0);
SSPIF=0;
SSPBUF=0b10100001;//slave address 1 while read
while(SSPIF==0);
SSPIF=0;
RCEN=1;
while(SSPIF==0);
SSPIF=0;
ACKDT=1;
ACKEN=1;
while(SSPIF==0);
SSPIF=0;
PEN=1;
while(SSPIF==0);
SSPIF=0;
data=SSPBUF;
dis(data);
TXREG=SSPBUF;}


