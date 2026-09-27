%{
#include <stdio.h>
%}
%token A B C
%%
S: A B C {printf("Valid string\n");} | A S1 C | A S1 B C
;
S1: A S1 B | A B
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid string\n"); return 0;}
