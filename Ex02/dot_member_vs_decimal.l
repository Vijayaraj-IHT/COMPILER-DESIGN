%{
#include <stdio.h>
%}
%x AFTER_ID
%%
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext); BEGIN(AFTER_ID);}
<AFTER_ID>"." {printf("MEMBER ACCESS (left context: after identifier) : %s\n",yytext); BEGIN(INITIAL);}
<AFTER_ID>[ \t\n]+ {BEGIN(INITIAL);}
<AFTER_ID>. {yyless(0); BEGIN(INITIAL);}
[0-9]+"."[0-9]+ {printf("FLOAT CONSTANT  : %s\n",yytext);}
"=" {printf("OPERATOR        : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
