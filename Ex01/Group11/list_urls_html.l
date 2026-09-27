%{
#include <stdio.h>
%}
%%
https?://[^\s"'<>]+|www\.[^\s"'<>]+ {printf("URL: %s\n",yytext);}
\n|.
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc>1) yyin=fopen(argv[1],"r");
 yylex();
 return 0;
}
