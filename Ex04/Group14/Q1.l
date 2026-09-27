%{
#include "y.tab.h"
%}
%%
if {return IF;}
then {return THEN;}
else {return ELSE;}
id {return ID;}
num {return NUM;}
"=" {return '=';}
";" {return ';';}
[ \t\n]+ {}
. {return yytext[0];}
%%
int yywrap(){return 1;}
