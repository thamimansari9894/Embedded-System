#include<pic.h>
#define _XTAL_FREQ 20000000
void wait(char data);
void main(){
TXSTA=0b00100100;
RCSTA=0b10010000;
SPBRG=64;
while(1){
wait('A');
TXREG='1';
while(TXIF==0);
TXIF=0;}}

void wait(char data){
int reci;
do{
while(RCIF==0);
reci=RCREG;
RCIF=0;}
while(reci!=data);}
