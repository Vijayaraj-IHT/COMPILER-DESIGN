# COMPILER-DESIGN Lab - 23GE581

Structured code snippets without comment lines.

## Structure
- Ex01/ - 19 unique Lex programs + Group01-Group14 folders (common + 4 per group)
- Ex02/ - 40 unique Lex programs (lexical analysis with left/right context, start states) + Group01-Group14
- Ex03/ - DFA implementation in C
  - Group01-Group14 each contains a_*.c (lexical analyzer task) and b_*.c (classical DFA)
- Ex04/ - Lex + YACC parsers
  - Group01-Group14 each contains Q1.l, Q1.y, Q2.l, Q2.y

## Compilation

### Lex (Ex01, Ex02)
```
flex file.l
gcc lex.yy.c -lfl -o a.out
./a.out [inputfile]
# or
./a.out < input.txt
```

### DFA in C (Ex03)
```
gcc file.c -o a.out
./a.out
```

### Lex + YACC (Ex04)
```
flex Q1.l
yacc -d Q1.y
gcc lex.yy.c y.tab.c -lfl -o parser
./parser
# or
echo "input" | ./parser
```

## Ex01 Mapping
Common: common_word_char_line_count.l
- longest_string.l
- c_subset_lexical_analyzer.l
- positive_negative_fraction.l
- sql_select_tokenizer.l
- eliminate_whitespace_comments.l
- extract_email_url.l
- remove_html_tags.l
- increment_numbers.l
- list_urls_html.l
- relational_operators_meaning.l
- caesar_encrypt.l
- vowel_consonant_count.l
- c_program_lexemes.l
- capitalize_5char_words.l
- single_space.l
- valid_c_identifier.l
- binary_palindrome.l
- ab_palindrome.l

See Ex01/README.md for group-wise mapping.

## Ex02 Mapping
See Ex02/README.md for 14 groups x 3 questions.

## Ex03 Mapping
Group1: valid identifier + DFA ab^n
Group2: unsigned integer + DFA (a|b)+b
Group3: signed integer + DFA (ab)*b
Group4: unsigned real + DFA ending with abb
Group5: signed real with exponent + DFA a^n b^m
Group6: keyword vs identifier + DFA even a odd b
Group7: single-line comment + DFA no aa substring
Group8: multi-line comment + DFA contains aab
Group9: relational operator + DFA start/end same
Group10: assignment/arithmetic operator + DFA even length
Group11: string literal + DFA ab^n (variant)
Group12: char literal + DFA no 101 substring
Group13: hex number + DFA third from end is a
Group14: octal number + DFA exactly two a's

## Ex04 Mapping
Group1: ab^n grammar + for loop parser
Group2: LALR S->L=R|*R|id + while loop
Group3: balanced parentheses + if-else
Group4: arithmetic E=E+T|T... + do-while
Group5: a^n b^2n (abb,aabbbb) + switch-case
Group6: [id,id,id] + for with nested if
Group7: even palindrome abba + function call id(id,id,id);
Group8: id=id+num; + while with nested for
Group9: a^n b^n c^m (aabbcc) + array declaration int id[num];
Group10: boolean true and (false or true) + *id=id+num;
Group11: relational id<num + struct declaration
Group12: (ab)^n + class declaration
Group13: (((id))) + ternary id=id?num:id;
Group14: dangling else if id then... + function definition int id(int id,dint id){...}
