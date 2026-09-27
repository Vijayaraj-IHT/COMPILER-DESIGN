#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int state=0;
int i,found=0;
for(i=0;s[i]!='\0';i++){
 char c=s[i];
 if(c!='a'&&c!='b') break;
 if(state==0){
  if(c=='a') state=1;
 }else if(state==1){
  if(c=='a') state=2;
  else state=0;
 }else if(state==2){
  if(c=='b') state=3;
  else if(c=='a') state=2;
  else state=0;
 }else if(state==3){
  found=1; break;
 }
 if(state==3){found=1; break;}
}
if(found||state==3) printf("%s - Valid (contains aab)\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
