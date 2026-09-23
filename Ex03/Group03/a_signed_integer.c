#include <stdio.h>
#include <ctype.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int i=0,valid=1;
if(s[0]=='+'||s[0]=='-') i=1;
if(s[i]=='\0') valid=0;
for(;s[i]!='\0';i++){
 if(!isdigit(s[i])){valid=0; break;}
}
if(valid) printf("%s - Valid Signed Integer\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
