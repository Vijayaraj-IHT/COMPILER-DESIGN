%{
#include <stdio.h>
%}
%token ID
%%
S: '(' S ')' | ID {printf("Valid expression\n");}
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid expression\n"); return 0;}
