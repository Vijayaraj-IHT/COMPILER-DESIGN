%{
#include <stdio.h>
%}
%token A B
%%
S: A B {printf("Valid string\n");} | A B S {printf("Valid string\n");}
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid string\n"); return 0;}
