%{
#include <stdio.h>
%}
%%
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
"+="|"-="|"*="|"/="|"%=" {printf("COMPOUND OP     : %s\n",yytext);}
"=" {printf("OPERATOR        : %s\n",yytext);}
[0-9]+ {printf("INT CONSTANT    : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
