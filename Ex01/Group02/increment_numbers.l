%{
#include <stdio.h>
#include <stdlib.h>
%}
%%
[0-9]+\.[0-9]+ {fprintf(yyout,"%.2f",atof(yytext)+0.5);}
[0-9]+ {fprintf(yyout,"%d",atoi(yytext)+1);}
.|\n {fprintf(yyout,"%s",yytext);}
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc>1) yyin=fopen(argv[1],"r");
 yyout=fopen("output.txt","w");
 yylex();
 return 0;
}
