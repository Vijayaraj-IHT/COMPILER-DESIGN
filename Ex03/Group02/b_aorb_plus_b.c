#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int len=strlen(s);
int i,state=0;
if(len==0){printf("Invalid\n"); return 0;}
for(i=0;i<len;i++){
 char c=s[i];
 if(c!='a' && c!='b'){state=3; break;}
 if(i==len-1){
  if(c!='b'){state=3; break;}
 }
 state=1;
}
if(state==1) printf("%s - Valid (a|b)+b\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
