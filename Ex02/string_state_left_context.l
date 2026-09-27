%{
#include <stdio.h>
%}
%x STR
%%
[a-zA-Z_][a-zA-Z0-9_]*/"(" {printf("FUNCTION CALL   : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
"=" {printf("OPERATOR        : %s\n",yytext);}
[0-9]+ {printf("INT CONSTANT    : %s\n",yytext);}
"(" {printf("PUNCTUATION     : %s\n",yytext);}
")" {printf("PUNCTUATION     : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
\" {printf("ENTER STRING_STATE (left context: '\"' seen)\n"); BEGIN(STR);}
<STR>[^"]+ {printf("STRING CONTENT (ignored as code): %s\n",yytext);}
<STR>\" {printf("EXIT STRING_STATE (on closing '\"')\n"); BEGIN(INITIAL);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
