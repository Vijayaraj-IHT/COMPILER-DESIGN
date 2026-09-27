%{
#include "y.tab.h"
%}
%%
class {return CLASS;}
int {return INT;}
id {return ID;}
"{" {return '{';}
"}" {return '}';}
";" {return ';';}
[ \t\n]+ {}
. {return yytext[0];}
%%
int yywrap(){return 1;}
