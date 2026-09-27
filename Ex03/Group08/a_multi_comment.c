#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
printf("Enter comment: ");
fgets(s,1024,stdin);
fgets(s,1024,stdin);
int len=strlen(s);
if(len>=4 && s[0]=='/' && s[1]=='*' && s[len-2]=='*' && s[len-1]=='\n'){
 int k;
 for(k=2;k<len-2;k++) if(s[k]=='\n') break;
 printf("Valid Multi-line Comment\n");
}
else{
 if(len>=2 && s[0]=='/' && s[1]=='*'){
   char t[1024];
   int found=0;
   while(fgets(t,1024,stdin)){
     if(strstr(t,"*/")){found=1; break;}
   }
   if(found) printf("Valid Multi-line Comment\n");
   else printf("Invalid/Incomplete Comment\n");
 }else printf("Invalid/Incomplete Comment\n");
}
return 0;
}
