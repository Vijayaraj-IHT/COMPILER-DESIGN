#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int len=strlen(s);
int valid=1;
for(int i=0;i<len;i++) if(s[i]!='a'&&s[i]!='b'){valid=0; break;}
if(!valid||len<3){printf("%s - Invalid\n",s); return 0;}
if(s[len-3]=='a') printf("%s - Valid (third from end is a)\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
