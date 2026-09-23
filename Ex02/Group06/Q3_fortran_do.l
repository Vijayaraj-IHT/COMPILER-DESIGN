%{
#include <stdio.h>
%}
%%
"DO"[ \t]*[0-9]+[ \t]*[A-Z][ \t]*"="[ \t]*[0-9]+/[ \t]*"," {printf("DO-LOOP STATEMENT    : \"%s\"  (right context: comma found ahead)\n",yytext);}
"DO"[ \t]*[0-9]+[ \t]*[A-Z][ \t]*"="[ \t]*[0-9]+ {printf("ASSIGNMENT STATEMENT : \"%s\"  (right context: no comma ahead)\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
