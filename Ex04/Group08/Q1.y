%{
#include <stdio.h>
%}
%token ID NUM
%%
S: ID '=' E ';' {printf("Valid\n");}
;
E: E '+' T | T
;
T: ID | NUM
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid\n"); return 0;}
