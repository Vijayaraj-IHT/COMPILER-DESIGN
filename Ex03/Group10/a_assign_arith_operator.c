#include <stdio.h>
#include <string.h>
int main(){
char s[32];
printf("Enter operator: ");
scanf("%s",s);
if(strcmp(s,"=")==0||strcmp(s,"+=")==0||strcmp(s,"-=")==0||strcmp(s,"*=")==0||strcmp(s,"/=")==0||strcmp(s,"%=")==0||strcmp(s,"+")==0||strcmp(s,"-")==0||strcmp(s,"*")==0||strcmp(s,"/")==0||strcmp(s,"%")==0)
 printf("%s - Valid Operator\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
