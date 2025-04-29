#include <pic.h>
#define R1 RD4
#define R2 RD5
#define R3 RD6
#define R4 RD7
#define C1 RD2
#define C2 RD1
#define C3 RD0
#define RS RC4
#define RW RC5
#define EN RC6
#define IN1 RC0
#define IN2 RC1
#define IN3 RC2
#define IN4 RC3
void cmd(unsigned char a);
void dat(unsigned char a);
void print(unsigned char name[],unsigned char a);
void delay();
void main(){ 
PORTB=0X00;
PORTD=0x00;
PORTC=0x00;
TRISD=0xF0;
TRISC=0x00;
TRISB=0x00;
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
	IN1=1;
	IN2=0;
	IN3=0;
	IN4=0;
    delay();
	cmd(0x01);
    print("M1FORW",6);
	cmd(0xC0);}
	if(R2==1){
	IN1=0;
	IN2=0;
	IN3=0;
	IN4=1;
    delay();
	cmd(0x01);
	print("M2REV",5);
	cmd(0xC0);}
	if(R3==1){		
	IN1=1;
	IN2=0;
	IN3=0;
	IN4=1;
	delay();
	cmd(0x01);
	print("M1FORW M2REV",12);
    cmd(0x0C);}
	C1=0;C2=1;C3=0;
	if(R1==1){
	IN1=0;
	IN2=1;
	IN3=0;
	IN4=0;
	delay();
	cmd(0x01);
	print("M1REV",5);
    cmd(0x0C);}
	if(R2==1){
	IN1=1;
	IN2=0;
	IN3=1;
	IN4=0;
	delay();
	cmd(0x01);
	print("M1 M2FORW",9);
    cmd(0x0C);
	delay();}
	if(R3==1){
	IN1=0;
	IN2=1;
	IN3=1;
	IN4=0;
	delay();
	cmd(0x01);
	print("M1REV M2FORW",12);
    cmd(0x0C);}
	C1=0;C2=0;C3=1;
	if(R1==1){
	IN1=0;
	IN2=0;
	IN3=1;
	IN4=0;
	delay();
	cmd(0x01);
	print("M2FORW",6);
    cmd(0x0C);}
	if(R2==1){
	IN1=0;
	IN2=1;
	IN3=0;
	IN4=1;
	delay();
	cmd(0x01);
	print("M1 M2REV",8);
    cmd(0x0C);}
	if(R3==1){
	IN1=0;
	IN2=0;
    IN3=0;
	IN4=0;
	delay();
	cmd(0x01);
	print("All OFF",7);
    cmd(0x0C);}}}
    void print(unsigned char name[],unsigned char a){
    int i;
	for(i=0;i<a;i++){
	dat(name[i]);}}
    void cmd(unsigned char a){
	PORTB=a;
	RS=0;
	RW=0;
	EN=1;
	delay();
	EN=0;}
    void dat(unsigned char a){
	PORTB=a;
	RS=1;
	RW=0;
	EN=1;
	delay();
	EN=0;}
    void delay(){
	unsigned int i;
	for(i=0;i<2000;i++);}