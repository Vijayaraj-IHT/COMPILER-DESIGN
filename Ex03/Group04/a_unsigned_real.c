#include <stdio.h>
#include <ctype.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int i=0,state=0,valid=1;
for(i=0;s[i]!='\0';i++){
 char c=s[i];
 if(state==0){
  if(isdigit(c)) state=1;
  else {valid=0; break;}
 }else if(state==1){
  if(isdigit(c)) state=1;
  else if(c=='.') state=2;
  else {valid=0; break;}
 }else if(state==2){
  if(isdigit(c)) state=3;
  else {valid=0; break;}
 }else if(state==3){
  if(isdigit(c)) state=3;
  else {valid=0; break;}
 }
}
if(valid && state==3) printf("%s - Valid Unsigned Real\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
