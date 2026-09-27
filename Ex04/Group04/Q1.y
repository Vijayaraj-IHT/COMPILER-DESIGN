%{
#include <stdio.h>
%}
%token ID
%%
E: E '+' T { } | T { }
;
T: T '*' F | F
;
F: '(' E ')' | ID
;
%%
int main(){printf("Enter expression: "); yyparse(); printf("Valid expression\n"); return 0;}
int yyerror(char *s){printf("Invalid expression\n"); return 0;}
