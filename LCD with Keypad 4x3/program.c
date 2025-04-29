#include<pic.h>
#define _XTAL_FREQ 20000000
__CONFIG(0X3F3A);
#define C1 RB0
#define C2 RB1
#define C3 RB2
#define R1 RB4
#define R2 RB5
#define R3 RB6
#define R4 RB7
#define RS RC0
#define RW RC1
#define EN RC2
void cmd(unsigned char a);
void dat(unsigned char a);
void RF1();
void RF2();
void RF3();
void main(){
PORTB=0x00;
PORTC=0x00;
PORTD=0x00;
TRISB=0xF0;
TRISC=0x00;
TRISD=0x00;
cmd(0x38);
cmd(0x0C);
cmd(0x10);
cmd(0x01);
cmd(0x06);
cmd(0x80);
cmd(0xC0);
while(1){
	C1=1;C2=0;C3=0;
	if(R1==1){
	dat('1');
    while(R1==1);
	}
	if(R2==1){
	dat('4');
    while(R2==1);
	}
	if(R3==1){
	dat('7');
    while(R3==3);
	}
	if(R4==1){
	dat('*');
    while(R4==1);
	}
    C2=1;C1=0;C3=0;
	if(R1==1){
	dat('2');
    while(R1==1);
	}
	if(R2==1){
	dat('5');
    while(R2==1);
	}
	if(R3==1){
	dat('8');
    while(R3==1);
	}
	if(R4==1){
	dat('0');
    while(R4==1);
	}
	C1=0;C2=0;C3=1;
	if(R1==1){
	dat('3');
    while(R1==1);
	}
	if(R2==1){
	dat('6');
    while(R2==1);
	}
	if(R3==1){
	dat('9');
    while(R3==1);
	}
	if(R4==1){
	dat('#');
    while(R4==1);}}}
	void cmd(unsigned char a){
	PORTD=a;
	RS=0;
	RW=0;
	EN=1;
	__delay_ms(100);
	EN=0;}
void dat(unsigned char a){
	PORTD=a;
	RS=1;
	RW=0;
	EN=1;
	__delay_ms(100);
	EN=0;}
