%{
#include "y.tab.h"
%}
%%
"*" {return '*';}
"=" {return '=';}
id {return ID;}
[ \t\n]+ {}
. {return yytext[0];}
%%
int yywrap(){return 1;}
