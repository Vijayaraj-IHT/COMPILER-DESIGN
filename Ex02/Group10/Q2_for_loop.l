%{
#include <stdio.h>
#include <string.h>
int semi=0;
char buf[1024];
int bi=0;
%}
%x FOR
%%
"for" {printf("KEYWORD         : %s\n",yytext);}
"(" {printf("PUNCTUATION     : %s\n",yytext); semi=0; bi=0;}
";" {
 if(semi==0){buf[bi]='\0'; printf("INITIALIZATION  : %s\n",buf); bi=0; semi++;}
 else if(semi==1){buf[bi]='\0'; printf("CONDITION       : %s\n",buf); bi=0; semi++;}
 printf("PUNCTUATION     : %s\n",yytext);
}
")" {
 if(semi==2){buf[bi]='\0'; printf("UPDATE          : %s\n",buf); bi=0;}
 printf("PUNCTUATION     : %s\n",yytext); semi=0;
}
"{"|"}" {printf("PUNCTUATION     : %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("IDENTIFIER      : %s\n",yytext); if(semi<3 && bi<900){strcpy(buf+bi,yytext); bi+=yyleng;}}
[0-9]+ {printf("INT CONSTANT    : %s\n",yytext); if(semi<3 && bi<900){strcpy(buf+bi,yytext); bi+=yyleng;}}
"<"|">"|"<="|">="|"=="|"!=" {printf("RELATIONAL OP   : %s\n",yytext); if(semi<3 && bi<900){strcpy(buf+bi,yytext); bi+=yyleng;}}
"="|"+"|"-"|"++" {printf("OPERATOR        : %s\n",yytext); if(semi<3 && bi<900){strcpy(buf+bi,yytext); bi+=yyleng;}}
[ \t\n]+ {if(semi<3 && bi<900 && bi>0){buf[bi]=' '; bi++;}}
. {}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
