#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter string: ");
scanf("%s",s);
int count=0;
int valid=1;
for(int i=0;s[i]!='\0';i++){
 if(s[i]!='a'&&s[i]!='b'){valid=0; break;}
 if(s[i]=='a') count++;
}
if(valid && count==2) printf("%s - Valid (exactly two a's)\n",s);
else printf("%s - Invalid\n",s);
return 0;
}
