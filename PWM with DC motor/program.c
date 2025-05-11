#include<pic.h>
#define _XTAL_FREQ 20000000
void PWM(int duty);
void pwm_c(int dut);
void main(){
TRISA0=1;
TRISC=0x00;
PORTC=0x00;
while(1){ 
int ADVAL,val;
ADCON0=0x01;
ADCON1=0x80;
GODONE=1;
while(GODONE==1);
ADVAL=ADRESL|(ADRESH<<8);
val=ADRESL|(ADRESH<<8);
PWM(ADVAL/4);
pwm_c(val/2);
if(ADVAL>500){
RC0=1;
RC3=0;}
if(val>500){
RC4=0;
RC5=1;}
if(ADVAL<500){
RC0=0;
RC3=1;}
if(val<500){
RC4=1;
RC5=0;}
__delay_ms(10);}}

void PWM(int duty){
T2CON=0x05;
PR2=36;
CCPR1L=duty;
CCP1CON=0x0C;}

void pwm_c(int dut){
T2CON=0x05;
PR2=125;
CCPR2L=dut;
CCP2CON=0x0C;}