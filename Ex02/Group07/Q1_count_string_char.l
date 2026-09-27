%{
#include <stdio.h>
int sc=0,cc=0;
%}
%%
\"[^\"\n]*\" {sc++; printf("STRING LITERAL  : %s\n",yytext);}
\'[^\'\n]\' {cc++; printf("CHAR LITERAL    : %s\n",yytext);}
\n|.
%%
int yywrap(){return 1;}
int main(){yylex(); printf("String literals    : %d\nCharacter literals : %d\n",sc,cc); return 0;}
