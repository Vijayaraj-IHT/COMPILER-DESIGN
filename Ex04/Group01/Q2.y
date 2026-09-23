%{
#include <stdio.h>
%}
%token FOR ID NUM
%%
S: FOR '(' ASSIGN ';' COND ';' ASSIGN ')' '{' ASSIGN '}' {printf("Valid\n");}
;
ASSIGN: ID '=' E
;
COND: ID '<' NUM | ID '>' NUM | ID '<' ID | ID '>' ID
;
E: E '+' T | T
;
T: ID | NUM
;
%%
int main(){printf("Enter for loop:\n"); yyparse(); return 0;}
int yyerror(char *s){printf("Invalid\n"); return 0;}
