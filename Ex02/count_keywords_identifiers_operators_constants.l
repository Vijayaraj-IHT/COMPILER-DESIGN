%{
#include <stdio.h>
int kw=0,id=0,op=0,cons=0;
%}
%%
"int"|"float"|"char"|"double"|"void"|"if"|"else"|"for"|"while"|"do"|"return" {kw++;}
[a-zA-Z_][a-zA-Z0-9_]* {id++;}
[0-9]+(\.[0-9]+)? {cons++;}
"+"|"-"|"*"|"/"|"="|"<"|">"|"=="|"<="|">=" {op++;}
[ \t\n;,\(\)\{\}]+
. {}
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc>1) yyin=fopen(argv[1],"r");
 yylex();
 printf("Keywords    : %d\nIdentifiers : %d\nOperators   : %d\nConstants   : %d\n",kw,id,op,cons);
 return 0;
}
