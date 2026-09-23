%{
#include <stdio.h>
%}
%%
"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"volatile"|"while" {printf("<keyword,%s>\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("<identifier,%s>\n",yytext);}
[0-9]+\.[0-9]+|[0-9]+ {printf("<constant,%s>\n",yytext);}
"=="|"!="|"<="|">="|"&&"|"||"|"++"|"--"|"+="|"-="|"*="|"/="|"%="|"+"|"-"|"*"|"/"|"%"|"="|"<"|">"|"!"|"&"|"|"|"^"|"~" {printf("<operator,%s>\n",yytext);}
[;,\(\)\{\}\[\]] {printf("<punctuation,%s>\n",yytext);}
[ \t\n]+
. {printf("<unknown,%s>\n",yytext);}
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc>1) yyin=fopen(argv[1],"r");
 yylex();
 return 0;
}
