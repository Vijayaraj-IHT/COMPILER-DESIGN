%{
#include <stdio.h>
%}
%token DO WHILE ID NUM
%%
S: DO '{' ASSIGN '}' WHILE '(' COND ')' ';' {printf("Valid\n");}
;
ASSIGN: ID '=' E ';'
;
COND: ID '<' NUM
;
E: E '+' T | T
;
T: ID | NUM
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid\n"); return 0;}
