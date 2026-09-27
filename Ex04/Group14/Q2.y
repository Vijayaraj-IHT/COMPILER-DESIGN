%{
#include <stdio.h>
%}
%token INT DINT ID NUM
%%
S: INT ID '(' PARAMS ')' '{' ASSIGN '}' {printf("Valid\n");}
;
PARAMS: PARAMS ',' PARAM | PARAM
;
PARAM: INT ID | DINT ID
;
ASSIGN: ID '=' E ';'
;
E: E '+' T | T
;
T: ID | NUM
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid\n"); return 0;}
