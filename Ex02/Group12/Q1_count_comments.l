%{
#include <stdio.h>
int single_c=0,multi_c=0;
%}
%%
"//".* {single_c++; printf("Single-line comment: %s\n",yytext);}
"/*"([^*]|"*"[^/])*"*/" {multi_c++; printf("Multi-line comment: %s\n",yytext);}
\n|.
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc>1) yyin=fopen(argv[1],"r");
 yylex();
 printf("Single-line comments : %d\nMulti-line comments  : %d\nTotal comments       : %d\n",single_c,multi_c,single_c+multi_c);
 return 0;
}
