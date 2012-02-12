# Dette skriptet tester at nesten alle lemmaene i verb-sjd-lex.txt kan genereres. De som ikke kan genereres, kopieres til missingverbLemmas.txt

grep ";" verb-sjd-lex.txt | grep -v "^\!" | egrep -v '(STRAYFORMS|ENDLEX|\+V)' | tr ":+" " " | cut -d " " -f1 | tr -d "#" | sort -u > verbs
cat verbs | sed 's/$/+V+Inf/' | $LOOKUP $GTHOME/gt/sjd/bin/isjd.fst | cut -f2 | grep -v "V+" | grep -v "^$" | sort -u > analverbs 
comm -23 verbs analverbs > missingverbLemmas.txt
rm *verbs
open missingverbLemmas.txt
