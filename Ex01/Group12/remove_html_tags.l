%{
#include <stdio.h>
%}
%%
"<"[^>]*">" {}
.|\n {fprintf(yyout,"%s",yytext);}
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc>1) yyin=fopen(argv[1],"r");
 yyout=fopen("plain.txt","w");
 yylex();
 printf("Plain text in plain.txt\n");
 return 0;
}
