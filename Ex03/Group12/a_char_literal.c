#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter char literal: ");
fgets(s,1024,stdin);
fgets(s,1024,stdin);
int len=strlen(s);
if(len>0 && s[len-1]=='\n'){s[len-1]='\0'; len--;}
if(len==3 && s[0]=='\'' && s[2]=='\'') printf("%s - Valid Character Literal\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
