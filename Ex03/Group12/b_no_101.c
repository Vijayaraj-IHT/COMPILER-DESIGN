#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter binary string: ");
scanf("%s",s);
int state=0;
int i,valid=1;
for(i=0;s[i]!='\0';i++){
 char c=s[i];
 if(c!='0'&&c!='1'){valid=0; break;}
 if(state==0){
  if(c=='1') state=1;
 }else if(state==1){
  if(c=='0') state=2;
 }else if(state==2){
  if(c=='1'){valid=0; break;}
  else state=0;
 }
}
if(valid) printf("%s - Valid (no 101)\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
