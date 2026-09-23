%{
#include <stdio.h>
%}
%token SWITCH CASE BREAK ID NUM
%%
S: SWITCH '(' ID ')' '{' CASES '}' {printf("Valid\n");}
;
CASES: CASES CASE | CASE
;
CASE: CASE NUM ':' ASSIGN BREAK ';'
;
ASSIGN: ID '=' E ';'
;
E: E '+' T | T | ID | NUM
;
T: ID | NUM
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid\n"); return 0;}
