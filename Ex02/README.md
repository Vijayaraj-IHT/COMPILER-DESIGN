# Ex02 - Lexical Analysis using Lex tool

40 unique programs, grouped into 14 groups x 3 questions.

## Files
- arithmetic_statement.l - a = b + c3 * 2.5 - d;
- do_while.l - do { x = x + 1; } while (x < 10 && flag);
- if_right_context.l - 'if' as keyword only when followed by '(' using /
- print_tokens.l - print all tokens with type
- data_type_declarations.l - unsigned long int etc
- struct_tag_left_context.l - struct tag after struct using start states
- function_definition.l - return type, function name, parameter list
- struct_tag_combined_context.l - struct tag left after struct right before {
- count_keywords_identifiers_operators_constants.l - count
- if_else.l - if...else with relational, logical, bitwise
- assignment_target_right_context.l - variable only when followed by = using right context
- assignment_compound.l - =, +=, -=, *= etc
- variable_declaration.l - initialized vs uninitialized
- comment_state.l - comment state after /* using start states
- keyword_vs_identifier.l - keyword vs user-defined
- function_call.l - function name and arguments
- fortran_do_ambiguity.l - DO 5 I = 1,25 vs DO 5 I = 1 using right context
- count_string_char_literals.l - count string and char literals
- while_loop.l - while with <= && ! etc
- header_filename_left_context.l - header filename after #include using start states
- array_declaration.l - array name, dimensions, initializer
- function_name_right_context.l - function name only when followed by '('
- logical_expression.l - && || !
- pointer_declaration.l - pointer decl and dereferencing
- goto_label_left_context.l - label reference after goto
- identify_header_files.l - header files included
- for_loop.l - for loop separate init, condition, update
- template_brackets_left_context.l - template < > vs relational
- classify_numeric_constants.l - int, float, hex, octal
- switch_case.l - switch case break default
- pointer_vs_multiplication_right_context.l - * as pointer vs multiplication
- count_comments.l - single and multi-line comments count
- struct_union_declaration.l - struct/union declaration
- string_state_left_context.l - inside string literal using start states
- relational_expression.l - < > <= >= == !=
- nested_if_else.l - nested if else if else ladder
- label_right_context.l - label followed by : using right context
- preprocessor_directives.l - #include #define #ifdef etc
- typedef_statement.l - typedef
- dot_member_vs_decimal.l - . as member access vs decimal point using start states

## Group Mapping
Group01: arithmetic_statement, do_while, if_right_context
Group02: print_tokens, data_type_declarations, struct_tag_left_context
Group03: arithmetic_statement, function_definition, struct_tag_combined_context
Group04: count_keywords_identifiers_operators_constants, if_else, assignment_target_right_context
Group05: assignment_compound, variable_declaration, comment_state
Group06: keyword_vs_identifier, function_call, fortran_do_ambiguity
Group07: count_string_char_literals, while_loop, header_filename_left_context
Group08: assignment_compound, array_declaration, function_name_right_context
Group09: logical_expression, pointer_declaration, goto_label_left_context
Group10: identify_header_files, for_loop, template_brackets_left_context
Group11: classify_numeric_constants, switch_case, pointer_vs_multiplication_right_context
Group12: count_comments, struct_union_declaration, string_state_left_context
Group13: relational_expression, nested_if_else, label_right_context
Group14: preprocessor_directives, typedef_statement, dot_member_vs_decimal

Each Group folder contains Q1,Q2,Q3 files.
