The  inc directory contains "incoming" files of different formats. Once checked in,
they should NOT be changed.

(1) kilrus_test_dict.xml

 - this is an old file of Ciprian's for testing the conversion of the
    Kildin-Russian dictionary into Giellatekno's dictionary XML-structure

 - if possible, we should try to apply the Giellatekno XML-structure on
    sjdrus-rdk_unicode20090924.xml

 - it seems especially important (but probably very complicated to
    achieve?) to convert the "linked subentries" in the original
    dictionary (i.e. those empty entries which are only followed by a
    reference to the respective main entry) into true dictionary entries
    (followed by grammatical info, translation, etc.)

----------------------------------------------------------

(2) sjdrus_rdk_unicode.xml

 - this is the complete textbase of the Kildin-Russian dictionary with
    different formatting tags still included in the "translation" element.

----------------------------------------------------------

(3) sjdrus_rdk_unicode20090924.xml

 - this is the complete textbase of the Kildin-Russian dictionary
    after a preliminary manual conversion of different formatting tags
    into XML tags.

 - note that many elements do still not open or close with the proper
    tags (@cip: I don't belive that! It should! I will check it as
    soon as possible!). Perhaps further structuring can be done with
    help of regular expression search-replace?

 - the present (rudimentary) XML structure is similar to the structure
    in the printed dictionary (Kuruč et al. 1985), but should ideally be
    converted into Giellatekno's XML-structure.

 - it seems especially important (but probably very complicated to
    achieve?) to convert the "linked subentries" in the original
    dictionary (i.e. those empty entries which are only followed by a
    reference to the respective main entry) into true dictionary entries
    (followed by grammatical info, translation, etc.) (@cip: this is
    my plan, Micha! You just have to be patient! This WILL be so!)

