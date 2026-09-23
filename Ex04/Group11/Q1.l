%{
#include "y.tab.h"
%}
%%
id {return ID;}
num {return NUM;}
"<" {return '<';}
">" {return '>';}
"<=" {return LE;}
">=" {return GE;}
"==" {return EQ;}
"!=" {return NE;}
\n {return 0;}
[ \t]+ {}
. {return yytext[0];}
%%
int yywrap(){return 1;}
