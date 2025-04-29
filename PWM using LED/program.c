#include<pic.h>
void delay();
void main(){
PORTC=0x00;
TRISC=0x00;
CCP1CON=0x0F;
PR2=35;
CCPR1L=2;

while(1){
int i;
for(i=0;i<=35;i++){
CCPR1L=i;
delay();}}}

void delay(){
T2CON=0xFF;
while(TMR2IF==0);
TMR2IF=0;}