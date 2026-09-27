#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int state=0;
int i,valid=1;
for(i=0;s[i]!='\0';i++){
 char c=s[i];
 if(c!='a'&&c!='b'){valid=0; break;}
 if(state==0){
  if(c=='a') state=1;
  else state=0;
 }else if(state==1){
  if(c=='a'){valid=0; break;}
  else state=0;
 }
}
if(valid) printf("%s - Valid (no aa)\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
