%{
#include <stdio.h>
%}
%%
"<=" {printf("Less than or equal to\n");}
">=" {printf("Greater than or equal to\n");}
"==" {printf("Equal to\n");}
"!=" {printf("Not equal to\n");}
"<" {printf("Less than\n");}
">" {printf("Greater than\n");}
\n|.
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
