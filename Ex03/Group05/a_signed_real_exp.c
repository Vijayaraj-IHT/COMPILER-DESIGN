#include <stdio.h>
#include <ctype.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int i=0,state=0,valid=1;
int len=strlen(s);
for(i=0;i<len;i++){
 char c=s[i];
 if(state==0){
  if(c=='+'||c=='-') state=1;
  else if(isdigit(c)) state=2;
  else {valid=0; break;}
 }else if(state==1){
  if(isdigit(c)) state=2;
  else {valid=0; break;}
 }else if(state==2){
  if(isdigit(c)) state=2;
  else if(c=='.') state=3;
  else {valid=0; break;}
 }else if(state==3){
  if(isdigit(c)) state=4;
  else {valid=0; break;}
 }else if(state==4){
  if(isdigit(c)) state=4;
  else if(c=='E'||c=='e') state=5;
  else {valid=0; break;}
 }else if(state==5){
  if(c=='+'||c=='-') state=6;
  else if(isdigit(c)) state=7;
  else {valid=0; break;}
 }else if(state==6){
  if(isdigit(c)) state=7;
  else {valid=0; break;}
 }else if(state==7){
  if(isdigit(c)) state=7;
  else {valid=0; break;}
 }
}
if(valid && state==7) printf("%s - Valid Signed Real with Exponent\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
