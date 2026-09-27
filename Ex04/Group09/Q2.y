%{
#include <stdio.h>
%}
%token INT ID NUM
%%
S: INT ID '[' NUM ']' ';' {printf("Valid\n");}
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid\n"); return 0;}
