#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int len=strlen(s);
if(len==0){printf("Invalid\n"); return 0;}
if(len==1){printf("%s - Valid (single symbol)\n",s); return 0;}
if(s[0]==s[len-1] && (s[0]=='a'||s[0]=='b')){
 int valid=1;
 for(int i=0;i<len;i++) if(s[i]!='a'&&s[i]!='b'){valid=0; break;}
 if(valid) printf("%s - Valid (start and end same)\n",s);
 else printf("%s - Invalid\n",s);
}else printf("%s - Invalid\n",s);
return 0;
}
