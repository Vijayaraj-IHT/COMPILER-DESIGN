#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int len=strlen(s);
int valid=1;
for(int i=0;i<len;i++) if(s[i]!='a'&&s[i]!='b'){valid=0; break;}
if(!valid){printf("%s - Invalid (not over {a,b})\n",s); return 0;}
if(len%2==0) printf("%s - Valid (even length)\n",s);
else printf("%s - Invalid (odd length)\n",s);
return 0;
}
