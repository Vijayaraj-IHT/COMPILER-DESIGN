%{
#include <stdio.h>
%}
%token WHILE ID NUM
%%
S: WHILE '(' COND ')' '{' ASSIGN '}' {printf("Valid\n");}
;
ASSIGN: ID '=' E ';'
;
COND: ID '<' NUM | ID '>' NUM | ID '<' ID
;
E: E '+' T | T
;
T: ID | NUM
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid\n"); return 0;}
