#include<pic.h>
#define RS RC0
#define RW RC1
#define EN RC2
#define LED1 RC3
#define LED2 RC4
#define LED3 RC5
#define IN1 RB0;
#define IN2 RB1;
#define EN1 RB2;
#define EN2 RB3;
#define IN3 RB4;
#define IN4 RB5;
void cmd(char a);
void dis(int dat);
void ADC();
void delay();
void main(){
TRISC=0x00;
PORTC=0x00;
TRISD=0x00;
PORTD=0x00;
TRISB=0x00;
PORTB=0x00;
cmd(0x38);
cmd(0x0C);
cmd(0x10);
cmd(0x06);
cmd(0x80);
cmd(0xC0);
while (1){
ADC();}}

void cmd(char a){
    PORTD=a;
    RS=0;
    RW=0;
    delay();
    EN=1;
    EN=0;}

void dis(int dat){
    PORTD=dat;
    RS=1;
    RW=0;
    delay();
    EN=1;
    EN=0;}

void ADC(){
ADCON0=0x01;
ADCON1=0x80;
GODONE=1;
while(GODONE==1);
int ADVAL;
cmd(0x80);
ADVAL=((ADRESH<<8)|(ADRESL));
dis((ADVAL/1000)+48);
dis(((ADVAL/100)%10)+48);
dis(((ADVAL/10)%10)+48);
dis((ADVAL%10)+48);}

void delay(){
unsigned int i;
for(i=0;i<10000;i++);}
