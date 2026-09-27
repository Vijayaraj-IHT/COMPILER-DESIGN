%{
#include <stdio.h>
%}
%%
[ \t]+ {fprintf(yyout," ");}
\n {fprintf(yyout,"\n");}
. {fprintf(yyout,"%s",yytext);}
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc>1) yyin=fopen(argv[1],"r");
 yyout=fopen("output.txt","w");
 yylex();
 return 0;
}
