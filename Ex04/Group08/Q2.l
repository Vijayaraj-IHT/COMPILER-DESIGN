%{
#include "y.tab.h"
%}
%%
while {return WHILE;}
for {return FOR;}
id {return ID;}
num {return NUM;}
"<" {return '<';}
"=" {return '=';}
"+" {return '+';}
";" {return ';';}
"(" {return '(';}
")" {return ')';}
"{" {return '{';}
"}" {return '}';}
[ \t\n]+ {}
. {return yytext[0];}
%%
int yywrap(){return 1;}
