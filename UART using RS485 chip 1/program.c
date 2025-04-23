#include<pic.h>
#define _XTAL_FREQ 10000000
#define RS RC0
#define EN RC1
#define DE RD0
#define RE RD1
void cmd(char a);
void dis(int dat);
void print(char name[], int a);
void send_rs(char address,char data);
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
RD0=0;
RD1=0;
TXSTA=0x24;
RCSTA=0x90;
SPBRG=64;
print("ALL GOOD",8);
__delay_ms(3000);
while(1){
cmd(0x01);
__delay_ms(5000);
send_rs('1','A');
RC2=1;//led
cmd(0xC0);
print("DATA,ADDR TRANS",15);
__delay_ms(5000);
cmd(0x01);}}

void send_rs(char address,char data){
RD0=0;
RD1=0;
TXREG=address;
while(TXIF==0);
TXIF=0; 
__delay_ms(100);
TXREG=data;
while(TXIF==0);
TXIF=0;
dis(address);
dis(data);
RD0=1;
RD1=1;}

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




