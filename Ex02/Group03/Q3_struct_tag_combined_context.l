%{
#include <stdio.h>
%}
%x STRUCT_EXPECT
%%
"struct" {printf("KEYWORD         : %s\n",yytext); BEGIN(STRUCT_EXPECT);}
<STRUCT_EXPECT>[ \t\n]+ {}
<STRUCT_EXPECT>[a-zA-Z_][a-zA-Z0-9_]*/[ \t]*"{" {printf("STRUCT TAG (left: after 'struct', right: before '{') : %s\n",yytext); BEGIN(INITIAL);}
<STRUCT_EXPECT>[a-zA-Z_][a-zA-Z0-9_]* {printf("STRUCT TAG NAME : %s\n",yytext); BEGIN(INITIAL);}
"{" {printf("PUNCTUATION     : %s\n",yytext);}
"}" {printf("PUNCTUATION     : %s\n",yytext);}
";" {printf("PUNCTUATION     : %s\n",yytext);}
"int"|"float"|"char"|"double" {printf("DATA TYPE       : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext);}
[ \t\n]+
. {printf("PUNCTUATION     : %s\n",yytext);}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
