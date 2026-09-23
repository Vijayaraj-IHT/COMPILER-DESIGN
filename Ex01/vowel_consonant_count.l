%{
#include <stdio.h>
int v=0,c=0;
%}
%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
\n|.
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
 if(argc>1) yyin=fopen(argv[1],"r");
 yylex();
 printf("Vowels: %d\nConsonants: %d\n",v,c);
 return 0;
}
