# Ex04 - Lex and YACC

Each Group has Q1 and Q2, each with .l and .y

## Group Details
Group01 Q1: ab^n grammar - S -> A B+, valid ab, abb
       Q2: for loop with assignment body - for (id=num; id<num; id=id+num) { id=id+num; }

Group02 Q1: LALR S->L=R|*R|id, R=>L - parse * id = id
       Q2: while loop with assignment body - while (id<num) { id=id+num; }

Group03 Q1: balanced parentheses (()())
       Q2: if-else with assignment - if (id<num) {id=num;} else {id=id-num;}

Group04 Q1: arithmetic E=E+T|T, T=T*F|F, F=(E)|id - id+id*id
       Q2: do-while - do {id=id+num;} while (id<num);

Group05 Q1: a^n b^2n - abb, aabbbb
       Q2: switch-case with assignment and break

Group06 Q1: [id,id,id] bracketed id-list
       Q2: for loop containing nested if

Group07 Q1: even-length palindrome abba - S->aSa|bSb|aa|bb
       Q2: function call id(id,id,id);

Group08 Q1: id=id+num; assignment-expression
       Q2: while containing nested for

Group09 Q1: a^n b^n c^m - aabbcc
       Q2: array declaration int id[num];

Group10 Q1: boolean true and (false or true)
        Q2: pointer *id=id+num;

Group11 Q1: relational id<num
        Q2: struct declaration struct id { int id; int id; };

Group12 Q1: (ab)^n - ababab
        Q2: class declaration class id { int id; int id; }

Group13 Q1: (((id))) nested parentheses
        Q2: ternary id=id?num:id;

Group14 Q1: dangling else if id then id=id; else id=num;
        Q2: function definition int id(int id,dint id){id=id+num;}

Compile:
flex Q1.l
yacc -d Q1.y
gcc lex.yy.c y.tab.c -lfl -o parser
./parser
