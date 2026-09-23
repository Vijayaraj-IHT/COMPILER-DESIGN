%{
#include "y.tab.h"
%}
%%
int {return INT;}
dint {return DINT;}
id {return ID;}
num {return NUM;}
"=" {return '=';}
"+" {return '+';}
"," {return ',';}
";" {return ';';}
"(" {return '(';}
")" {return ')';}
"{" {return '{';}
"}" {return '}';}
[ \t\n]+ {}
. {return yytext[0];}
%%
int yywrap(){return 1;}
