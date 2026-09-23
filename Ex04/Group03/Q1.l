%{
#include "y.tab.h"
%}
%%
"(" {return '(';}
")" {return ')';}
\n {return 0;}
[ \t]+ {}
. {return yytext[0];}
%%
int yywrap(){return 1;}
