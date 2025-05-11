#include<pic.h>
#define _XTAL_FREQ 20000000
void EEPROM_write(int address,int data);
char EEPROM_read(int address);

void interrupt isr(){
if(INTF==1){
RD0=~RD0;
INTF=0;}}

void main(){
TRISC=0x00;
PORTC=0x00;
TRISD=0x00;
PORTD=0x00;
PORTB=0x00;
TRISB=1;
INTCON=0x90;

int stop,i;
char a[10]={0x08,0x0C,0x04,0x06,0x02,0x03,0x01,0x09};
if((EEPROM_read(0x00)>=0)&&(EEPROM_read(0x00)<=8)){
stop=EEPROM_read(0x00);}
if((EEPROM_read(0x00)==0xFF)){}

while (1){
for(i=stop;i<=8;i++){
PORTC=a[i];
EEPROM_write(0x00,i);
__delay_ms(50);}
EEPROM_write(0x00,0xFF);
while(1){}}}

void EEPROM_write(int address,int data){
EEADR=address;
EEDATA=data;
EEPGD=0;
WREN=1;
EECON2=0x55;
EECON2=0xAA;
WR=1;
while(WR==1);
WREN=0;}

char EEPROM_read(int address){
int a;
EEADR=address;
a=EEDATA;
EEPGD=0;
RD=1;
__delay_ms(50);
return a;} 





