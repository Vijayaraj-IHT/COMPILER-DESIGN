%{
#include <stdio.h>
%}
%token IF ELSE ID NUM
%%
S: IF '(' COND ')' '{' ASSIGN '}' ELSE '{' ASSIGN '}' {printf("Valid\n");}
;
COND: ID '<' NUM | ID '>' NUM
;
ASSIGN: ID '=' E ';'
;
E: E '-' T | T
;
T: ID | NUM
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid\n"); return 0;}
