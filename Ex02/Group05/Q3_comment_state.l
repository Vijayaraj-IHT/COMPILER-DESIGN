%{
#include <stdio.h>
%}
%x COMMENT
%%
"int"|"float"|"char" {printf("KEYWORD         : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
"/*" {printf("ENTER COMMENT_STATE (left context: '/*' seen)\n"); BEGIN(COMMENT);}
<COMMENT>"*/" {printf("EXIT COMMENT_STATE (on seeing '*/')\n"); BEGIN(INITIAL);}
<COMMENT>\n {}
<COMMENT>. {}
[ \t\n]+
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
