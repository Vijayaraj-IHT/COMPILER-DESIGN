#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter line: ");
fgets(s,1024,stdin);
fgets(s,1024,stdin);
int len=strlen(s);
if(len>=2 && s[0]=='/' && s[1]=='/') printf("Valid Single-line Comment\n");
else printf("Invalid Comment\n");
return 0;
}
