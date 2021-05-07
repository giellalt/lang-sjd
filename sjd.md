
no +CC: K ; because complex CC's go into the lexicon



no +CS: K ; because complex CS's go into the lexicon


Check this 
Check this, adverb?
Check this, adverb?




# Kildin Saami nouns

 * LEXICON Noun 


## class1
кӯсс 1DA "ель / fir" ;   кӯсс xx-->y NEEDS a new subclass later, cf. сс-->с

class1 orth. дт/ill. ӭ

## 2. declension (class 2) ! like 1. decl., but with C-clusters
* Ablaut
 * куэсськ 2D "тётя / aunt" ; 

## 3. declension (class 7) no stem gradation

## 4. declension (classes 3, 5) !these are two different declesions: the "puaz-class" and the "cyza-class"

## 5. declension (classes 4, 6, 9)

## 6. declension (classes )

## ELAN dump
These words are added during testing work with the ELAN-FST script
They should be given correct declension classes later

## Oahpa dump
These words are added from sjdoahpa.
Some of them are unfortunaely plural forms, and should be removed 
or put in singular.
Then they should be given correct declension class


# Kildin Saami verbs


 * **LEXICON Verb   **


 * **LEXICON NegAux   **








































 * **LEXICON Verbstems   **








## ELAN dump
These words are added during testing work with the ELAN-FST script
They should be given correct declension classes later


Just dumping Oahpa verbs in the rest of the file


 * **LEXICON Adjective   **











Just dumping the oahpa adjectives here


# Kildin Sámi TWOLC file

## Symbol declarations
### Alphabet

 *   а А ӓ Ӓ а̄ А̄ б Б в В г Г д Д   
 *   е Е ё Ё е̄ Е̄ ё̄ Ё̄ ж Ж з З һ Һ  
 *   и И ӣ Ӣ й Й ҋ Ҋ ј Ј к К л Л  
 *   ӆ Ӆ м М ӎ Ӎ н Н ӊ Ӊ ӈ Ӈ о О  
 *   о̄ О̄ п П р Р ҏ Ҏ с С т Т у У  
 *   ӯ Ӯ ф Ф х Х ц Ц ч Ч ш Ш щ Щ  
 *   ъ Ъ ы Ы ь Ь ъ Ъ ҍ Ҍ э Э ӭ Ӭ  
 *   э̄ Э̄ ю Ю ю̄ Ю̄ я Я я̄ Я̄          


### Trigger symbols
 *   %^1VOW:0		 Vow trigger for epenthetic -э-
 *   %^2VOW:0		 Vow trigger 
 *   %^3VOW:0		 Vow trigger 
 *   %^4VOW:0		 Vow trigger 
 *   %^5VOW:0		 Vow trigger 
 *   %^VOWSH:0              
 *   %^WG:0		 for weak consonant stem gradation 
 *   %^EPHV:0          
 *   %^DI:0              
 *   %^CLPAL:0     
 *   %^CLDPAL:0	 for depalatalizing consonant stems
 *   %^DPAL:0		 for depalatalizing consonant stems
 *   %^MON:0    
 *   %^PAL:0		 for palatalizing consonsant stems




## Sets
 *  C  = б Б в В г Г д Д ж Ж з З һ Һ й Й ҋ Ҋ ј Ј к К л Л ӆ Ӆ м М ӎ Ӎ н Н ӊ Ӊ ӈ Ӈ п П р Р ҏ Ҏ с С т Т ф Ф х Х ц Ц ч Ч ш Ш щ Щ ;  
 *  V  = а А ӓ Ӓ а̄ А̄ е Е е̄ Е̄ ё Ё ё̄ Ё̄ и И ӣ Ӣ о О о̄ О̄ у У ӯ Ӯ ы Ы э Э ӭ Ӭ э̄ Э̄ ю Ю ю̄ Ю̄ я Я я̄ Я̄ ;  
 *  PALMARK = ь Ь ҍ Ҍ ;  
 *  VPLOS = г Г ;  
 *  VLPLOS = к К ;  
 *  PALCON = ж Ж й Й ҋ Ҋ ј Ј ч Ч ;   can only by followed by PALVOW !so-called "palatalized C"
 *  PALVOW = е Е е̄ Е̄ ё Ё ё̄ Ё̄ и И ӣ Ӣ ю Ю ю̄ Ю̄ я Я я̄ Я̄ ;  so-called "palatalized V"
 *  HPLVOW = ӓ Ӓ ӭ Ӭ ;   so-called "half-palatalized V"
 *  NPLVOW = а А а̄ А̄ о О о̄ О̄ у У ӯ Ӯ ы Ы э Э э̄ Э̄ ;   so-called "non-palatalized V"

 *  Dummy  = %^WG %^DI %^DPAL %^MON %> %^PAL %^CLPAL ;  


# Rule section

**Quantitative CG xxy:xy (of nonpal cлusters)**  e.g. са̄ррн:са̄рн, ко̄ллм:ко̄лм, сыййт:сыйт, etc. 

**Qualitative CG xx:y (of voiced affricates)      ** i.e. джь : жь, дзь : зь, дз : з

**Quantitative CG (of continuants)**  

**ue>ua Ablaut**  

**Epenthetic vowel deletion (npal vowels)** e.g. ко̄рэб:ко̄рбэсьт, etc. шоабаш-:шоабш-






# Symbol affixes






# Kildin Saami noun inflection










"class1" = monosyllabic/non-palatalized inflection foot, str-wk, no ablaut/umlaut, palatalization in Ill.Sg
 LEXICON 1DA  is orthographic subclass with xx--> x



 LEXICON 1DB  is orthographic subclass with xy-->x and "half-palatalization" in Ill.Sg;
OBS! SgIllSufJE vs. SgIllSufHalfE does not mark a true morphological subclass, but is due to orthographic conventions



Lexica 2D etc are classes from Kuruch dictionary.
It is unclear whether this is the correct classification

 LEXICON 2D  like 1D ?  these are just dummy for the moment


 LEXICON 3D 


 LEXICON 4D   is contract

 LEXICON 4DА  


 LEXICON 5D   goes to 1DA

 LEXICON OAHPA_N   is all the words from OAHPA_N, we just point them to 1DA.

 LEXICON ELAN_N   is all the words from ELAN_N, we just point them to 1DA.


## Case affixes

 LEXICON SgNomSuf 


 LEXICON SgGenAccSuf 

 LEXICON EssSuf 
Превр. !check here and elsewhere whether the palatal-mark-deletion-rule is really needed here (it's already included above)

 LEXICON ParSufE  

 LEXICON ParSufHalfE  


 LEXICON SgLocSuf  

 LEXICON SgIllSufA  

 LEXICON SgIllSufE 

 LEXICON SgIllSufJE 

 LEXICON SgIllSufHalfE 

 LEXICON SgAbeSuf 


 LEXICON SgComSuf 

 LEXICON PlNomSuf 

 LEXICON PlGenSuf 

 LEXICON PlAccSuf 

 LEXICON PlIllSuf 

 LEXICON PlLocSuf 

 LEXICON PlAbeSuf 

 LEXICON PlComSuf 

# Kildin Sámi morphological analyser                     !

 # Definitions for Multichar_Symbols






 * +Symbol = independent symbols in the text stream, like £, €, ©

 * +Use/Elid    = Elided substandard (Иванович~Иваныч, новее~новей, чтобы~чтоб, или~иль, коли~коль)
 * +Use/Orth	 = Orthographic substandard



## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morphological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:
 |  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.
 |  @P.CmpFrst.FALSE@ | Require that words tagged as such only appear first
 |  @D.CmpPref.TRUE@ | Block such words from entering ENDLEX
 |  @P.CmpPref.FALSE@ | Block these words from making further compounds
 |  @D.CmpLast.TRUE@ | Block such words from entering R
 |  @D.CmpNone.TRUE@ | Combines with the next tag to prohibit compounding
 |  @U.CmpNone.FALSE@ | Combines with the prev tag to prohibit compounding
 |  @P.CmpOnly.TRUE@ | Sets a flag to indicate that the word has passed R
 |  @D.CmpOnly.FALSE@ | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.
 |  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
 |  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.






We describe here how abbreviations are in Kildin Sami are read out, e.g.
for text-to-speech systems.

For example:

 * s.:syntynyt # ;  
 * os.:omaa% sukua # ;  
 * v.:vuosi # ;  
 * v.:vuonna # ;  
 * esim.:esimerkki # ; 
 * esim.:esimerkiksi # ; 



Vowel shortening in compounds in Kildin Saami

Linguistics behind this file: 
In compounding non-initial long vowels shorten.









Divvun & Giellatekno - open source grammars for Sámi and other languages


































































































