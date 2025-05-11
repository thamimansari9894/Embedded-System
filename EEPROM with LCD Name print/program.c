#include<pic.h>
#define _XTAL_FREQ 20000000
#define RS RC0
#define RW RC1
#define EN RC2
void EEPROM_write(int address,int data);
char EEPROM_read(int address);
void cmd(char a);
void dat(int dis);
void main(){
TRISC=0x00;
PORTC=0x00;
TRISD=0x00;
PORTD=0x00;
cmd(0x38);
cmd(0x0C);
cmd(0x10);
cmd(0x06);
cmd(0x80);
cmd(0xC0);
int stop,i;

char name[]={"MONKY D LUFFY"};

if((EEPROM_read(0x00)>=0)&&(EEPROM_read(0x00)<=13)){
stop=EEPROM_read(0x00);}

if((EEPROM_read(0x00)==0xFF)){}

while (1){
for(i=stop;i<=13;i++){
dat(name[i]);
EEPROM_write(0x00,i);
__delay_ms(20);}
EEPROM_write(0x00,0xFF);
while(1){}}}

void cmd(char a){
    PORTD=a;
    RS=0;
    RW=0;
    __delay_ms(10);
    EN=1;
    EN=0;}

void dat(int dis){
    PORTD=dis;
    RS=1;
    RW=0;
    __delay_ms(10);
    EN=1;
    EN=0;}

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
__delay_ms(5);
return a;}