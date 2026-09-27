%{
#include <stdio.h>
%}
%token WHILE FOR ID NUM
%%
S: WHILE '(' COND ')' '{' FOR '(' ASSIGN ';' COND ';' ASSIGN ')' '{' ASSIGN '}' '}' {printf("Valid\n");}
;
ASSIGN: ID '=' E ';' | ID '=' E
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
