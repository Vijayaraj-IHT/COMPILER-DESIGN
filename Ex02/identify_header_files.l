%{
#include <stdio.h>
%}
%%
"#include"[ \t]*"<"[^>]+">" {printf("Header file: %s\n",yytext);}
"#include"[ \t]*\"[^\"]+\" {printf("Header file: %s\n",yytext);}
\n|.
%%
int yywrap(){return 1;}
int main(){
 printf("Header files included:\n");
 yylex();
 return 0;
}
