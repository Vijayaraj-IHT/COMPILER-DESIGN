#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int i=0,state=0,valid=1;
int has_a=0,has_b=0;
for(i=0;s[i]!='\0';i++){
 char c=s[i];
 if(c!='a' && c!='b'){valid=0; break;}
 if(state==0){
  if(c=='a'){has_a=1; state=0;}
  else if(c=='b'){has_b=1; state=1;}
 }else if(state==1){
  if(c=='a'){valid=0; break;}
  else if(c=='b'){has_b=1; state=1;}
 }
}
if(valid && has_a && has_b) printf("%s - Valid (a^n b^m n>=1 m>=1)\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
