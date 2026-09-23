%{
#include <stdio.h>
%}
%%
"int"|"float"|"char"|"double" {printf("DATA TYPE       : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]*/"[" {printf("ARRAY NAME      : %s\n",yytext);}
"["[0-9]+"]" {printf("DIMENSION       : %s\n",yytext);}
"=" {printf("OPERATOR        : %s\n",yytext);}
"{"[^}]*"}" {printf("INITIALIZER LIST: %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n,]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
