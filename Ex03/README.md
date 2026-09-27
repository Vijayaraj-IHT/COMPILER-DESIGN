# Ex03 - Lexical Analyzer using DFA

Each Group has two C programs:
- a_*.c - lexical analyzer task DFA
- b_*.c - classical DFA problem

## Group Details
Group01: a_identifier.c (letter followed by letters/digits) + b_abn_dfa.c (ab^n n>=0)
Group02: a_unsigned_integer.c (digits) + b_aorb_plus_b.c ((a|b)+b)
Group03: a_signed_integer.c (+/- digits) + b_ab_star_b.c ((ab)*b)
Group04: a_unsigned_real.c (12.34) + b_ends_with_abb.c (ends with abb)
Group05: a_signed_real_exp.c (-12.34E+5) + b_an_bm.c (a^n b^m n>=1 m>=1)
Group06: a_keyword_identifier.c (keyword vs identifier) + b_even_a_odd_b.c (even a odd b)
Group07: a_single_comment.c (//) + b_no_aa.c (no aa substring)
Group08: a_multi_comment.c (/* */) + b_contains_aab.c (contains aab)
Group09: a_relational_operator.c (< <= > >= == !=) + b_start_end_same.c (start and end same)
Group10: a_assign_arith_operator.c (= += etc) + b_even_length.c (even length)
Group11: a_string_literal.c ("hello") + b_abn_dfa2.c (ab^n variant)
Group12: a_char_literal.c ('a') + b_no_101.c (binary no 101)
Group13: a_hex_number.c (0x1A3F) + b_third_from_end_a.c (third from end is a)
Group14: a_octal_number.c (0175) + b_exactly_two_a.c (exactly two a's)

Compile: gcc file.c -o a.out && ./a.out
