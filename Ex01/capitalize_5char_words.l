%{
#include <stdio.h>
#include <ctype.h>
%}
%%
[a-zA-Z]{5} {
 if(yytext[0]>='a' && yytext[0]<='z')
  fprintf(yyout,"%c%s",toupper(yytext[0]),yytext+1);
 else
  fprintf(yyout,"%s",yytext);
}
[a-zA-Z]+ {fprintf(yyout,"%s",yytext);}
.|\n {fprintf(yyout,"%s",yytext);}
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc>1) yyin=fopen(argv[1],"r");
 yyout=fopen("output.txt","w");
 yylex();
 return 0;
}
