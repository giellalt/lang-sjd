#!/usr/bin/perl -w
use utf8 ;

# Simple script to convert csv to xml
# For input/outpus examples, see below.


print STDOUT "<root>\n";

while (<>) 
{
	chomp ;
	my ($lemma, $pos, $semclasses, $rtranslations, $etranslations) = split /_/ ;
	my @semclasses = split /, /, $semclasses ;
	my @rtranslations = split /, /, $rtranslations ;
	my @etranslations = split /, /, $etranslations ;
	print STDOUT "  <entry>\n";
	print STDOUT "    <lemma>$lemma</lemma>\n";
	print STDOUT "    <pos class=\"$pos\"/>\n";
	print STDOUT "    <translations>\n";
	foreach $tr (@rtranslations)
	{
		print STDOUT "      <tr xml:lang=\"rus\">$tr</tr>\n";
	}
	foreach $tr (@etranslations)
	{
		print STDOUT "      <tr xml:lang=\"eng\">$tr</tr>\n";
	}
	print STDOUT "    </translations>\n";

	print STDOUT "    <semantics>\n";
	foreach $sem (@semclasses) {
		print STDOUT "      <sem class=\"$sem\"/>\n";
	}
	print STDOUT "    </semantics>\n";
	print STDOUT "    <sources>\n";
	print STDOUT "      <book name=\"Saamkilsyjjt\"/>\n";
	print STDOUT "    </sources>\n";

	print STDOUT "  </entry>\n";
}

print STDOUT "</root>\n";




# Example input:
#
# се̄ййп_N_ANIMAL_хвост длинный, длинный хвост
# кӣдтжэва_N_ANIMAL, LIVING-PLACE_животное домашнее, домашнее животное
# оа̄к_N_ANIMAL_лосиха


#Target output:
#
#  <entry>
#    <lemma>на̄ввьт</lemma>
#    <pos class="N"/>
#    <translations>
#      <tr xml:lang="rus">животное домашнее</tr>
#      <tr xml:lang="rus">домашнее животное</tr>
#    </translations>
#    <semantics>
#      <sem class="ANIMAL"/>
#      <sem class="LIVING-PLACE"/>
#    </semantics>
#    <sources>
#      <book name="l1"/>
#    </sources>
#  </entry>
