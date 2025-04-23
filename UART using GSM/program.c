#include<pic.h>
#define _XTAL_FREQ 20000000
void main(){
TXSTA=0b00100100;//0x24
RCSTA=0b10010000;//0x90
SPBRG=64;
while(1){
int i;
char a[]={"MONKY D LUFFY\r"};
for(i=0;i<=13;i++){
TXREG=a[i];
while(TXIF==0);
TXIF=0;
__delay_ms(100);}}}