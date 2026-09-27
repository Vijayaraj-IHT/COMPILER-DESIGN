%{
#include <stdio.h>
%}
%%
SELECT|FROM|WHERE|GROUP|BY|HAVING|ORDER|LIKE|AND|OR|NOT|select|from|where|group|by|having|order|like|and|or|not {printf("<KEYWORD,%s>\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("<IDENTIFIER,%s>\n",yytext);}
[0-9]+(\.[0-9]+)? {printf("<CONSTANT,%s>\n",yytext);}
\'[^\']*\' {printf("<STRING,%s>\n",yytext);}
"="|">"|"<"|">="|"<="|"<>"|"!=" {printf("<OPERATOR,%s>\n",yytext);}
","|";"|"*"|"("|")" {printf("<PUNCTUATION,%s>\n",yytext);}
[ \t\n]+
. {printf("<UNKNOWN,%s>\n",yytext);}
%%
int yywrap(){return 1;}
int main(){printf("Enter SQL query:\n"); yylex(); return 0;}
