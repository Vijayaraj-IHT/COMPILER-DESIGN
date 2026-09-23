%{
#include <stdio.h>
%}
%%
"int"|"float"|"char"|"double"|"void" {printf("RETURN TYPE     : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]*/"(" {printf("FUNCTION NAME   : %s\n",yytext);}
"(" {printf("PUNCTUATION     : %s\n",yytext);}
")" {printf("PUNCTUATION     : %s\n",yytext);}
"{" {printf("PUNCTUATION     : %s\n",yytext);}
"}" {printf("PUNCTUATION     : %s\n",yytext);}
"," {printf("PUNCTUATION     : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
"return" {printf("KEYWORD         : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("PARAMETER       : %s\n",yytext);}
"+"|"-"|"*"|"/"|"=" {printf("OPERATOR        : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
