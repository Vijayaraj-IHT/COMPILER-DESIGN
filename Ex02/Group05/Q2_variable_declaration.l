%{
#include <stdio.h>
%}
%%
"int"|"float"|"char"|"double" {printf("DATA TYPE       : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]*[ \t]*"="[ \t]*[0-9]+(\.[0-9]+)? {printf("INITIALIZED VAR : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("UNINITIALIZED VAR : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
