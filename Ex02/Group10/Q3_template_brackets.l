%{
#include <stdio.h>
%}
%x TMPL
%%
"vector"|"map"|"set"|"list"|"pair"|"stack"|"queue" {printf("TEMPLATE NAME   : %s\n",yytext); BEGIN(TMPL);}
<TMPL>"<" {printf("TEMPLATE BRACKET (left context: after template name) : %s\n",yytext);}
<TMPL>">" {printf("TEMPLATE BRACKET (left context: after template name) : %s\n",yytext); BEGIN(INITIAL);}
<TMPL>"int"|"float"|"char"|"double" {printf("DATA TYPE       : %s\n",yytext);}
<TMPL>[ \t\n]+ {}
<TMPL>[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
"if" {printf("KEYWORD         : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
"<" {printf("RELATIONAL OP   : %s\n",yytext);}
">" {printf("RELATIONAL OP   : %s\n",yytext);}
"=" {printf("OPERATOR        : %s\n",yytext);}
[0-9]+ {printf("INT CONSTANT    : %s\n",yytext);}
"(" {printf("PUNCTUATION     : %s\n",yytext);}
")" {printf("PUNCTUATION     : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
