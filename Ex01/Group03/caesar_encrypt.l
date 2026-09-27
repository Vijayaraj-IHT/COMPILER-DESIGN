%{
#include <stdio.h>
%}
%%
[a-z] {fprintf(yyout,"%c",((yytext[0]-'a'+3)%26)+'a');}
[A-Z] {fprintf(yyout,"%c",((yytext[0]-'A'+3)%26)+'A');}
.|\n {fprintf(yyout,"%s",yytext);}
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc>1) yyin=fopen(argv[1],"r");
 yyout=fopen("encrypted.txt","w");
 yylex();
 return 0;
}
