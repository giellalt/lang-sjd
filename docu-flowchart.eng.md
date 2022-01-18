# A flowchart over the sjd files for morphological parsing

This flowchart gives an overview of how the sjd sourcefiles are related.
In principle, the other lg files are arranged in the same way.

    The main lex file            Separate lex files for different POS (parts
                                                                   of speech)
    |----------------------|    |------------------|
    |     sjd-lex.txt      |    | noun-sjd-lex.txt |
    |                      |    |  viessu GOAHTI ; |  From the Root lexicon, there
    |     Root   -------------> |  ...             |  are pointers to each POS.
    |                      |    |        |         |  The files for nouns, verbs and
    |     LEXICON GOAHTI <---------------|         |  adjectives point back to the
    |      +N DEVNVCASE ;  |    |                  |  sjd-lex.txt file, and are di-
    |      ...             |    |------------------|  rected to their respective
    |                      |                          sublexica.
    |                      |    |-------------------|
    |                     --->  | verb-sjd-lex.txt  | (the auxiliary verbs are
    |                   <--------- ...              | also found in the verb file)
    |                      |    |-------------------|
    |                      |
    |                      |    |-------------------|
    |                     --->  | adj-sjd-lex.txt   |
    |                   <--------- ...              |
    |                      |    |-------------------|
    |                      |
    |                      |
    |                     --->  |-------------------| The other lex files contain
    |                  <- - - - - closed-sjd-lex.txt| closed classes. They are smal
    |----------------------|    | LEXICON Pronoun   | ler, and all the sublexica
                                |  Personal ;       | are in the same file, not in
                                |                   | the sjd-lex file (well, some
                                | LEXICON Personal  | point to some sjd-lex sub-
                                |  ...              | lexica). Other files are pp-
                                |-------------------| lex.txt, etc. All in all
                                                      there are ca. 10 lex files.

    This is compiled together with the        ||
    twol rules. These rules contain the       ||
    (morpho)phonological processes,           ||
    consonant gradation, etc.                 \/


    |------------|    |------------|      |------------|   The sjd.save file is
    |twol-sjd.txt| => |twol-sjd.bin|  =>  |  sjd.save  |   compiled in lexc, and
    |------------|    |------------|      |------------|   is the merger of the
                                                           lex files and the rule
    Here are the      After compi-                         file twol-sjd.bin
    rules them-       lation in twolc           ||
    selves            they are in this          ||
                      binary file               ||
                                                ||
    Then comes preprosessor files:              \/

    |----------|    |------------|         ||=========||  This is the final morpho-
    |case.regex| => |caseconv.fst| ======> || sjd.fst ||  logical parser for
    |----------|    |------------|         ||=========||  North Sami.

    The case.regex file is com-
    piled in xfst. The preprocessor
    itself, tok.fst, is not shown here.
