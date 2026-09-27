%{
#include <stdio.h>
%}
%token STRUCT INT ID
%%
S: STRUCT ID '{' DECLS '}' ';' {printf("Valid\n");}
;
DECLS: DECLS DECL | DECL
;
DECL: INT ID ';'
;
%%
int main(){yyparse(); return 0;}
int yyerror(char *s){printf("Invalid\n"); return 0;}
