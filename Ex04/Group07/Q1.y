%{
#include <stdio.h>
%}
%token A B
%%
S: A S A | B S B | A A | B B {printf("Valid string\n");}
;
%%
int main(){printf("Enter string: "); yyparse(); return 0;}
int yyerror(char *s){printf("Invalid string\n"); return 0;}
