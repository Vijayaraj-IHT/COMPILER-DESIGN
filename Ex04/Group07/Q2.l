%{
#include "y.tab.h"
%}
%%
id {return ID;}
"(" {return '(';}
")" {return ')';}
"," {return ',';}
";" {return ';';}
[ \t\n]+ {}
. {return yytext[0];}
%%
int yywrap(){return 1;}
