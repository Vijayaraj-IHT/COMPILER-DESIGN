%{
#include "y.tab.h"
%}
%%
true {return TRUE;}
false {return FALSE;}
and {return AND;}
or {return OR;}
not {return NOT;}
"(" {return '(';}
")" {return ')';}
\n {return 0;}
[ \t]+ {}
. {return yytext[0];}
%%
int yywrap(){return 1;}
