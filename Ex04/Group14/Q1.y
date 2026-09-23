%{
#include <stdio.h>
%}
%token IF THEN ELSE ID NUM
%%
S: IF ID THEN S ELSE S {printf("Valid\n");} | IF ID THEN S {printf("Valid\n");} | ID '=' ID ';' {printf("Valid\n");} | ID '=' NUM ';' {printf("Valid\n");}
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid\n"); return 0;}
