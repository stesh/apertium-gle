#!/usr/bin/perl

my %tags = (
"+1P" => "<p1>", # First person
"+2P" => "<p2>", # Second person
"+3P" => "<p3>", # Third person
"+Abr" => "<abbr>", # Abbreviation
"+Adj" => "<adj>", # Adjective
"+Adv" => "<adv>", # Adverb
"+Art" => "<det><def>", # Article (definite determiner)
"+Auto" => "<impers>", # Autonomous (impersonal)
"+Bar" => "<guio>", # Hyphen, dash, etc.
"+Base" => "<pst>", # Base form of adjective
"+Brack+St" => "<lpar>", # Opening parenthesis
"+Brack+End" => "<lpar>", # Closing parenthesis
"+Card" => "<card>", # Cardinal number
"+CC" => "<dialect><connacht>", # Connacht dialiect 
"+ChildesId" => "<childesid>", # Childes ID
"+Cmc" => "<cmc>", # Communicator
"+CM" => "<dialect><mumhan>", # Munster dialect
"+cmpd" => "<cmpd>", # Compound
"+Cmpl" => "<cmpl>", # N.B. need to be sure that cmpl and comp are never mixed up
"+cmpdNoGen" => "<cmpd><nom>", # Compound which takes nom case instead of 'usual' genitive
"+Com" => "<nom>", # Common case (nominative)
"+Comp" => "<comp>", # Comparative adjectival form
"+Cond" => "<Cond>", # Conditional mood
"+Conj" => "<Conj>", # Conjunction
"+Coord" => "<cnjcoo>", # Coordinate
"+Cop" => "<cop>", # Copula
"+Cp" => "<part><cp>", # Copula particle
"+CU" => "<dialect><uladh>", # Ulster dialect 
"+Cur" => "<cur>", # Currency (£, etc.)
"+Dat" => "<dat>", # Dative case
"+DefArt" => "<n><def>", # Definitive article marked on noun – need further checking
"+Def" => "<def>", # Definite
"+Deg" => "<deg>", # Degree (e.g. degree particle)
"+Dem" => "<dem>", # Demonstrative
"+DeNom" => "<n><stem>",# verbal noun ('denominal')
"+Dep" => "<dep>", # Verbal dependent forms
"+Det" => "<det>", # Determiner
"+Dig" => "<dig>", # Digit
"+Dim" => "<dim>", # Diminuitive
"+Dir" => "<dir>", # Directional prepositional phrase
"+Direct" => "<direct>", # Direct (object, etc.)
"+Ecl" => "<ecl>", # Eclipsis (Urú)
"+Email" => "<email>", # Email address
"+Emph" => "<emph>", # Emphatic pronoun
#"+End" => "<end>", # End bracket, quote, etc.
"+English" => "<english>", # English
"+Event" => "<event>", # Extralinguistic event (Laugh, sneeze, etc.)
"+Fem" => "<f>", # Feminine gender
"+Filler" => "<filler>", # Filler
"+Fin" => "<fin>", # Sentence final
"+Foreign" => "<foreign>", # Foreign
"+Fragment" => "<fragment>", # Sentence fragment
"+FutInd" => "<fti>", # Future indicative
"+Gen" => "<gen>", # Genitive case
"+Gn" => "<gn>", # General adverb 
"+Guesscmpd" => "<guess><cmpd>", # 
"+Guess" => "<guess>", # Guess
"+GuessPref" => "<guess><pref>", #
"+hPref" => "<hPref>", # h- prefix
"+Idf" => "<ind>", # Indefinite noun
"+Imper" => "<imp>", # Imperative mood
"+Imp" => "<imp>", # Imperative mood
"+Indirect" => "<indirect>", # 
"+Inf" => "<inf>", # -INFINITIVE PARTICLE
"+Int" => "<int>", # Sentence-internal punctuation 
"+Item" => "<item>", # Item (in a list)
"+Itj" => "<ij>", # Interjection
"+Its" => "<its>", # Intensifiers 
"+Len" => "<len>", # Lenition 
"+Loc" => "<loc>", # Locative prepositional phrase
"+Masc" => "<m>", # Masculine
"+Neg" => "<neg>", # Negative
"+NegQ" => "<negq>", # NEGATIVE INTERROGATIVE VERBAL PARTICLE
"+Nm" => "<num>", # Numeral 
"+NotSlen" => "<notslen>", # encode this by the absence of the <slender> tag USEd ON AdJECTIVES WHICH QUALIFY PLURAL NOUNS WITH BROAd CONSONANT OR VOWEL
"+Noun" => "<n>", # Noun
"+NStem" => "<n><stem>", # denominal verbal noun 
"+Num" => "<num>", # Numeral
"+Obj" => "<obj>", # Object Pronoun
"+Op" => "<op>", # Mathematical operator
"+Ord" => "<ord>", # Ordinal number
"+Part" => "<part>", # Particle
"+PastImp" => "<past><pii>", # Past habitual (imperfect)
"+PastInd" => "<past><ind>", # Past indicative 
"+Past" => "<past>", # Past
"+PastSubj" => "<past><subj>", # Past subjunctive
"+Pat" => "<pat>", # Patronymic particle (Ó, Mac, Ní, etc.)
"+PC" => "<pc>", # Percent
"+Pers" => "<pers>", # Personal
"+Pl" => "<pl>", # Plural
"+Poss" => "<pos>", # Possessive
"+Prep" => "<pr>", # Preposition
"+PresImp" => "<pres><pii>", # Present imperfect
"+PresInd" => "<pres><ind>", # Present indicative 
"+Pres" => "<pres>", # Present
"+PresSubj" => "<pres><subj>", # Present subjunctive 
"+Pron" => "<prn>", # Pronoun
"+Prop" => "<np>", # Proper noun
"+Pro" => "<pro>", # Pronoun with copula 
"+Punct" => "<punct>", # Abbreviation 
"+Q" => "<itg>", # Interrogative
"+Qty" => "<qnt>", # Quantifier
"+Quo+St" => "<lquot>", # Left quote
"+Quo+End" => "<rquot>", # Right quote
"+Ref" => "<ref>", # Reflexive
"+RelInd" => "<rel><ind>", # Relative indirect 
"+Rel" => "<rel>", # Relative direct
"+Sbj" => "<subj>", # Subject pronoun
"+Sg" => "<sg>", # Singular
"+Simp" => "<simp>", # Simple preposition (i.e. compounded or inflected)
"+Slender" => "<slender>", # Slender
"+Strong" => "<strong>", # Strong plural
#"+St" => "<st>", # Begin, quote, bracket, etc.
"+Subord" => "<cnjsub>", # Subordinate
"+Subst" => "<Subst>", # substantive
"+Temp" => "<Temp>", # Temporal adverb
"+Title" => "<title>", # Salutation
"+Vd" => "<v><dtv>", # Ditransitive verb
"+Vb" => "<vb>", # Verbal particle
"+Verbal" => "<verbal>", # verbal (generally verbal noun)
"+Verb" => "<v>", # Verb
"+VF" => "<VF>", # Vowel form
"+VI" => "<v><iv>", # Intransitive verb
"+Voc" => "<voc>", # Vocative case
"+Vow" => "<vow>", # Vowel-initial form 
"+VT" => "<v><tv>", # Transitive verb
"+VTI" => "<v><tv>", # Transitive and intransitive verb
"+Weak" => "<weak>", # Weak adjective
"+Xxx" => "<xxx>", # Unknown
);

my $filename = shift;

open SOURCE, $filename or die $!;

$start_tag = '\+St';
$end_tag = '\+End';

while (my $line = <SOURCE>) {
    while (($xfst_tag, $apertium_tag) = each %tags) {
        $xfst_tag =~ s/\+/\\+/g;
        $line =~ s/$xfst_tag/$apertium_tag/g;

    }
        # It's shortest match first, so some tags 
        # can get mangled

        $line =~s/<st>rong/<strong>/g;
        $line =~s/<past>Imp/<past><imp>/g;
        $line =~s/<past>Ind/<past><ind>/g;
        $line =~s/<past>Subj/<past><subj>/g;
        $line =~s/<guess>cmpd/<guess><cmpd>/g;
        $line =~s/<guess>Pref/<guess><pref>/g;
        $line =~s/$start_tag/$tags{$start_tag}/g;
        $line =~s/$end_tag/$tags{$end_tag}/g;
        
    print $line;
}
