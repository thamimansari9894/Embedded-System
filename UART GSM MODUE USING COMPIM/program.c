#include<pic.h>
#define _XTAL_FREQ 10000000

void main(){
PORTC=0x00;
TXSTA=0b00100100;
RCSTA=0b10010000;
SPBRG=64;

int i;
char turn_off[]={"AT+CFUN=0\r"};
for(i=0;i<=11;i++){
TXREG=turn_off[i];
while(TXIF==0);
TXIF=0;
__delay_ms(100);}
__delay_ms(5000);

char turn_on[]={"AT+CFUN=1\r"};
for(i=0;i<=11;i++){
TXREG=turn_on[i];
while(TXIF==0);
TXIF=0;
__delay_ms(100);}
__delay_ms(5000);

while(1){}}