%{
#include <stdio.h>
%}
%x INC
%%
"#include" {printf("PREPROCESSOR    : %s\n",yytext); BEGIN(INC);}
<INC>[ \t\n]+ {}
<INC>\"[^\"]+\" {printf("HEADER FILENAME (left context: after #include) : %s\n",yytext); BEGIN(INITIAL);}
<INC>\<[^>]+\> {printf("HEADER FILENAME (left context: after #include) : %s\n",yytext); BEGIN(INITIAL);}
\"[^\"]*\" {printf("STRING LITERAL  : %s\n",yytext);}
"char" {printf("DATA TYPE       : %s\n",yytext);}
"*" {printf("POINTER         : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
"=" {printf("OPERATOR        : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
