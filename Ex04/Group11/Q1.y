%{
#include <stdio.h>
%}
%token ID NUM LE GE EQ NE
%%
S: ID '<' ID {printf("Valid expression\n");} | ID '>' ID | ID LE ID | ID GE ID | ID EQ ID | ID NE ID | ID '<' NUM | ID '>' NUM | ID LE NUM | ID GE NUM
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid expression\n"); return 0;}
