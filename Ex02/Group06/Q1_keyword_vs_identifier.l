%{
#include <stdio.h>
#include <string.h>
char *kws[]={"auto","break","case","char","const","continue","default","do","double","else","enum","extern","float","for","goto","if","int","long","register","return","short","signed","sizeof","static","struct","switch","typedef","union","unsigned","void","volatile","while",NULL};
int isKw(char *s){for(int i=0;kws[i];i++) if(strcmp(kws[i],s)==0) return 1; return 0;}
%}
%%
[a-zA-Z_][a-zA-Z0-9_]* {if(isKw(yytext)) printf("%s -> KEYWORD\n",yytext); else printf("%s -> USER-DEFINED IDENTIFIER\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
