# This is a makefile that builds the Kildin Sámi morphological parser
# *****************************************************************

# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon sjd.save

isjd.fst: ../bin/isjd.fst
../bin/isjd.fst: ../bin/sjd.fst
	@echo
	@echo "*** Building the inverse isjd.fst ***"
	@echo
	@printf "load ../bin/sjd.save \n\
	invert net \n\
	save stack ../bin/isjd.fst \n\
	quit \n" > ../../tmp/isjd-fst-script
	@xfst < ../../tmp/isjd-fst-script
	@rm -f ../../tmp/isjd-fst-script


# This goal is to build the final analyser. It depends on all the files.

sjd.fst: ../bin/sjd.fst
../bin/sjd.fst: ../bin/sjd.save ../bin/caseconv.fst 
	@echo
	@echo "*** Building sjd.fst ***" ;
	@echo
	@printf "read regex [[@\"../bin/sjd.save\"] .o. \
	[@\"../bin/caseconv.fst\"]] ; \n\
	save stack ../bin/sjd.fst \n\
	quit \n" > ../../tmp/sjd-fst-script
	@xfst < ../../tmp/sjd-fst-script
	@rm -f ../../tmp/sjd-fst-script


# The second goal is to build the caseconv.fst file
# This goal depends on case.regex

caseconv.fst: ../bin/caseconv.fst
../bin/caseconv.fst: case.regex
	@echo
	@echo "*** Building caseconv.fst ***" ;
	@echo
	@printf "read regex < case.regex \n\
	save stack ../bin/caseconv.fst \n\
	quit \n" > ../../tmp/caseconv-script
	@xfst < ../../tmp/caseconv-script
	@rm -f ../../tmp/caseconv-script





sjd.save: ../bin/sjd.save
../bin/sjd.save: ../bin/twol-sjd.bin sjd-lex.txt adj-sjd-lex.txt \
adv-sjd-lex.txt conjunction-sjd-lex.txt interjection-sjd-lex.txt \
noun-sjd-lex.txt numeral-sjd-lex.txt pp-sjd-lex.txt \
pronoun-sjd-lex.txt punct-sjd-lex.txt verb-sjd-lex.txt 
	@echo
	@echo "*** Building sjd.save ***" ;
	@echo
	printf "compile-source sjd-lex.txt adj-sjd-lex.txt \
	adv-sjd-lex.txt conjunction-sjd-lex.txt interjection-sjd-lex.txt \
	noun-sjd-lex.txt numeral-sjd-lex.txt pp-sjd-lex.txt \
	pronoun-sjd-lex.txt punct-sjd-lex.txt verb-sjd-lex.txt  \n\
	read-rules ../bin/twol-sjd.bin \n\
	compose-result \n\
	save-result ../bin/sjd.save \n\
	quit \n" > ../../tmp/sjd-save-script
	@lexc -utf8 < ../../tmp/sjd-save-script
	rm -f ../../tmp/sjd-save-script

twol-sjd.bin: ../bin/twol-sjd.bin


# The second goal is to build twol-sjd.bin
# This goal depends on twol-sjd.txt

../bin/twol-sjd.bin: twol-sjd.txt
	@echo
	@echo "*** Building twol-sjd.bin ***" ;
	@echo
	@printf "read-grammar twol-sjd.txt \n\
	compile \n\
	save-binary ../bin/twol-sjd.bin \n\
	quit \n" > ../../tmp/twol-sjd-script
	@twolc -utf8 < ../../tmp/twol-sjd-script
	@rm -f ../../tmp/twol-sjd-script

clean:
	@rm -f ../bin/*.bin ../bin/*.fst ../bin/*.save


