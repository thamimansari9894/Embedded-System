#include<pic.h>
#define _XTAL_FREQ 10000000
#define RS RC0
#define EN RC1
#define DE RD0
#define RE RD1
void waiting(char data);
void cmd(char a);
void dis(int dat);
void print(char name[], int a);
void main(){
TRISC=0x80;
PORTC=0x00;
TRISB=0x00;
PORTB=0x00;
TRISD=0x00;
PORTD=0x00;
cmd(0x38);
cmd(0x0C);
cmd(0x10);
cmd(0x06);
cmd(0x80);
cmd(0xC0);
RD0=1;
RD1=1;
TXSTA=0x24;
RCSTA=0x90;
SPBRG=64;
while(1){
RC2=0;//led
print("CHIP 1 RX",9);
cmd(0x80);
__delay_ms(3000);
cmd(0x01);
waiting('1');
RC2=1;//led
while(RCIF==0);
RCIF=0;
dis(RCREG);
cmd(0x01);
print("RECIVED",7);
cmd(0x80);
__delay_ms(3000);
cmd(0x01);}}

void cmd(char a){
    PORTB=a;
    RS=0;
    RW=0;
    EN=1;
    __delay_ms(2);
    EN=0;}

void dis(int dat){
    PORTB=dat;
    RS=1;
    RW=0;
    EN=1;
    __delay_ms(2);
    EN=0;}

void print(char name[], int a){
    int i;
    for (i=0;i<a;i++){
    dis(name[i]);}}

void waiting(char data){
do{
RD0=1;
RD1=1;
while(RCIF==0);
RCIF=0;}
while(RCREG!=data);
RD0=0;
RD1=0;}
