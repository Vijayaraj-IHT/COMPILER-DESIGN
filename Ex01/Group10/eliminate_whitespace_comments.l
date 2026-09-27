%{
#include <stdio.h>
%}
%%
"/*"([^*]|"*"[^/])*"*/" {}
[ \t\n]+ {fprintf(yyout," ");}
. {fprintf(yyout,"%s",yytext);}
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc>1) yyin=fopen(argv[1],"r");
 yyout=fopen("output.txt","w");
 yylex();
 fclose(yyout);
 printf("Cleaned output in output.txt\n");
 return 0;
}
