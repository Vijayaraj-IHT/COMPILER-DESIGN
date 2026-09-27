%{
#include <stdio.h>
%}
%token TRUE FALSE AND OR NOT
%%
E: E OR T | T
;
T: T AND F | F
;
F: NOT F | '(' E ')' | TRUE | FALSE
;
%%
int main(){printf("Enter boolean expr: "); yyparse(); printf("Valid expression\n"); return 0;}
int yyerror(char *s){printf("Invalid expression\n"); return 0;}
