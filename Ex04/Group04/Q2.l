%{
#include "y.tab.h"
%}
%%
do {return DO;}
while {return WHILE;}
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
