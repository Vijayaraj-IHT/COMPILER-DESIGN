%{
#include <stdio.h>
%}
%token ID
%%
S: '[' L ']' {printf("Valid string\n");}
;
L: ID | L ',' ID
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid string\n"); return 0;}
