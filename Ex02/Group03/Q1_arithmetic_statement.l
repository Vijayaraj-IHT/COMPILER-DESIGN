%{
#include <stdio.h>
%}
%%
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
[0-9]+\.[0-9]+ {printf("FLOAT CONSTANT  : %s\n",yytext);}
[0-9]+ {printf("INT CONSTANT    : %s\n",yytext);}
"="|"+"|"-"|"*"|"/" {printf("OPERATOR        : %s\n",yytext);}
";"|"("|")" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {printf("UNKNOWN         : %s\n",yytext);}
%%
int yywrap(){return 1;}
int main(){printf("Enter arithmetic statement:\n"); yylex(); return 0;}
