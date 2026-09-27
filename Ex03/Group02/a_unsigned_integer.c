#include <stdio.h>
#include <ctype.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int i,valid=1;
if(strlen(s)==0) valid=0;
for(i=0;s[i]!='\0';i++){
 if(!isdigit(s[i])){valid=0; break;}
}
if(valid) printf("%s - Valid Unsigned Integer\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
