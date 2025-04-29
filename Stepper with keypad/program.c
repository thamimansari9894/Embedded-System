#include<pic.h>
#define Motor RC
#define C1 RD0
#define C2 RD1
#define C3 RD2 
#define R1 RD4
#define R2 RD5
#define R3 RD6
#define R4 RD7
void halfwave();
void fullwave();
void wave();
void delay();
void main(){
TRISD=0xF0;
TRISC=0x00;
PORTD=0x00;
PORTC=0x00;
  while(1){
  C1=1;C2=0;C3=0;
  if(R1==1){
  halfwave();
  delay();}
  C1=0;C2=1;C3=0;
  if(R1==1){
  fullwave();
  delay();}
  C1=0;C2=0;C3=1;
  if(R1==1){
  wave();
  delay();}}}
  void halfwave(){
  unsigned int i;
  unsigned char a[10]={0x00,0x08,0x0C,0x04,0x06,0x02,0x03,0x01,0x09};
  for(i=0;i<10;i++){
  PORTC=a[i];
  delay();}}
  void fullwave(){
  unsigned int i;
  unsigned char a[6]={0x00,0x0C,0x06,0x03,0x09};
  for(i=0;i<6;i++){
  PORTC=a[i];
  delay();}}
  void wave(){
  unsigned int i;
  unsigned char a[6]={0x00,0x08,0x04,0x02,0x01};
  for(i=0;i<6;i++){
  PORTC=a[i];
  delay();}}
  void delay(){
  unsigned int i;
  for(i=0;i<10000;i++);}