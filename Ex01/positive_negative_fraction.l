%{
#include <stdio.h>
%}
%%
-[0-9]+"/"[0-9]+|[0-9]+"/"[0-9]+ {printf("%s -> FRACTION\n",yytext);}
-[0-9]+\.[0-9]+|[0-9]+\.[0-9]+ {
 if(yytext[0]=='-') printf("%s -> NEGATIVE\n",yytext);
 else printf("%s -> POSITIVE\n",yytext);
}
-[0-9]+|[0-9]+ {
 if(yytext[0]=='-') printf("%s -> NEGATIVE\n",yytext);
 else printf("%s -> POSITIVE\n",yytext);
}
\n {printf("\n");}
[ \t]+
. {printf("Invalid: %s\n",yytext);}
%%
int yywrap(){return 1;}
int main(){yylex(); return 0;}
