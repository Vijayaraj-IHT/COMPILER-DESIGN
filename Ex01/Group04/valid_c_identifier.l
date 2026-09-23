%{
#include <stdio.h>
%}
%%
[a-zA-Z_][a-zA-Z0-9_]* {printf("%s -> Valid Identifier\n",yytext);}
[0-9][a-zA-Z0-9_]* {printf("%s -> Invalid Identifier\n",yytext);}
[^a-zA-Z0-9_\n]+ {printf("%s -> Invalid\n",yytext);}
\n {printf("\n");}
%%
int yywrap(){return 1;}
int main(){printf("Enter strings:\n"); yylex(); return 0;}
