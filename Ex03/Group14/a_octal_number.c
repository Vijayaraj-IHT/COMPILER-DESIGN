#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int i,valid=1;
if(s[0]!='0') valid=0;
else{
 for(i=1;s[i]!='\0';i++){
  if(s[i]<'0'||s[i]>'7'){valid=0; break;}
 }
}
if(valid && strlen(s)>1) printf("%s - Valid Octal Number\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
