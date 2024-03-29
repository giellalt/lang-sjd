# Morphophonology for the Kildin analyser

For the (paradigmatic and regular) morphophonological processes we use [the twol technology](http://www.cis.upenn.edu/~cis639/docs/twolc.html). Here is [the Kildin twol file](https://gtsvn.uit.no/langtech/trunk/gt/sjd/src/twol-sjd.txt).

Paradigmatic morphophonological processes concern:
* stem consonants
    - consonant gradation
    - (de-)palatalization
* stem vowels (i.e. ablaut).

Regular (phonological) processes concern:
* stem vowels (i.e. umlaut)
* second syllable vowels (deletion)
* suffixes (vowel deletion or consonant insertion) 

The TWOLC file contains the following rules

* Consonant gradation rules:
    - "Quantitative CG"
    - "Quantitative CG 2-Cns Cluster"
    - "Quantitative CG 3-Cns Cluster"
* Vowel rules:
    - "Epenthetic vowel deletion"
    - "ue Diphtongisation"
* Palatalisation rules:
    - "Palatalised Suffix Vowel"
    - "Palatal Mark Deletion"

Note that these rules are not at all finished. 

The consonant gradation rules cover only some cases: 

* вв:в, лл:л, сс:с, зз:з
* дт:т, рр:р
* ррн:рн

The palatalisation rules governs the alternation between word-final *consonant + ь* and *consonant + palatal vowel*.
