#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int state=0;
int i;
for(i=0;s[i]!='\0';i++){
 char c=s[i];
 if(state==0){
  if(c=='a') state=1;
  else if(c=='b') state=2;
  else {state=3; break;}
 }else if(state==1){
  if(c=='b') state=2;
  else {state=3; break;}
 }else if(state==2){
  if(c=='a') state=1;
  else if(c=='b') state=2;
  else {state=3; break;}
 }
}
if(state==2) printf("%s - Valid (ab)*b\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
