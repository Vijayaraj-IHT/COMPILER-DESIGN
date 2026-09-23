%{
#include <stdio.h>
%}
%%
0x[0-9a-fA-F]+ {printf("HEX CONSTANT     : %s\n",yytext);}
0[0-7]+ {printf("OCTAL CONSTANT   : %s\n",yytext);}
[0-9]+\.[0-9]+ {printf("FLOAT CONSTANT   : %s\n",yytext);}
[0-9]+ {printf("INT CONSTANT     : %s\n",yytext);}
[ \t\n;=]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
