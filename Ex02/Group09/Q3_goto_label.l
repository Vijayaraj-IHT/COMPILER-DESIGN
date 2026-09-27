%{
#include <stdio.h>
%}
%x GOTO_STATE
%%
"goto" {printf("KEYWORD         : %s\n",yytext); BEGIN(GOTO_STATE);}
<GOTO_STATE>[ \t\n]+ {}
<GOTO_STATE>[a-zA-Z_][a-zA-Z0-9_]* {printf("LABEL REFERENCE (left context: after 'goto') : %s\n",yytext); BEGIN(INITIAL);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
"=" {printf("OPERATOR        : %s\n",yytext);}
[0-9]+ {printf("INT CONSTANT    : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
