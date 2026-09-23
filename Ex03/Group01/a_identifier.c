#include <stdio.h>
#include <ctype.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int state=0;
int i=0;
int valid=1;
if(!isalpha(s[0]) && s[0]!='_') valid=0;
else{
 for(i=1;s[i]!='\0';i++){
  if(!isalnum(s[i]) && s[i]!='_'){valid=0; break;}
 }
}
if(valid) printf("%s - Valid Identifier\n",s);
else printf("%s - Invalid Identifier\n",s);
return 0;
}
