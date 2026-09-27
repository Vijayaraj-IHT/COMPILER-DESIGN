%{
#include <stdio.h>
%}
%%
"case"[ \t]+[0-9]+/":" {printf("LABEL (right context ':' ahead) : %s\n",yytext);}
"default"/":" {printf("LABEL (right context ':' ahead) : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]*/":" {printf("LABEL (right context ':' ahead) : %s\n",yytext);}
":" {printf("PUNCTUATION     : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
"=" {printf("OPERATOR        : %s\n",yytext);}
[0-9]+ {printf("INT CONSTANT    : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
[ \t\n]+
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
