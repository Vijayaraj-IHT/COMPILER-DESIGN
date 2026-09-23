%{
#include <stdio.h>
%}
%%
"int"|"float"|"char"|"double" {printf("DATA TYPE       : %s\n",yytext);}
"*" /[ \t]*[a-zA-Z_][a-zA-Z0-9_]* {printf("POINTER DECLARATOR (context: type before, identifier after) : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
"*" {printf("MULTIPLICATION OP : %s\n",yytext);}
"=" {printf("OPERATOR        : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
