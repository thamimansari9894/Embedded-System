#include<pic.h>
#include<stdio.h>
#define _XTAL_FREQ 20000000
#define RS RB3
#define EN RB4
#define IN1 RB1
#define IN2 RB2
#define EN1 RC2
#define EN2 RC1
#define IN3 RB5
#define IN4 RB6
void cmd(char a);
void dat(int dis);
void ADC();
void DC_ADC();
void main(){
TRISA=0xFF;
TRISC =0x00;
PORTC =0x00;
TRISD =0x00;
PORTD =0x00;
PORTB=0x00;
TRISB=0x00;
cmd(0x38);
cmd(0x0C);
cmd(0x10);
cmd(0x06);
cmd(0x80);
cmd(0xC0);
while (1){
ADC();
DC_ADC();}}
void cmd(char a){
    PORTD=a;
    RS=0;
    __delay_ms(10);
    EN=1;
    EN=0;}
void dat(int dis){
    PORTD=dis;
    RS=1;
    __delay_ms(2);
    EN=1;
    EN=0;}

void ADC(){
ADCON0=0x01;
ADCON1=0x80;
GODONE=1;
while(GODONE==1);
float ADVAL;
int mapping=5;
float RESO=1023.0;
float result;
int i;
char arr[10];
cmd(0x80);
ADVAL=(ADRESH<<8)|ADRESL;
result=(ADVAL/RESO)*mapping;
sprintf(arr,"%f",result);
for(i=0;i<5;i++){
dat(i);}}

void DC_ADC(){
RC0=1;
RC1=1;
ADCON0=0x09;
ADCON1=0x80;
GODONE=1;
while(GODONE==1);
int ADVAL1;
ADVAL1=(ADRESH<<8)|ADRESL;
T2CON=0x05;
PR2=36;
CCPR1L=2;
CCP1CON=0x0C;
int i;
for(i=0;i<=36;i++){
CCPR1L=i;
__delay_ms(5);}
if(ADVAL1<=500){
RB1=1;
RB2=0;
RB5=0;
RB6=0;
__delay_ms(10);}
if(ADVAL1<=10){
RB1=0;
RB2=1;
RB5=0;
RB6=0;
__delay_ms(10);}
if(ADVAL1<=20){
RB1=0;
RB2=0;
RB5=1;
RB6=0;
__delay_ms(10);}
if(ADVAL1<=30){
RB1=1;
RB2=0;
RB5=0;
RB6=0;
__delay_ms(10);}
if(ADVAL1<=2500){
RB1=1;
RB2=0;
RB5=1;
RB6=0;
__delay_ms(10);}}
