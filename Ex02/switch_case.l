%{
#include <stdio.h>
%}
%%
"switch" {printf("KEYWORD         : %s\n",yytext);}
"case" {printf("CASE LABEL      : %s\n",yytext);}
"default" {printf("CASE LABEL      : %s\n",yytext);}
"break" {printf("KEYWORD         : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]*/"(" {printf("FUNCTION CALL   : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
"'"[^']"'" {printf("CHAR CONSTANT   : %s\n",yytext);}
\"[^"]*\" {printf("STRING CONSTANT : %s\n",yytext);}
"{"|"}"|"("|")"|":"|";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
