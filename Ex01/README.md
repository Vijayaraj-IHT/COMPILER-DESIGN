# Ex01 - Common and Group Tasks

## Common Question
common_word_char_line_count.l - count words, chars, lines

## Unique Tasks (19 files)
- longest_string.l - longest string without white spaces
- c_subset_lexical_analyzer.l - C subset lexical analyzer
- positive_negative_fraction.l - positive, negative, fractions
- sql_select_tokenizer.l - SQL select with where, group by
- eliminate_whitespace_comments.l - eliminate whitespace and /* */ comments
- extract_email_url.l - extract emails and URLs to separate files
- remove_html_tags.l - remove HTML tags
- increment_numbers.l - Add 1 to integers, 0.5 to floats
- list_urls_html.l - list URLs in html page
- relational_operators_meaning.l - relational operators meaning in words
- caesar_encrypt.l - Caesar shift 3 encryption
- vowel_consonant_count.l - vowels and consonants count
- c_program_lexemes.l - divide C program into lexemes <kw,void> <id,main> etc
- capitalize_5char_words.l - capitalize first letter of 5-char words
- single_space.l - replace multiple spaces/tabs with single space
- valid_c_identifier.l - valid C identifier check
- binary_palindrome.l - binary palindrome strings
- ab_palindrome.l - palindrome over {a,b}

## Group Mapping
Group01: longest_string, c_subset_lexical_analyzer, positive_negative_fraction, sql_select_tokenizer
Group02: eliminate_whitespace_comments, extract_email_url, remove_html_tags, increment_numbers
Group03: list_urls_html, relational_operators_meaning, caesar_encrypt, vowel_consonant_count
Group04: c_program_lexemes, capitalize_5char_words, single_space, valid_c_identifier
Group05: binary_palindrome, longest_string, c_subset_lexical_analyzer, positive_negative_fraction
Group06: ab_palindrome, eliminate_whitespace_comments, extract_email_url, remove_html_tags
Group07: sql_select_tokenizer, list_urls_html, relational_operators_meaning, caesar_encrypt
Group08: increment_numbers, c_program_lexemes, capitalize_5char_words, single_space
Group09: vowel_consonant_count, binary_palindrome, longest_string, c_subset_lexical_analyzer
Group10: valid_c_identifier, ab_palindrome, eliminate_whitespace_comments, extract_email_url
Group11: positive_negative_fraction, sql_select_tokenizer, relational_operators_meaning, list_urls_html
Group12: remove_html_tags, increment_numbers, c_program_lexemes, capitalize_5char_words
Group13: caesar_encrypt, vowel_consonant_count, binary_palindrome, longest_string
Group14: single_space, valid_c_identifier, ab_palindrome, eliminate_whitespace_comments

Each Group folder contains copies of relevant .l files plus common_word_char_line_count.l

Compile: flex file.l && gcc lex.yy.c -lfl && ./a.out input.txt
