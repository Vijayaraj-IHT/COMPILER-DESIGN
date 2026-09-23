%{
#include "y.tab.h"
%}
%%
struct {return STRUCT;}
int {return INT;}
id {return ID;}
"{" {return '{';}
"}" {return '}';}
";" {return ';';}
[ \t\n]+ {}
. {return yytext[0];}
%%
int yywrap(){return 1;}
