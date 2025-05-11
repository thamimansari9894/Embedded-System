#include<pic.h>
#define _XTAL_FREQ 10000000
#define RS RC0
#define RW RC1
#define EN RC2
void wait(char data);
void cmd(char a);
void dis(int dat);
void main(){
TXSTA=0x24;
RCSTA=0x90;
SPBRG=64;
TRISC=0x80;
PORTC=0x00;
TRISD=0x00;
PORTD=0x00;
cmd(0x38);
cmd(0x0C);
cmd(0x10);
cmd(0x06);
cmd(0x80);
cmd(0xC0);
char lat[20];
char log[20];
int i;
while(1){
wait('G');
wait('P');
wait('R');
wait('M');
wait('C');
wait(',');
wait(',');
wait(',');

for(i=0;i<=20;i++){
while(RCIF==0);
RCIF=0;
if(RCREG==','){
break;}
lat[i]=RCREG;}

wait(',');

for(i=0;i<=20;i++){
while(RCIF==0);
RCIF=0;
if(RCREG==','){
break;}
log[i]=RCREG;}

cmd(0x80);
for(i=0;i<=20;i++){
dis(lat[i]);}
cmd(0xC0);
for(i=0;i<=20;i++){
dis(log[i]);}}}

void cmd(char a){
    PORTD=a;
    RS=0;
    RW=0;
    EN=1;
    __delay_ms(2);
    EN=0;}

void dis(int dat){
    PORTD=dat;
    RS=1;
    RW=0;
    EN=1;
    __delay_ms(2);
    EN=0;}

void wait(char data){
do{
while(RCIF==0);
RCIF=0;}
while(RCREG!=data);}
