%{
#include <stdio.h>
%}
%token A B
%%
S: A B1 {printf("Valid string\n");}
;
B1: B | B1 B
;
%%
int main(){printf("Enter string: "); yyparse(); return 0;}
int yyerror(char *s){printf("Invalid string\n"); return 0;}
