%{
#include <stdio.h>
int wc=0, cc=0, lc=0;
%}
%%
\n { lc++; cc++; }
[ \t]+ { cc+=yyleng; }
[^ \t\n]+ { wc++; cc+=yyleng; }
%%
int yywrap(){return 1;}
int main(int argc,char **argv){
if(argc>1){yyin=fopen(argv[1],"r"); if(!yyin){perror(argv[1]); return 1;}}
yylex();
printf("Lines: %d\nWords: %d\nChars: %d\n",lc,wc,cc);
return 0;
}
