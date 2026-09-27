#include <stdio.h>
#include <ctype.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int i,valid=1;
if(strlen(s)<3) valid=0;
else if(s[0]!='0' || (s[1]!='x' && s[1]!='X')) valid=0;
else{
 for(i=2;s[i]!='\0';i++){
  if(!isxdigit(s[i])){valid=0; break;}
 }
}
if(valid) printf("%s - Valid Hex Number\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
