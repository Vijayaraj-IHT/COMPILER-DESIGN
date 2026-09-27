%{
#include <stdio.h>
%}
%token ID NUM
%%
S: ID '=' E '?' E ':' E ';' {printf("Valid\n");}
;
E: ID | NUM
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid\n"); return 0;}
