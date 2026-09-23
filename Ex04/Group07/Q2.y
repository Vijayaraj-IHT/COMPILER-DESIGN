%{
#include <stdio.h>
%}
%token ID
%%
S: ID '(' ARGS ')' ';' {printf("Valid\n");}
;
ARGS: ARGS ',' ID | ID
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid\n"); return 0;}
