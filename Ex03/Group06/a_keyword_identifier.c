#include <stdio.h>
#include <string.h>
int main(){
char s[1024];
char *kw[]={"if","else","for","while","int","float","char","double","void","return","struct","break","continue","switch","case","default",NULL};
printf("Enter string: ");
scanf("%s",s);
int i,found=0;
for(i=0;kw[i]!=NULL;i++){
 if(strcmp(s,kw[i])==0){found=1; break;}
}
if(found) printf("%s - Keyword\n",s);
else{
 int valid=1;
 if(!( (s[0]>='a'&&s[0]<='z')||(s[0]>='A'&&s[0]<='Z')||s[0]=='_')) valid=0;
 for(int j=1;s[j]!='\0';j++){
  if(!((s[j]>='a'&&s[j]<='z')||(s[j]>='A'&&s[j]<='Z')||(s[j]>='0'&&s[j]<='9')||s[j]=='_')){valid=0; break;}
 }
 if(valid) printf("%s - Identifier\n",s);
 else printf("%s - Invalid\n",s);
}
return 0;
}
