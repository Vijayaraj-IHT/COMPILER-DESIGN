%{
#include <stdio.h>
%}
%%
S: S S | '(' S ')' | '(' ')' | {printf("Valid string\n");}
;
%%
int main(){printf("Enter parentheses: "); yyparse(); return 0;}
int yyerror(char *s){printf("Invalid string\n"); return 0;}
