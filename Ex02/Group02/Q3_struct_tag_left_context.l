%{
#include <stdio.h>
%}
%x STRUCT_EXPECT
%%
"struct" {printf("KEYWORD         : %s\n",yytext); BEGIN(STRUCT_EXPECT);}
<STRUCT_EXPECT>[ \t\n]+ {}
<STRUCT_EXPECT>[a-zA-Z_][a-zA-Z0-9_]* {printf("STRUCT TAG NAME (left context after 'struct') : %s\n",yytext); BEGIN(INITIAL);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
