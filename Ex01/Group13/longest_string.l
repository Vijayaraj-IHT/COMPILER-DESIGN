%{
#include <stdio.h>
#include <string.h>
char longest[1024]="";
int maxlen=0;
%}
%%
[^ \t\n]+ {
 if(yyleng>maxlen){maxlen=yyleng; strcpy(longest,yytext);}
}
\n|.
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc>1){yyin=fopen(argv[1],"r");}
 yylex();
 printf("Longest: %s Length: %d\n",longest,maxlen);
 return 0;
}
