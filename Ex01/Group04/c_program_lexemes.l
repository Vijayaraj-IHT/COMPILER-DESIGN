%{
#include <stdio.h>
%}
%%
"void"|"int"|"float"|"char"|"double" {printf("<kw,%s> ",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("<id,%s> ",yytext);}
[0-9]+\.[0-9]+ {printf("%.1ff ",atof(yytext));}
[0-9]+ {printf("%si ",yytext);}
"="|"+"|"-"|"*"|"/" {printf("<op,%s> ",yytext);}
";"|","|"("|")"|"{"|"}" {printf("%s ",yytext);}
[ \t\n]+ {printf(" ");}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
