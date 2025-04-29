#include<pic.h>
#define RS RB0
#define RW RB1
#define EN RB2
void cmd(char a);
void dis(int dat);
void ADC1();
void ADC2();
void ADC3();
void delay();
void main(){
TRISC=0x00;
PORTC=0x00;
TRISD=0xFF;
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
if(RD0==1){
cmd(0x01);
ADC1();
delay();}

if(RD1==1){
cmd(0x01);
ADC2();
delay();}

if(RD2==1){
cmd(0x01);
ADC3();
delay();}}}

void cmd(char a){
    PORTC=a;
    RS=0;
    RW=0;
    delay();
    EN=1;
    EN=0;}

void dis(int dat){
    PORTC=dat;
    RS=1;
    RW=0;
    delay();
    EN=1;
    EN=0;}

void ADC1(){
ADCON0=0x01;//00000001
ADCON1=0x80;
delay();
GODONE=1;
while(GODONE==1);
int ADVAL;
cmd(0x80);
ADVAL=((ADRESL)+(ADRESH<<8));
dis((ADVAL/1000)+(0x30));
dis(((ADVAL/100)%10)+(0x30));
dis(((ADVAL/10)%10)+(0x30));
dis((ADVAL%10)+(0x30));}

void ADC2(){
ADCON0=0x09;//00001001
ADCON1=0x80;
delay();
GODONE=1;
while(GODONE==1);
int RESULT;
cmd(0x80);
RESULT=((ADRESL)+(ADRESH<<8));
dis((RESULT/1000)+(0x30));
dis(((RESULT/100)%10)+(0x30));
dis(((RESULT/10)%10)+(0x30));
dis((RESULT%10)+(0x30));}

void ADC3(){
ADCON0=0x11;//00010001
ADCON1=0x80;
delay();
GODONE=1;
while(GODONE==1);
int VAL;
cmd(0x80);
VAL=((ADRESL)+(ADRESH<<8));
dis((VAL/1000)+(0x30));
dis(((VAL/100)%10)+(0x30));
dis(((VAL/10)%10)+(0x30));
dis((VAL%10)+(0x30));}

void delay(){
unsigned int i;
for(i=0;i<2000;i++);}
