%{
#include <stdio.h>
%}
%token ID
%%
S: L '=' R {printf("Valid string\n");} | R {printf("Valid string\n");}
;
L: '*' R | ID
;
R: L
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid string\n"); return 0;}
