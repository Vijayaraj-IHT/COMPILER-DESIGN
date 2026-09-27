%{
#include "y.tab.h"
%}
%%
id {return ID;}
num {return NUM;}
"=" {return '=';}
"+" {return '+';}
";" {return ';';}
[ \t\n]+ {}
. {return yytext[0];}
%%
int yywrap(){return 1;}
