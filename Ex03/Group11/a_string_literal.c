#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
fgets(s,1024,stdin);
fgets(s,1024,stdin);
int len=strlen(s);
if(len>0 && s[len-1]=='\n'){s[len-1]='\0'; len--;}
if(len>=2 && s[0]=='"' && s[len-1]=='"') printf("Valid String Literal\n");
else printf("Invalid String\n");
return 0;
}
