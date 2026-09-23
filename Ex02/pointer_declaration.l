%{
#include <stdio.h>
%}
%%
"int"|"float"|"char"|"double"|"void" {printf("DATA TYPE       : %s\n",yytext);}
"*"[a-zA-Z_][a-zA-Z0-9_]* {printf("POINTER DECL    : %s\n",yytext);}
"&" {printf("ADDRESS-OF OP   : %s\n",yytext);}
"*" {printf("DEREFERENCE OP  : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
"=" {printf("OPERATOR        : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
