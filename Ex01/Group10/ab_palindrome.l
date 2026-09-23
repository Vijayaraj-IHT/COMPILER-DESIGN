%{
#include <stdio.h>
#include <string.h>
FILE *fp;
int isPal(char *s){
 int i=0,j=strlen(s)-1;
 while(i<j){if(s[i]!=s[j]) return 0; i++; j--;}
 return 1;
}
%}
%%
[aAbB]+ {
 int valid=1;
 for(int i=0;i<yyleng;i++){if(yytext[i]!='a'&&yytext[i]!='b'&&yytext[i]!='A'&&yytext[i]!='B'){valid=0; break;}}
 if(valid && isPal(yytext)){
  fprintf(fp,"%s\n",yytext);
  printf("Palindrome: %s\n",yytext);
 }
}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc<2){printf("Usage: %s <file>\n",argv[0]); return 1;}
 yyin=fopen(argv[1],"r");
 fp=fopen("ab_palindromes.txt","w");
 yylex();
 fclose(fp);
 return 0;
}
