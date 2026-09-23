%{
#include "y.tab.h"
%}
%%
id {return ID;}
"+" {return '+';}
"*" {return '*';}
"(" {return '(';}
")" {return ')';}
\n {return 0;}
[ \t]+ {}
. {return yytext[0];}
%%
int yywrap(){return 1;}
