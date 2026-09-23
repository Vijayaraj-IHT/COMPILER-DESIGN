%{
#include <stdio.h>
%}
%token FOR IF ID NUM
%%
S: FOR '(' ASSIGN ';' COND ';' ASSIGN ')' '{' IF '(' COND ')' '{' ASSIGN '}' '}' {printf("Valid\n");}
;
ASSIGN: ID '=' E
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
