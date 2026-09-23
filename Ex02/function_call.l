%{
#include <stdio.h>
%}
%%
[a-zA-Z_][a-zA-Z0-9_]*/"(" {printf("FUNCTION CALL   : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("ARGUMENT        : %s\n",yytext);}
[0-9]+ {printf("ARGUMENT        : %s\n",yytext);}
"=" {printf("OPERATOR        : %s\n",yytext);}
"(" {printf("PUNCTUATION     : %s\n",yytext);}
")" {printf("PUNCTUATION     : %s\n",yytext);}
"," {printf("PUNCTUATION     : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
