% fix percu
% get rid of star - fill with something else
% vibster is kludgy...get rid of it, just use gliss...
\version "2.14.0"
\include "defs-devel.ly"

#(set-global-staff-size 17.82)
#(ly:set-option 'point-and-click #f)

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
}

\header {
  title = "Lucky Wok"
  composer = "mike solomon"
  subtitle = "(star!)"
}


sopNAME = #"Marie"
sopSNAME = #""
altNAME = #"Elsa"
altSNAME = #""
tenNAME = #"Ryan"
tenSNAME = #""
basNAME = #"Eudes"
basSNAME = #""
%{
sopNAME = #"Soprano"
sopSNAME = #"S."
altNAME = #"Alto"
altSNAME = #"A."
tenNAME = #"Tenor"
tenSNAME = #"T."
basNAME = #"Bass"
basSNAME = #"B."
%}

noteHeadFRENCH = \markup { * \justify { Suivant la convention établie dans les autres morceaux, le \raise #0.5 \musicglyph #"noteheads.s2harmonic" signifie du texte parlé.  Le \raise #0.5 \musicglyph #"noteheads.u2triangle", en revanche, signifie du texte fortement chuchoté.  Pour ce dernier, il faut toujours insister sur
les consones.  Par exemple, si vous voyez "\"ki\"" sur une note longue, il faut que le "\"k\"" persiste à travers le "\"i\"," comme le "\"g\"" en "\"Dreisig\"," par exemple "(\"ç\"" en IPA).  La voyelle détermine la forme du résonateur
(à savoir la bouche) qui colore la consonne sonnante.  Pareil pour "\"chou\"" ou "\"gau\"." Avec les \raise #0.5 \musicglyph #"noteheads.u2triangle", il faut toujours faire sonner la consonne à travers le filtre de la voyelle. }}
sim = \markup \italic "sim."
falsettoFRENCH = \markup \italic "voix de fausset"
falsettoENGLISH = \markup \italic "falsetto"
shoutFRENCH = \markup \italic "crié"
lightSaberFRENCH = \markup \italic "sabre laser"
gruntFRENCH = \markup \italic "bruit de singe"
gongFRENCH = \markup \italic \general-align #Y #CENTER { \musicglyph #"noteheads.s2xcircle" = tam-tam }
cymbalFRENCH = \markup \general-align #Y #CENTER { x \italic "= cymbale" }
simplecymbalFRENCH = \markup \italic \general-align #Y #CENTER { cymbale }
simplecymbalENGLISH = \markup \italic \general-align #Y #CENTER { cymbal }
smallCymbalFRENCH = \markup \italic \general-align #Y #CENTER { \musicglyph #"noteheads.s2xcircle" = petite cymbale }
lowFRENCH = \markup \italic \column { "la note la plus" "basse possible" }
laughterFRENCH = \markup \italic { du rire }
veryhighFRENCH = \markup \italic { très aigu, aspiré }
veryhighENGLISH = \markup \italic { very high, inhaled }
whiteNoiseFRENCH = \markup \italic { bruit blanc }
tambourFRENCH = \markup \italic { tambour }
puffFRENCH = \markup \italic \column { "les lèvres plissées," "les joues rondes," "la bouche enflée" }
veryNasalFRENCH = \markup \italic { très nasal, grinçant }
frenchFRENCH = \markup \italic { "(\"en\" comme \"rien\")" }
squirrelFRENCH = \markup \italic \column { "comme un ecureuil," "avec les lèvres qui bougent" "dans tous les sens, plus" "rapidement que nécessite le texte" }
toSopranoFRENCH = \markup \italic "cf. ténor"
lipSmackingFRENCH = \markup \italic \column { "succion, mouvements de langue" "comme Hanibal Lecter" "que les démi-croches soient exactes" }
spanishRFRENCH = \markup \italic { \italic "(\"r\" espagnol)" }
inhaleFRENCH = \markup \italic { ○ = inspiration }
ouPersistFRENCH = \markup \italic \column { "\"r\" espagnol" "le \"ou\" sonne à travers le \"r\"" "le \"i\" n'arrive qu'à la fin" }
puckerFRENCH = \markup { \italic "les lèvres plissées" }
dentistFRENCH = \markup \italic \column { "tuyau d'aspiration" "chez le dentiste" } 
pterosaurFRENCH = \markup \italic { cri d'un pterosauria } 
noVowelFRENCH = \markup \italic \column { "ici, pas de voyelle sonnée" "les voyelles indiquent la" "forme de la bouche" }
lipVibFRENCH = \markup \italic \column { "en faisant vibrer" "les lèvres" }
thFRENCH = \markup \italic \column { "\"th\" anglais, mais" "inspiré.  plein de crachat." }
consonantFRENCH = \markup \italic "consones dures"
spitFRENCH = \markup \italic "plein de crachat"
moreSpitFRENCH = \markup \italic \column { "toujours un peu comme un" "tuyau d'asipration, où le placement" "horizontal des notes indique" "la couleur timbrale (+/- brillant)" }
enthousiasticFRENCH = \markup \italic "plein d'enthousiasme"
monsterFRENCH = \markup \italic "monstre japonais"
kFRENCH = \markup { * \justify { en conservant le son du "\"ç\"" à l'issu du "\"k\"" }}
hFRENCH = \markup { † \justify {  comme le "\"h\"" anglais, mais avec la langue collée au haut de la bouche } }
fartFRENCH = \markup \italic \column { "pet infantile avec les lèvres, les" "deux mains pressées contre la bouche" }
veryLowFRENCH = \markup \italic { "oui, très, très grave, voire fry" }
airFRENCH = \markup \italic { "que de l'air et des consonnes" }
suckFRENCH = \markup \italic \column { "un tuyau d'aspiration qui" "devient une basse stupide" }
girlLaughFRENCH = \markup \italic { "le rire d'une fille" }
slowDiphthongFRENCH = \markup \italic { "diphtongue lente" }
waterGunFRENCH = \markup \italic \column { "comme un" "pistolet à eau" } 
childishFRENCH = \markup \italic "puéril"
asiaFRENCH = \markup \italic \column { "avec une" "inflexion asiatique" }
tenderFRENCH = \markup \italic "tendre"
spiritualFRENCH = \markup \italic "negro-spiritual"
pornoFRENCH = \markup \italic \column { "avec le timbre d'une guitare" "electrique d'un porno des années 70" }
beeFRENCH = \markup \italic "une abeille"
wiseFRENCH = \markup \italic "vieux sage chinois"
overtoneFRENCH = \markup \italic "riche en harmoniques"
withBassFRENCH = \markup \italic "avec la basse"
withAltoFRENCH = \markup \italic "avec l'alto"
authorityFRENCH = \markup \italic "prophète, autoritaire"
tongueFRENCH = \markup \italic \column { "en tirant la" "langue rapidement" } 
fryFRENCH = \markup \italic "fry"
cawFRENCH = \markup \italic "croassement"
masterFRENCH = \markup \italic \column { "maître chinois" "austère et intimidant" }
generatorFRENCH = \markup \italic "le son d'electricité"
closedFRENCH = \markup \italic "fermé"
upsideDownFRENCH = \markup { * \justify { Les consones à l'envers doivent être faites dans l'autre sens (implosion et pas explosion d'air). }}
halfwayFRENCH = \markup \italic \column { "entre chanté" "et parlé" }
insistFRENCH = \markup \italic \column { "en insistant sur le \"h\"" }
waveFRENCH = \markup \italic \column { "en passant la main devant la bouche" "le son des voitures qui passent" }
lowVoiceFRENCH = \markup \italic "(voix basse)"
appoxFRENCH = \markup { * \justify { Une cadence libre en suivant les barres de mesure ainsi que les autres voix pour trouver vos repères en temps.  Les silences sont légerement plus courts que
ceux au tempo du moreau \parenthesize \line { \fontsize #-2 \note #"4" #UP = 96}.}}
fanFRENCH = \markup \italic "un ventilateur surexcité"

noteHeadENGLISH = \markup { * \justify { Following the convention from the other works, the \raise #0.5 \musicglyph #"noteheads.s2harmonic" signifies spoken text.  The \raise #0.5 \musicglyph #"noteheads.u2triangle", on the other hand, signals a strong whisper.  When whispering, you must emphasize
the consonants.  For example, if you see "\"ki\"" on a long note, "\"k\"" must sound through the "\"i\"," like the "\"g\"" in "\"Traurig\"," for example "(\"ç\"" en IPA).  The vowel determines the form of the mouth
that colors the sound of the consonant.  The same is true for "\"chou\"" or "\"gau\"." Bottom line: when it comes to the \raise #0.5 \musicglyph #"noteheads.u2triangle", always make sure to emphasize the consonant over the vowel. }}
sim = \markup \italic "sim."
shoutENGLISH = \markup \italic "shouted"
lightSaberENGLISH = \markup \italic "light saber"
gruntENGLISH = \markup \italic "monkey sound"
gongENGLISH = \markup \italic \general-align #Y #CENTER { \musicglyph #"noteheads.s2xcircle" = gong }
cymbalENGLISH = \markup \italic \general-align #Y #CENTER { \musicglyph #"noteheads.s2xcircle" = cymbal }
smallCymbalENGLISH = \markup \italic \general-align #Y #CENTER { \musicglyph #"noteheads.s2xcircle" = small cymbal }
lowENGLISH = \markup \italic { "lowest note possible" }
laughterENGLISH = \markup \italic { laughter }
whiteNoiseENGLISH = \markup \italic { white noise }
tambourENGLISH = \markup \italic { snare }
puffENGLISH = \markup \italic \column { "puckered lips," "round cheeks," "puffed mouth" }
veryNasalENGLISH = \markup \italic { nasal, grating }
frenchENGLISH = \markup \italic { "(\"en\" like French \"rien\")" }
squirrelENGLISH = \markup \italic \column { "like a squirrel," "with the lips moving very fast," "faster than the text delivery" }
toSopranoENGLISH = \markup \italic "see the tenor's note"
lipSmackingENGLISH = \markup \italic \column { "suction noise" "like Hanibal Lecter" "with precise 16th notes" }
spanishRENGLISH = \markup \italic { \italic "(spanish \"r\")" }
inhaleENGLISH = \markup \italic { ○ = breathe in }
ouPersistENGLISH = \markup \italic \column { "spanish \"r\"" "the \"ou\" sounds through \"r\"" "the \"i\" comes at the very end" }
puckerENGLISH = \markup { \italic "puckered lips" }
dentistENGLISH = \markup \italic \column { "suction tube" "at the dentist's" } 
pterosaurENGLISH = \markup \italic { pterodactyl scream } 
noVowelENGLISH = \markup \italic \column { "no sounding vowel" "the vowels show" "the form of the mouth" }
lipVibENGLISH = \markup \italic \column { "with vibrating lips" }
thENGLISH = \markup \italic \column { "English \"th\", but" "inhaled.  full of spit." }
consonantENGLISH = \markup \italic "hard consonants"
spitENGLISH = \markup \italic "full of spit"
moreSpitENGLISH = \markup \italic \column { "like a suction tube" }
enthousiasticENGLISH = \markup \italic "enthusiastic"
monsterENGLISH = \markup \italic "Japanese monster"
kENGLISH = \markup { * \justify { keeping the "\"ç\"" sound after the "\"k\"" }}
hENGLISH = \markup { † \justify {  like the "\"h\"" in English, but with the tongue touching the upper mouth } }
fartENGLISH = \markup \italic \column { "fart noise with the lips," "both hands pressed against the mouth" }
veryLowENGLISH = \markup \italic { "very low vocal fry" }
airENGLISH = \markup \italic { "just air and consonants" }
suckENGLISH = \markup \italic \column { "suction tube transforming" "into dumb bass" }
girlLaughENGLISH = \markup \italic { "little girl laughter" }
slowDiphthongENGLISH = \markup \italic { "slow diphtong" }
waterGunENGLISH = \markup \italic \column { "like a" "water gun" } 
childishENGLISH = \markup \italic "childish"
asiaENGLISH = \markup \italic \column { "with asian" "inflexion" }
tenderENGLISH = \markup \italic "tender"
spiritualENGLISH = \markup \italic "negro spiritual"
pornoENGLISH = \markup \italic \column { "with the timbre of an electric" "guitar from a 70's pornography" }
beeENGLISH = \markup \italic "a bee"
wiseENGLISH = \markup \italic "old Chinese philosopher"
overtoneENGLISH = \markup \italic "rich in overtones"
withBassENGLISH = \markup \italic "with the bass"
withAltoENGLISH = \markup \italic "with the alto"
authorityENGLISH = \markup \italic "prophetic, authoritative"
tongueENGLISH = \markup \italic \column { "rapidly sticking out" "the tongue" } 
fryENGLISH = \markup \italic "fry"
cawENGLISH = \markup \italic "frog's croak"
masterENGLISH = \markup \italic \column { "chinese master" "austere, intimidating" }
generatorENGLISH = \markup \italic "the sound of electricity"
closedENGLISH = \markup \italic "closed"
upsideDownENGLISH = \markup { * \justify { Upside-down consonants should be sung "backwards" (while breathing in instead of out). }}
halfwayENGLISH = \markup \italic \column { "between spoken" "adn sung" }
insistENGLISH = \markup \italic \column { "emphasizing the \"h\"" }
waveENGLISH = \markup \italic \column { "moving the hand in front of the mouth" "the sound of passing cars" }
lowVoiceENGLISH = \markup \italic "(low voice)"
appoxENGLISH = \markup { * \justify { A free cadence, following the bar lines as well as the other voices to keep in time. }}
fanENGLISH = \markup \italic "an over-excited fan"
firstcymbalENGLISH = ^\markup \italic "cymbal"
firstcymbalFRENCH = ^\markup \italic "cymbale"

%%%%%>>>>>>>>>>>

tperc = {
  s4 s4 s4 s4. s4 s4 s8
  \override NoteHead #'style = #'cross
  c8^\sfz^\firstcymbalFRENCH c8^\sim c8 c8
  s4
}

powerText = { s4^"I" \bar "" s4^"have" \bar "" s4^"five" \bar "" s4^"stars," \bar "" s4^"you" \bar "" s4^"give" \bar "" s4^"me" \bar "" s4^"power" \bar ""  }
nineStarsText = { s4^"You" \bar "" s4^"get" \bar "" s4^"power" \bar "" s4^"with" \bar "" s4^"nine" \bar "" s4^"stars" \bar "" }
preggoText = { s4^"oracle," \bar "" s4^"I'm" \bar "" s4^"pregnant" \bar "" s4^"with" \bar "" s4^"your" s4^"star" \bar "" }
starDollarText = { \FatText s4^"You" \bar "" s4^"give" \bar "" s4^"me" \bar "" s4^"star," \bar "" s4^"I" \bar "" s4^"give" \bar "" s4^"you" \bar "" s4^"five" \bar "" s4^"dollar." \bar "" \unFatText }
preggoSkip = { s4*15 s16 }
%%%%% 6 + 9 = 14

marks = {
  \cadenzaOn
  \question
  \mark "*"
  \tempo "adagio"
  \repeat unfold 3 { s4 \bar "" }
  s4. \bar ""
  \repeat unfold 2 { s4 \bar "" }
  s1*5/8 \bar ""
  s4 \bar "|"
  \cadenzaOff
  \time 4/4
  s1 |
  s1 |
  s1 |
  \time 3/8
  s4. |
  \time 1/4
  %\question
  s4 |
  \time 2/2
  \tempo 2=90
  s1 |
  \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \mark \markup \italic "rit."
  s1 |
  \tempo 2=66
  s1 |
  \time 3/2
  s1. | \noBreak % because of text in sop
  \time 2/2
  \tempo 2=90
  s2 \tempo "plus vif" 2=110 s2 |
  \time 3/2
  s1. |
  \cadenzaOn
  \tempo "andante con moto"
  \repeat unfold 2 { s4 \bar "" }
  s8. \bar ""
  \repeat unfold 4 { s4 \bar "" } \bar "|"
  \cadenzaOff
  \time 7/8
  s1*7/8 |
  \time 5/4
  \tempo 2=100
  \grace { s4 }
  s1*5/4
  \time 1/2
  \tempo 2=76
  s2 |
  \time 4/4
  \tempo 4=86
  s1 |
  \tempo 4=74
  s1 |
  \revert Score . RehearsalMark #'self-alignment-X
  \mark \markup \fontsize #-3 { \note #"4" #UP = \note #"2" #UP }
  s1 |
  \time 3/4
  s2. |
  \tempo 4=76
  \time 2/4
  s2 |
  \time 4/4
  s1 |
  \tempo 4=120
  \time 3/4
  s2. |
  \time 4/4
  s1
  s1
  s1
  s1
  s1
  s1
  \time 2/4
  s2
  s2
  s2
  s2
  \time 4/4
  s1 | 
  s1 | \noBreak % :(
  s1 |
  \time 3/8
  s4. |
  \question
  \cadenzaOn
  $(skip-of-length powerText)
  $(skip-of-length nineStarsText)
  s4 \bar "|"
  \cadenzaOff
  \time 4/4
  s1
  s1
  \time 2/4
  s2
  \time 4/4
  \tempo 4=76
  s2   \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \mark \markup \italic "rall."
  s2 |
  s1 |
  \tempo 4=67
  s1 |
  s1 |
  s1 |
  s1 |
  \cadenzaOn
  \preggoSkip \bar "|"
  \cadenzaOff
  \time 2/4
  s2 |
  \cadenzaOn
  s4*5 \bar "|"
  \cadenzaOff
  \time 4/4
  \tempo 4=90
  s1 |
  \time 5/4
  s1*5/4 |
  \time 3/8
  \tempo 8=160
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  \time 2/8
  s4 |
  \time 4/4
  s1 |
  \time 2/4
  s2 |
  \tempo 4=42
  \time 4/4
  s1 | 
  \tempo 4=92
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  \tempo 4=78
  s1*7 |
  s2 \mark \markup \italic "poco rit." s2 |
  \tempo 4=70
  s1 |
  s1 |
  \mark \markup \italic "accel."   
  s1 |  
  \tempo 4=96
  s1 |
  s1*22 \bar "|."
  
}

soprano = \relative c''' { #(set-accidental-style 'neo-modern)
  \autoBeamOff
  $(skip-of-length tperc)
  R1 |
  R1 |
  b2....^\ppp^\fermata r32 |
  R4. |
  r4
  e,8^\f g e d e d d4 |
  b8 d b a b a a r |
  \cricket
  c,4-.^\f^\gruntFRENCH r \saNormal %<< { \stemDown des'2^^^\> \glissando |
  %s2. \noLed d'2^\mp } \\ { s2 \noLed \override NoteHead #'transparent = ##t f,4 g a } >>
  \stemDown des'2^^^\> \glissando ( |
  s2. \noLed d'2^\mp )
  \stemNeutral
  \noLed g,,,4^\lowFRENCH^\f |
  \revert NoteHead #'no-ledgers
  r2 bes'8 des ees des |
  bes aes bes des ees ges ees des
  bes aes bes des
  \feelingLucky
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((100 0 150 1400 70 230) (100 150 130 80 20) 100) '(5 . 0.2) '(3 . 0.4) #t (lambda (x) 0))
  b4^\mp
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((100 50 150 30 70 50) (100 40 100 80 180) (30 10 210 10 215) 10) '(5 . 0.2) '(3 . 0.4) #t values)
  a4
  d16
  \once \override NoteHead #'stencil =
  #(extend-base-note-head-backwards 200)
  b8
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((30 -20 30 -10 70 0) (100 50 70 150 400) 50) '(5 . 0.2) '(3 . 0.4) #f (lambda (x) (/ x 8)))
  g4
  \once \override NoteHead #'stencil =
  #(ly:stencil-rotate (make-spermazoid '((30 0 30 50 30 100) (60 30 160 30 240) (30 30 300 30 380) (40 20 420 20 480) (20 10 500 10 502) 100) '(5 . 0.6) '(3 . 0.9) #t (lambda (x) 0)) 10 0 0)
  c4
  \once \override NoteHead #'stencil =
  #(ly:stencil-rotate (make-spermazoid '((30 0 100 10 100 50) (60 15 160 10 300) (30 30 500 70 640) (40 100 680 150 680) 100) '(5 . 0.6) '(3 . 0.9) #t (lambda (x) (/ x 2))) 10 0 0)
  d4
  \once \override NoteHead #'stencil =
  #(ly:stencil-rotate base-note-head-stencil -45 0 0)
  f8
  b8
  \saNormal
  \hairlen #4 gis,4..^\sfp^\< ~ \bendAfter #3 \stemDown gis16 \stemNeutral
  \ziggliss \glisslen #6 b,4.^\sfp^\< \glissando \grace { \override Stem #'stencil = ##f <\parenthesize gis'>4 \glissando } |
  \revert Stem #'stencil
  ees'8-.^\mf ges-. ees-. des-. ees-. des-. bes-. des-. bes-. aes-. |
  \cricket
  c,^\f^\laughterFRENCH c c c | % used to use \cross ... but confusing w/ percussive effects
  \saNormal
  \times 2/3 { e'8-\staccatissimo \ziggliss d,2 ( \glissando d''8-. ) }
  \times 2/3 { \ziggliss d,,2 ( \glissando d''8-. ) \tri b,8-\staccatissimo %{tch%} } |
  R1
  R1
  R2.
  R2
  \cricket
  r8 \tri c,4.^\f^\whiteNoiseFRENCH r8 \cross c^\tambourFRENCH \cross c \cross c
  \cross c16 r8. r2 |
  R1 |
  R1 |
  R1 |
  R1 |
  \tri c4-\staccatissimo r4 r2 |
  R1 |
  R2 |
  R2 |
  R2 |
  R2 |
  R1 |
  \feelingLucky
  \override TupletNumber #'text = #(markup #:note "2" UP)
  r4 \times 1/1 { r8   \once \override NoteHead #'stencil =
    #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 215) 100) '(5 . 0.2) '(3 . 0.4) #f (lambda (x) (/ x 4)))
    c4*3/2^\mp }
  \times 1/1 { r8   \once \override NoteHead #'stencil =
    #(ly:stencil-rotate (make-spermazoid '((30 0 100 10 100 50) (60 50 80 70 150) (30 70 250 70 270) 50) '(5 . 0.6) '(3 . 0.9) #t (lambda (x) (/ x 2))) 10 0 0)
  c4*3/2 }
  \times 1/1 { r8   \once \override NoteHead #'stencil =
    #(make-spermazoid '((20 0 40 00 55 10) (30 20 80 40 130) (30 25 170 25 210)  100) '(4 . 0.2) '(4 . 0.1) #f (lambda (x) (/ x 2)))
    c4*3/2 } r4 |
  \saNormal
  g'8^\mf g e |
  \cricket s2. \miniSustainG c1*3/2 \glissando c1*11/8 \glissando \hideNotes c8 \unHideNotes
  R1
  R1
  R2
  \saNormal
  \times 4/6 { f'16^\f ees aes, bes ees, f }
  \times 4/6 { f'16 ees aes, bes ees, f }
  \times 4/6 { aes bes ees f aes bes }
  f'4-. |
  g4-.^\mp
  \feelingLucky
  \override TupletNumber #'text = #(markup #:note "2" UP)\times 1/1 { r16
    \once \override NoteHead #'stencil =
    #(make-spermazoid (crude-bloat-y (crude-bloat-x '((60 10 50 40 70 25) (50 40 -25 40 10) (50 60 40 40 30) (50 40 -10 40 40) (50 40 80 40 30) (50 40 10 40 60) (50 40 120 20 80) (50 40 50 40 100) (50 40 160 40 100) (50 40 120 40 200) 10) 3) 1.0) '(4 . 0.9) '(3 . 0.4) #f values)
    c,,4*7/4 } %r16 }
    \override TupletNumber #'text = #(markup #:note "4" UP)
    \once \override NoteHead #'stencil =
    #(make-spermazoid (crude-bloat-y (crude-bloat-x '((60 10 50 40 70 25) (50 40 -25 40 10) (50 60 40 40 30) (50 40 -10 40 40) (50 40 80 40 30) (50 40 10 40 60) (50 40 120 20 80) (50 40 50 40 100) (50 40 160 40 100) (50 40 120 40 200) 10) 3) 1.0) '(4 . 0.9) '(3 . 0.4) #t values)
      \times 1/1 { c4 }
  \times 1/1 { r8 d' }
    \cricket c,,4 ~ c8
    \feelingLucky
    \stemDown
    \revert NoteHead #'style
    \clef bass
    \override TupletNumber #'text = #(markup #:note "4." UP)
    \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((60 0 30 10 20 10) (60 40 10 40 10) (60 20 30 10 30) 40) '(5 . 0.3) '(3 . 0.4) #f (lambda (x) (/ x 2)))
      \times 1/1 { e,4*3/2^\veryLowFRENCH^\mf } |
    \override TupletNumber #'text = #(markup #:note "4" UP)
      \times 1/1 { g4 }
    \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((60 0 30 10 20 10) (60 40 5 40 5) (60 20 5 10 5) 40) '(5 . 0.3) '(3 . 0.4) #f values)
      \times 1/1 { f4 }
      \times 1/1 { e }
    \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((60 0 40 15 22 18) (50 40 15 40 25) (30 20 5 11 5) 40) '(5 . 0.3) '(4 . 0.1) #f (lambda (x) (/ x 2)))
      \times 1/1 { g } |
    \override TupletNumber #'text = #(markup #:note "4." UP)
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel '((34 33 41 63 43 46 )(51 49 51 58 33 )(43 40 39 38 56 )(32 39 56 63 69 )(58 30 10 61 10 ) 100) '(5 . 0.84447059349) '(4 . 0.657834203427) #t (lambda (x) (/ x 342)))
    \times 1/1 { g4 r8 }
    \override TupletNumber #'text = #(markup #:note "2" UP)
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel '((41 33 34 33 38 51 )(64 41 63 51 60 )(57 62 49 35 34 )(70 55 30 46 49 )(53 48 61 37 55 )41) '(5 . 0.242923994359) '(4 . 0.610133182876) #f values)
    \times 1/1 { b,4*2 }
    \override TupletNumber #'text = #(markup #:note "8" UP "+" #:note "8" UP)
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel '((61 36 34 35 47 30 )(69 48 45 59 38 )(62 52 62 45 45 )(54 62 -33 45 -30 )(36 59 -59 65 -56 )46) '(5 . 0.41300429464) '(4 . 0.318867695653) #f (lambda (x) (/ x 1)))
    \times 1/1 { g'4 }
    \override TupletNumber #'text = #(markup #:note "4." UP)
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel (crude-bloat-x (crude-bloat-y '((64 0 55 5 60 10 )(20 55 20 67 30 )(63 50 55 33 60 )(45 35 -52 58 -46 )(56 51 -68 58 -43 ) 100) 19) 1) '(5 . 0.893943323886) '(4 . 0.248349350417) #t (lambda (x) (/ x 497)))
    \times 1/1 { b,4*3/2 }
    r4
    \saNormal \times 2/3 { r8 ees'''4^\espressivo }
  \stemNeutral
  \preggoSkip
  R2
  s4*5
  \cricket
  r4 \times 2/3 { r4 c,,8^\mf } c c16 r \times 2/3 { r4 c8 } |
  \times 2/3 { c c c } c16 r8 c16 c c r8 r4 r16 c16 c c |
  R4. |
  R4. |
  \saNormal
  r8 bes'^\mp^\childishFRENCH r8 |
  bes r8 bes |
  g8.--^\mf bes8.^\mp-. |
  R4 |
  \normalG
  \ziggliss
  e,2.^\sf^\< \glissando \grace { \stemTrans <\parenthesize dis'>4\ff } r4 | \unStemTrans
  R2 |
  R1 |
  \cricket
  \tri \bendAfter #3 c,8^\mf \tri \bendAfter #-2 c16 c
    \saNormal c-\staccatissimo f'-\staccatissimo aes-\staccatissimo bes^\p^\<^\lightSaberFRENCH \glissando (
    s16*2/3 a,16*2/3^\f ) ees'16*2/3^\mp \cricket c,16*2/3 \saNormal f''8*2/3^\lightSaberFRENCH^\p^\< \glissando (
    s16 g,^\f ) bes,16-\staccatissimo^\mf d,-\staccatissimo |
  r16 bes'-.^\pornoFRENCH^\f cis ( a )
    bes16. aes8 r32
    r16 aes16-. aes8
    r16 aes16-. aes8 |
  r16 aes16-. aes8
    r16 aes16-. aes8
    r16 aes16-. aes8
    r4 |
  R1 |
  r2. r4^\fermata |
  c'4^\p\glissando s2. |
  s1 |
  s2 des8 r8 r4 |
  r2 r8 c8^\mp \glissando s4 |
  s1 |
  deseh4 \glissando s2. |
  s4 c4 r2 |
  r2 aes4^\mf \glissando s |
  b4. \glissando aes8 r4 \times 8/10 { bes32^\f bes ges r des'16. ( \glissando f,,32) b a }
  \times 8/10 { f16-. d'32 b a16-\staccatissimo b'-\staccatissimo f-\staccatissimo }
    \times 4/5 { c a'32 f b, } 
      \times 4/5 { \cricket \tri c,32 \tri c \saNormal
      des''16. } s4 s4 |
  s2.. des8-. ais16^\mf^\> ( \glissando dis,32\p ) dis^\< fis16-\staccatissimo ais-\staccatissimo^\mf
    \times 2/3 { fis32 fis16.^\sfp^\< \glissando d8 \glissando a'^\f }
    \times 2/3 { f8-\staccatissimo^\mp g e16^\f \glissando c \glissando }
    s16 %{ GLISS HERE %} aes' c,-\staccatissimo c-\staccatissimo |
  \acciaccatura { d } c8 \times 2/3 { cis16 \cricket \tri c,32 \tri c \saNormal ais''16 }
    b,32^\p \glissando g16. \times 2/3 { a16^\f a a }
    r32 d16^\> b32 \times 2/3 { cis16 b ais }
    \times 4/5 { cis-\staccatissimo^\mp^\< cis-\staccatissimo fis,-\staccatissimo g-\staccatissimo ais-\staccatissimo } |
  \times 4/6 { a8^\f \glissando cis16 b fis dis } 
    \times 8/13 { cis'16^\> d8 \glissando bis'16 cis16^\p^\< e,16 a,16->^\f g16-> e16_> e'8.^\>^\tongueFRENCH \glissando ( g16 ) }
    ais,16-\staccatissimo^\< ais-\staccatissimo b8^\sfz---> |
  bes32 aes g aes des ces bes g
    \cricket \tri c,16 \saNormal ais'' \times 2/3 { b16^\> \cricket \tri c,, \saNormal fis ~ }
    \times 4/6 { fis8-\staccatissimo^\mp^\< gis16 ais gis c-\staccatissimo }
    \times 4/5 { \cricket \tri c, \saNormal c' des aes ges^\f }
  \cricket \tri c,32 \tri c \saNormal ees \cricket \tri c \saNormal g''16-\staccatissimo \cricket \air c,, \saNormal % ugh, use unpure pure container here...
    \times 4/5 { ges'16^\> f' g a f }
    d,16 d d''8^\p^\< \glissando
    s16 s32 %{ GLISS %} e,,^\f \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text \times 6/8 { dis'16 dis, cis dis b''-> gis, \bendAfter #'2 dis' g,-> \glissando }
    %%% GLISS
    s8*4/7 a16*4/7 cis16*4/7 dis,16*4/7 cis16*4/7 \cricket \tri c16*4/7
    \times 2/3 { \times 2/3 { \cricket \tri c16 \saNormal e cis' } b8 \bendInto \bendAfter #-2 e-> }
    c32 c a a d,16 b'
  \times 2/3 { \times 2/3 { cis16 cis cis } \feelingLucky \once \override NoteHead #'stencil = #(make-spermazoid-rel '((69 68 70 67 59 52 )(52 31 45 43 62 )(68 26 49 56 62 )(35 36 50 42 63 )(46 53 42 46 65 )37) '(5 . 0.95034153343) '(4 . 0.173998007089) #f (lambda (x) (/ x 1)))
    g8^\sfz^\markup \fontsize #-2 \parenthesize \note #"8" #UP \saNormal cis \glissando }
    cis,16 \bendInto \bendAfter #-2 fis' \times 2/3 { r16 dis'8^\> \glissando }
    \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text
    s16*4/7 f,,16*4/7^\mp f8*4/7 c'8*4/7 \cricket \air \noAcc c,4*4/7 \saNormal \bendAfter #-4 gis''4*4/7
  \times 4/7 { dis16^\< ais' gis eis cis \feelingLucky
   \once \override NoteHead #'stencil = #(make-spermazoid-rel (crude-bloat-x (crude-bloat-y '((50 30 30 20 60 20) (70 40 40 40 10) (40 10 40 10 0) (20 10 -10 10 -20) (20 30 -60 10 -120) 10) 5) 2) '(4 . 0.95034153343) '(3 . 0.173998007089) #t (lambda (x) 0))
   \once \override Script #'X-offset = #0
   \once \override Script #'Y-offset = #3.5
   dis4*7/4->^\f^\>^\markup \fontsize #-2 \parenthesize \note #"4.." #UP \saNormal cis'16 dis \glissando }
   c,,^\mp aes' ges32 aes des,16 \times 2/3 { fis' fis \bendAfter #-3 cis8^\f-> ais8 ~ }
   \times 2/3 { ais32 \cricket \tri c,32 \saNormal a'8 bes, c16 } \times 4/6 { e g e \cricket \tri c8-\staccatissimo \saNormal d''16^\mp ( }
   e8 ) e,,-\staccatissimo
      d''4^\p |
  s1 |
  s1 |
  s1 |
  s4 c8-. r8 r2 |
  \cricket
  r8 c,,8^\f^\lowVoiceFRENCH c16 r8. r4. \feelingLucky \clef treble
     \override NoteHead #'stencil =
       #(make-spermazoid-rel '((50 42 54 45 57 47 )(41 47 49 47 50 )(66 50 51 55 52 )(55 57 54 60 55 )(46 63 57 68 57 )41) '(5 . 0.276970563371) '(4 . 0.164598467157) #t (lambda (x) (/ x 1)))
      d'4*1/2^\mf^\markup \fontsize #-2 \parenthesize \note #"8" #UP 
    \override NoteHead #'stencil =
       #(make-spermazoid-rel '((70 62 72 64 76 65 )(32 70 66 74 68 )(55 75 70 77 51 )(38 81 33 84 14 )(64 89 -10 91 -30 ) (64 89 -40 91 -60 ) 30) '(5 . 0.825437133856) '(4 . 0.771824292818) #f (lambda (x) (/ x 1)))
      a4^\markup \fontsize #-2 \parenthesize \note #"4" #UP 
    \override NoteHead #'stencil =
       #(make-spermazoid-rel '((68 0 71 5 75 10 )(39 70 20 72 30 )(64 73 55 76 57 )(36 80 58 81 58 )(32 81 59 83 59 )31) '(5 . 0.27345407606) '(4 . 0.969780246524) #t (lambda (x) (/ x 1)))
      c4*3/4^\markup \fontsize #-2 \parenthesize \note #"8." #UP 
    \override NoteHead #'stencil =
       #(make-spermazoid-rel '((61 56 62 57 66 59 )(59 57 61 62 63 )(57 67 63 71 64 )(45 71 64 73 65 )34) '(5 . 0.208481086172) '(4 . 0.306615211742) #f (lambda (x) (/ x 1)))
      g4*3/4^\markup \fontsize #-2 \parenthesize \note #"8." #UP
    \cricket \revert NoteHead #'stencil \tri c,4.^\f ~ |
  c2. \saNormal r8. aes'16^\mf^\espressivo ~ |
  aes8. r16 \cricket c,8^\> r16 c16 ~ c r8. c8 r |
  r8 c^\mp \saNormal c'16^\pp r8 \cricket c,16^\mp ~ c r8. \saNormal \times 4/5 { g''8. c8-\staccatissimo } |
  \times 4/5 { b16 a8-\staccatissimo e8-\staccatissimo } r8. \cricket \tri c,16^\p ~ \tri c \tri c8 r16 r4 |
  R1*4 |
}

sopranoGlissando = \relative c'' {
  $(skip-of-length tperc)
  s1
  s1
  s1
  s4.
  s4
  s1*2
  s1
  \noLed \override NoteHead #'transparent = ##t f4 a b s4 s2 |
  s1
  s1. |
  \repeat unfold 2 { s4 \bar "" }
  s8. \bar ""
  \repeat unfold 4 { s4 \bar "" } \bar "|"
  s1*7/8 |
  s1*5/4
  s2 |
  s1 |
  s1 |
  s1 |
  s2. |
  s2 |
  s1 |
  s2. |
  s1
  s1
  s1
  s1
  s1
  s1
  s2
  s2
  s2
  s2
  s1 | 
  s1 |
  s1 |
  s4. |
  $(skip-of-length powerText)
  $(skip-of-length nineStarsText)
  s4
  s1
  s1
  s2
  s1
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  \preggoSkip
  s2 |
  s4*5
  s1 |
  s1*5/4 |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4 |
  s1 |
  s2 |
  s1 | 
  s4
    \override Stem #'length = #7
    s4
    \override TupletBracket #'direction = #UP
    \times 2/3 { d,16 s8. f'8 }
    c16 s8. |
  s1 |
  s1 |
  s1 |
  s1 |
  s4 c4 c c |
  c c c c |
  c c s2 |
  s2. c4 |
  c c c c |
  s c c c |
  c s2. |
  s2. b4 |
  s1 |
  \autoBeamOff \override Accidental #'stencil = ##f
  \override Voice . Glissando #'bound-details #'right #'padding = #0
  \override NoteHead #'stencil = #empty-stencil
  \override NoteHead #'style = #'harmonic
  s4 s8 s8*2/5 \noStem d8*3/5^\mp^\< \glissando \stemDown
  \override Voice . Glissando #'bound-details #'left #'padding = #0
  e4 \glissando e \glissando |
  e \glissando f \glissando f \glissando e8 \glissando
  \revert Voice . Glissando #'bound-details #'right #'padding
  \noStem d8^\f |  \revert Voice . Glissando #'bound-details #'left #'padding
  s2. \stemDown e,16 s8. |
  \revert NoteHead #'stencil
  \revert NoteHead #'style
  s1*3
  s2. \stemDown e16 \stemUp a,32 s32 s8 |
  \override TupletBracket #'direction = #UP
  s4 \times 4/7 { a8 s8 s8 \stemInv c,16 } s4 s4 |
  s2 \times 4/7 { \stemDown d'16 s16 s8 s8 s4 \stemInv gis4 }
  s1 |
  \override Voice . Glissando #'bound-details #'right #'padding = #0
  s2. \noStem d'4 \glissando | \stemNeutral
  \override Voice . Glissando #'bound-details #'left #'padding = #0
  \override NoteHead #'stencil = #empty-stencil
  \override NoteHead #'style = #'harmonic
  d\glissando d\glissando d\glissando d\glissando |
  d\glissando c\glissando c\glissando c\glissando |
  d\glissando c\glissando c\glissando c\glissando |
  \revert Voice . Glissando #'bound-details #'right #'padding
  c\glissando
  \revert NoteHead #'stencil
  \revert NoteHead #'style
  \noStem c8 s8 s2 |
  \revert Voice . Glissando #'bound-details #'left #'padding
}

sopranoWords = \lyricmode {
  star
  \markup \center-column { 兒 ér } \markup \center-column { 童 tóng } \markup \center-column { 相 xiāng } \markup \center-column { 見 jiàn } \markup \center-column { 不 bù } \markup \center-column { 相 xiāng } \markup \center-column { 識， shí, }
  \markup \center-column { 笑 xiào } \markup \center-column { 問 wèn } \markup \center-column { 客 kè } \markup \center-column { 從 cōng } \markup \center-column { 何 hé } \markup \center-column { 處 chŭ } \markup \center-column { 來。 lái. }
  heu
  hai 
  ouais
  % FAIT CHIER!!!
%  \markup \center-column { 巔， diān. } \markup \center-column { 得 dé } \markup \center-column { 無 wú } \markup \center-column { 金 jīn } \markup \center-column { 丸 wan } \markup \center-column { 懼？ jù? }
%  \markup \center-column { 美 mĕi } \markup \center-column { 服 fú } \markup \center-column { 患 huàn } \markup \center-column { 人 rén } \markup \center-column { 指， zhĭ, } \markup \center-column { 高 gāo } \markup \center-column { 明 míng } \markup \center-column { 逼 bī } \markup \center-column { 神 shén } \markup \center-column { 惡。 ĕ. }
  \markup \center-column { 矯 jiăo } \markup \center-column { 矯 jiăo } \markup \center-column { 珍 zhēn } \markup \center-column { 木 mù, } \markup \center-column { 巔， diān. } \markup \center-column { 得 dé } \markup \center-column { 無 wú } \markup \center-column { 金 jīn } \markup \center-column { 丸 wan } \markup \center-column { 懼？ jù? }
  \markup \center-column { 美 mĕi } \markup \center-column { 服 fú } \markup \center-column { 患 huàn } \markup \center-column { 人 rén } \markup \center-column { 指， zhĭ, } \markup \center-column { 高 gāo } \markup
  aoi
  diou
  i
  ou
  tchoi
  siou
  niou
  tchit
  i
  hai
  soi
  \markup \center-column { 我 wŏ } \markup \center-column { 歌 gē } \markup \center-column { 月 yuè } \markup \center-column { 徘 pái } \markup \center-column { 徊， huí } \markup \center-column { 我 wŏ } \markup \center-column { 舞 wŭ } \markup \center-column { 影 yĭng } \markup \center-column { 零 míng } \markup \center-column { 亂； luàn }
  \repeat unfold 4 ha
  ih hoi hoi tchit
  shhhh
  \repeat unfold 4 \skip 1
  t
  goi chi hai
  o -- ra -- cle
  sss shhh
  \skip 1
  À ma très chère Chou -- chou a -- vec les ten -- dres ex -- cuses de son père pour ce qui va
  go sai i
  fff
  hoai dji bai ia drai houa
  zhrai di Ryan i
  ar -- rê -- te
  no mais ar -- rê -- te
  \repeat unfold 2 { ar -- rê -- te }
  \repeat unfold 3 zoui
  na tjou
  hoi
  choui kao ǂ
  dum doum tit dio di t biou di dou
  gou niou niouk \repeat unfold 5 { ao djit } ao
  \markup \center-column { 水 shuĭ } \skip 1
  \markup \center-column { 星 xīng } \markup \center-column { 級 jí } \skip 1
  \markup \center-column { 電 diàn } \markup \center-column { 源  yuán } \skip 1
  ziou bi dou
  miou she fe
  faχ a ro ra
  tik touk aou fa ta ne sh t
  \markup \center-column { 笑 xiào } \skip 1
  diou oua tcha tchik
    a ha -- o -- ix
    tchoup tzitz a -- o -- itz
    soum doum
  a tchoum d b dik
    χa -- o tzi bih dih
    a -- o du ku du
    kihm dihm zouk zak ak
  ha -- ik si bi dou
    a -- ou oui ni dum tchum droum droum llll
    doum tchik ao
  \override LyricText #'font-size = #-1
  ih thih bih thih dih bih dih bou
    thk oi ih zh ou
    rol in rol tchik 
    tchit doum dim zhrum zhrum
  \revert LyricText #'font-size
  t p du t sat \skip 1
    oua diou sin di dou
    doum tit i -- ouzh im dum doum
    du bu ioum duh dih oi
    %%%
    dum dum dum tchk
    ǂ ho ba tum sta
    na ma na ma dix -- huit
  dou bi da χa dzhiou
    doum dzhvit ao
    doum dou dit \skip 1
  siou dzhou di dou bou dou
    hao dim dim doum dit ha ra gum di bi hiou doum
    t djou djou zin zin dit dit tik oi gut i \skip 1
  dra -- gon
  gun chao chi nao shhh
  love
  \repeat unfold 4 star
  Schloß
  star
  \markup \center-column { 勿 wù } \markup \center-column { 謂 wèi }\markup \center-column { 知 zhī } \markup \center-column { 音 yīn } \markup \center-column { 稀？ xĭ }
  \repeat unfold 2 pss
}

alto = \relative c'' { #(set-accidental-style 'neo-modern)
  \autoBeamOff
  \feelingLucky
  \footnote \markup { "" } #'(0 . 0) #'NoteHead \noteHeadFRENCH
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 215) 100) '(5 . 0.2) '(3 . 0.4) #f (lambda (x) (/ x 4)))
  b4^\mp
  \once \override NoteHead #'stencil =
  #(ly:stencil-rotate (make-spermazoid '((30 0 100 10 100 50) (60 50 80 70 150) (30 70 250 70 200) 100) '(5 . 0.6) '(3 . 0.9) #t (lambda (x) (/ x 2))) 10 0 0)
  d4
  \once \override NoteHead #'stencil =
%  #(make-spermazoid '((60 90 50 30 70 50) (50 40 100 80 180) (30 10 210 10 215) 10) '(4 . 0.9) '(3 . 0.4) #t values)
  #(make-spermazoid '((20 0 40 00 55 10) (30 20 80 40 170) (30 05 210 05 215)  100) '(4 . 0.2) '(4 . 0.1) #t (lambda (x) (/ x 4)))
  b4
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((60 10 50 30 70 20) (50 40 -20 40 0) (50 40 20 40 0) (50 40 -20 40 0) (50 40 20 40 0) (50 40 -20 40 0) (50 40 20 40 0) 10) '(4 . 0.9) '(3 . 0.4) #f values)
  c4
  s8
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((260 0 270 1 300 40) (100 10 100 20 150) 10) '(5 . 0.3) '(4 . 0.4) #t (lambda (x) (* x x)))
  b4
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 315) 10) '(5 . 0.2) '(3 . 0.4) #f (lambda (x) (/ x 4)))
  b4
  \once \override NoteHead #'stencil =
  #(ly:stencil-rotate (make-spermazoid '((260 0 250 10 200 50) (200 40 100 80 180) (30 10 210 10 215) (30 40 210 40 300) (100 40 430 50 480) 10) '(5 . 0.4) '(3 . 0.1) #t (lambda (x) (sqrt x))) 15 0 0)
  g'4
  s8 s8 s8
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 215) 10) '(5 . 0.2) '(3 . 0.4) #t values)
  a,4
  r4 r16
  \times 1/1 {
  \once \override NoteHead #'stencil =
  #(ly:stencil-translate (make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 215) 10) '(5 . 0.2) '(3 . 0.4) #f values) '(0 . 0))
%  #(ly:stencil-translate (make-spermazoid (crude-bloat-x '((100 100 150 10 70 15) (100 40 30 80 40) (20 10 50 10 55) 20) 7) '(5 . 0.2) '(3 . 0.4) #f (lambda (x) (/ x 8))) '(0 . 0))
  b4 }
  r8.
  \times 1/1 {
  \once \override NoteHead #'stencil =
%  #(ly:stencil-rotate (make-spermazoid (crude-bloat-x '((30 0 70 10 70 50) (60 20 80 20 150) (30 10 210 10 215) (30 40 230 40 240) 1) 7) '(5 . 0.9) '(3 . 0.9) #f (lambda (x) x)) 10 0 0)
  %#(ly:stencil-rotate
#(make-spermazoid (crude-bloat-x '((30 0 70 10 70 30) (60 20 50 20 70) ;(10 10 100 10 140) ;(10 20 160 20 170)
0.0) 7) '(5 . 0.9) '(3 . 0.9) #t (lambda (x) x))
%10 0 0)
%  #(ly:stencil-rotate (make-spermazoid (crude-bloat-x '((30 0 100 10 100 20) (60 30 40 30 50) (30 10 60 10 70) (30 40 80 40 90) 1) 7) '(5 . 0.9) '(3 . 0.9) #t (lambda (x) x)) 10 0 0)
  b4 }
  r4.
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((100 0 25 30 35 50) (30 20 100 40 120) (30 05 100 05 180) (10 20 210 10 230) 10) '(5 . 0.4) '(4 . 0.2) #f values)
%  #(make-spermazoid (crude-bloat-x '((100 0 25 5 35 10) (30 20 20 40 30) (2 05 40 05 45) (2 20 48 10 50) 1) 14) '(5 . 0.4) '(4 . 0.9) #f values)
  \times 1/1 {
  b4 }
  r8
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((60 10 50 30 70 20) (50 40 -20 40 0) (50 40 40 40 20) (50 40 0 40 20) (50 40 60 40 40) (50 40 20 40 40) (50 40 80 20 250) 10) '(4 . 0.9) '(3 . 0.4) #t values)
%  #(make-spermazoid (crude-bloat-x '((100 10 50 30 70 20) (50 40 -20 40 0) (50 40 40 40 20) (50 40 0 40 20) (50 40 60 40 40) (50 40 20 40 40) 20) 6) '(4 . 0.9) '(3 . 0.4) #f (lambda (x) (/ x 4)))
  \times 1/1 { c4 } 
  R1 |
  \saNormal
  des,8^-^\mf des^- des^- |
  \feelingLucky
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 215) 100) '(5 . 0.2) '(3 . 0.4) #f (lambda (x) (/ x 4)))
  b'4^\mp
  \saNormal
  r2 \times 2/3 { r8 b'2^\p^\espressivo r8 }
  R1 |
  \cricket
  c,,4-.^\f^\gruntFRENCH r \saNormal %<< { aes'2^^^\> \glissando | \stemDown
  %s2 \noLed g'4^\pp r4 r2 } \\ { s2 \noLed \override NoteHead #'transparent = ##t d4 e } >>
  aes'2^^^\> \glissando ( | \stemDown
  s2 \noLed g'4^\pp ) r4 r2
  \revert NoteHead #'no-ledgers
  \stemNeutral
  c,,8 dis c b f'^\f ees c ees |
  f ges f ees c bes c ees f ges f ees |
  s4*6 s8. 
  R1*7/8
  R1*5/4
  R2
  % HERE
  \cricket r2 r8 c^\mf c r8 |
  %r2 \ziggliss d4^\f ( \glissando d'8-. ) r |
  r4.. \tri c16 r2 |
  %\cricket
  %r4 \times 2/3 { c8^\f c4 } \times 2/3 { c8 c4 } \times 2/3 { c8 c4 } |
  %\times 2/3 { c8 c4 } \times 2/3 { c8 c4 } \times 2/3 { c8 c4 } |
  \cricket
  r2.. c16^\f c |
  \times 2/3 { c4 c8 } \times 2/3 { c4 c8 ~ } \times 2/3 { c8 r4 } |
  \saNormal
  fis'16-. \ziggliss cis,4. ( \glissando ais''16-. ) |
  R1 |
  R2. |
  R1 |
  R1 |
  \cricket 
  r8. \tri c,,16-\staccatissimo r4 r2 |
  r4 \tri c-\staccatissimo r2 |
  R1 |
  r4. \tri c8^\dentistFRENCH^\f ~ \tri c2 ~ |
  \tri c2 ~ |
  \times 2/3 { \tri c4 r8 } r4 |
  \saNormal r16 \noLed g'''8.^\mp^\pterosaurFRENCH %{tarydactyl%} ~ \bendAfter #-2 g4 |
  R2 |
  \saNormal
  bes,,4 ees8. f16 ees8 des des4 |
  ges4 f8 ees ces r8 r4 %ees16. f32 ees8 des |
  R1 %des bes ces des ees des r4 |
  g8^\mf g e |
  \monologue
  $(skip-of-length powerText)
  \FatText \MonoShift
  \override TextScript #'whiteout = ##t
  s4^"You" \bar "" s4^"get" \bar "" s4^"power" \bar "" s4^"with" \bar "" s4^"nine" \bar "" s4^"stars" \bar ""
  \unFatText \unMonoShift
  \revert TextScript #'whiteout
  s4
  R1 R1 R2 
  \saNormal
  \times 4/6 { c'16^\f bes ees, f bes, c }
  \times 4/6 { c'16 bes ees, f bes, c }
  \times 4/6 { ees f bes c ees f }
  c'4-. |
  R1 |
  \cricket
  \tri c,,4^\fartFRENCH r4 r2 |
  R1 |
  R1 |
  R1 |
  s4*6
  \monologue \FatText \MonoShift \override TextScript #'whiteout = ##t
  s4^"You" \bar "" s4^"give" \bar "" s4^"me" \bar "" s4^"star," \bar "" s4^"I" \bar "" s4^"give" \bar "" s4^"you" \bar "" s4^"five" \bar "" s4^"dollar." \once \override TextScript #'transparent = ##t s16^"."
  \unFatText \unMonoShift \revert TextScript #'whiteout
  \saNormal
  r4 aes'8^\espressivo^\mf r8 |
  \feelingLucky
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 215) 100) '(5 . 0.2) '(3 . 0.4) #f (lambda (x) (/ x 4)))
  b4^\mp
  \once \override NoteHead #'stencil =
  #(ly:stencil-rotate (make-spermazoid '((30 0 100 10 100 50) (60 50 80 70 150) (30 70 250 70 200) 100) '(5 . 0.6) '(3 . 0.9) #t (lambda (x) (/ x 2))) 10 0 0)
  d4
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((20 0 40 00 55 10) (30 20 80 40 170) (30 05 210 05 215)  100) '(4 . 0.2) '(4 . 0.1) #t (lambda (x) (/ x 4)))
  b4
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((60 10 50 30 70 20) (50 40 -20 40 0) (50 40 20 40 0) (50 40 -20 40 0) (50 40 20 40 0) (50 40 -20 40 0) (50 40 20 40 0) 10) '(4 . 0.9) '(3 . 0.4) #f values)
  c4
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((260 0 270 1 300 40) (100 10 100 20 150) 10) '(5 . 0.3) '(4 . 0.4) #t (lambda (x) (* x x)))
  b4
  R1 |
  R1*5/4 |
  R4.
  \feelingLucky
  \once \override NoteHead #'stencil =
  #(make-spermazoid-rel '((43 35 65 42 49 64 )(41 63 41 31 61 )(40 57 60 48 35 )39) '(5 . 0.930597296452) '(4 . 0.272550809213) #f (lambda (x) (/ x 412)))
  b4*1/2^\p^\<
  \once \override NoteHead #'stencil =
  #(make-spermazoid-rel '((54 45 56 44 34 33 )(70 33 51 62 52 )(35 42 58 38 55 )46) '(5 . 0.0192917824205) '(4 . 0.556577940574) #t (lambda (x) (/ x 274)))
  b4*1/2
  \once \override NoteHead #'stencil =
  #(extend-base-note-head-backwards 100)
  b4*1/2
  \once \override NoteHead #'stencil =
  #(make-spermazoid-rel '((66 38 70 35 60 64 )(42 68 51 40 51 )(56 40 51 39 61 )30) '(5 . 0.829366671872) '(4 . 0.414842323956) #f (lambda (x) (/ x 538)))
  b4*1/2
  \once \override NoteHead #'stencil =
  #(make-spermazoid-rel '((52 30 67 52 63 64 )(67 52 62 41 46 )(51 52 51 60 52 )43) '(5 . 0.671895988577) '(4 . 0.114554984412) #f (lambda (x) (/ x 984)))
  c4*1/2
  \once \override NoteHead #'stencil =
  #(make-spermazoid-rel '((70 47 44 30 61 39 )(30 53 45 37 54 )(59 43 36 35 46 )35) '(5 . 0.812772369748) '(4 . 0.93483876149) #f (lambda (x) (/ x 481)))
  d4*1/2
  \once \override TupletNumber #'text = #(markup #:note "4." UP "+" #:note "8" UP)
  \times 1/1 {
  \once \override NoteHead #'stencil =
  #(make-spermazoid-rel '((50 0 40 30 60 40 )(30 40 30 37 10 )(59 43 -36 35 -46 ) (59 43 -70 35 -90 ) 35) '(5 . 0.812772369748) '(4 . 0.93483876149) #f (lambda (x) (/ x 4)))   
   e4*3/4 c4*1/4 a4*1/2 a4*1/2
  } 
%  \once \override TupletNumber #'text = #(markup #:note "4" UP)
%  \times 1/1 {
  \once \override NoteHead #'stencil =
  #(ly:stencil-rotate (make-spermazoid '((30 0 100 -50 100 -60) (60 15 50 10 100) (50 130 300 160 640) 40) '(5 . 0.6) '(3 . 0.9) #t (lambda (x) (/ x 2))) 10 0 0)    
    d4^\f^\>
%  }
  \once \override NoteHead #'stencil =
  #(make-spermazoid-rel '((32 66 34 47 44 48 )(44 69 55 46 45 )(45 37 61 64 67 )37) '(5 . 0.0715428279671) '(4 . 0.733936896452) #t (lambda (x) (/ x 277)))
  b4*1/2
  \once \override NoteHead #'stencil =
  #(make-spermazoid-rel '((64 46 40 34 54 34 )(47 63 57 30 67 )(30 47 39 37 69 )41) '(5 . 0.0552325820079) '(4 . 0.821761102191) #t (lambda (x) (/ x 820)))
  a4*1/2\p
  \saNormal \ziggliss
  e2.^\sf^\< \glissando \grace { \stemTrans <\parenthesize dis'>4\ff } r4 | \unStemTrans
  R2 |
  c,8^\mf^\spiritualFRENCH des ees r r16 aes4. r16 |
  \cricket r8 c,16^\mf \saNormal ees32-\staccatissimo des'-\staccatissimo
    r16 \cricket c,16-\staccatissimo
      \goalposts \stemTrans
      \clef treble
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((37 58 39 34 56 55 )(32 46 62 32 58 )(52 46 47 53 42 )39) '(5 . 0.578108026133) '(4 . 0.414946955996) #t (lambda (x) (/ x 431)))
      b'4*1/2^\markup \fontsize #-2 \parenthesize \note #"8" #UP
    \unStemTrans
    \cricket c,4^\beeFRENCH ~
    \times 2/3 { c8 \saNormal eis16-. } fis8-. |
  \once \override BendAfter #'stencil = #bend-into::print
  \bendAfter #3
  \times 2/3 { f^\f^\markup \italic "cf soprano" ees4 }
    ees8-. aes32 \ziggliss des,16. \glissando
    s4*2/3 g8*2/3-.
    \acciaccatura { g16 } \goalposts \stemTrans
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel (crude-bloat-y '((37 44 30 59 67 37 )(67 38 63 64 42 )(35 31 34 69 36 )48) 5) '(5 . 0.616999003381) '(4 . 0.481947111802) #f (lambda (x) (/ x 909)))
      f4^\markup \fontsize #-2 \parenthesize \note #"4" #UP |
  \once \override TupletNumber #'text = #(markup #:note "4." UP)
  \times 1/1 { b4*1/2
      \once \override NoteHead #'stencil =
    #(make-spermazoid-rel (crude-bloat-y '((35 63 60 58 52 70 )(52 52 49 48 40 )(34 51 -39 48 -33 ) (30 60 -30 60 -30) 70) 4) '(5 . 0.00418315202776) '(3 . 0.862663912239) #t (lambda (x) (/ x 547)))
    g4 } \unStemTrans \saNormal b32-. fis-. b,-. r
    \goalposts \stemTrans
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel (crude-bloat-y '((50 60 45 54 56 56 )(35 44 55 59 67 )(48 70 66 41 47 )43)3) '(5 . 0.704513165085) '(4 . 0.220497419738) #t (lambda (x) (/ x 1)))
      g'4*3/4^\markup \fontsize #-2 \parenthesize \note #"8." #UP \unStemTrans
        \cricket c,16
      c8 r16 c16 |
  c8 r32 c16
    c8 r32 c16
    c8 r32 c16
    c8 r32 c16
    c8 |
  \times 4/5 {
    c16 c c c c }
  \times 4/5 { c c c c c }
  \times 4/5 { c c c c r } r4^\fermata |
  \saNormal
  R1 |
  r2. deh''4^\p ~ |
  deh \acciaccatura { eeh16 } deh4 \glissando s2 |
  s1 |
  s4 c8 r8 r2 |
  R1 |
  \once \override Hairpin #'padding = #5
  ees,4^\mp^\<^\overtoneFRENCH \glissando s2. |
  s4 c'^\mf^\>\glissando s4 a8^\p \glissando \times 2/3 { c16 r16 }
  \feelingLucky
  \once \override TupletNumber #'text = #(markup #:note "2" UP)
  \times 1/1 {
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((40 10 35 10 30 10 )(30 30 10 25 10 )(30 20 10 15 10 ) 0) '(5 . 0.378134681064) '(4 . 0.304392443306) #f (lambda (x) (/ x 1)))
      f,,4*1/2^\mf^\withBassFRENCH
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((40 10 35 10 30 10 )(30 30 10 25 10 )(30 20 10 15 10 ) 0) '(5 . 0.378134681064) '(4 . 0.304392443306) #t (lambda (x) (/ x 1)))
      a4*1/2
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((40 10 35 10 30 10 )(30 30 10 25 10 )(30 20 10 15 10 ) 0) '(5 . 0.378134681064) '(4 . 0.304392443306) #f (lambda (x) (/ x 1)))
      g4*1/2
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((40 10 35 10 30 10 )(30 30 10 25 10 )(30 20 10 15 10 ) 0) '(5 . 0.378134681064) '(4 . 0.304392443306) #t (lambda (x) (/ x 1)))
      b4*1/2
  }
    \revert TupletNumber #'text
    \revert TupletNumber #'Y-offset
  \saNormal
  \times 2/3 { r16 } r4.. bes'16^\espressivo |
  r8.
      des16 s4 s4 s4 |
  s1 |
  des8-. r8 r4 \cricket \times 2/3 { r16 c,, c8 c } \times 2/3 { c c r } |
  \feelingLucky
  \stemDown
  \grace { s8 }
  \override TupletNumber #'text = #(markup #:note "2" UP)
  r8
   \times 1/1 {
     \override NoteHead #'stencil = #(make-spermazoid-rel '((31 34 34 39 36 42 )(60 30 46 35 46 )(47 38 49 43 54 )(51 45 55 50 57 )(40 55 61 60 65 )35) '(5 . 0.951983182076) '(4 . 0.615403509191) #t (lambda (x) (/ x 1)))
     a'4*2/3
     \override NoteHead #'stencil = #(make-spermazoid-rel '((61 53 63 58 68 59 )(35 59 62 62 65 )(36 66 70 66 71 )(51 70 76 74 77 )(49 77 78 79 81 )37) '(5 . 0.81072298595) '(4 . 0.444315018266) #t (lambda (x) (/ x 1)))
     f4*2/3
     \override NoteHead #'stencil = #(make-spermazoid-rel '((67 43 67 44 67 45 )(49 60 48 60 49 )(44 65 53 68 56 )(70 72 58 72 62 )(35 77 66 80 67 )40) '(5 . 0.25619352992) '(4 . 0.415498788062) #f (lambda (x) (/ x 1)))
     g4*2/3 } \stemNeutral \saNormal \revert NoteHead #'stencil cis16^\mp e, \cricket \tri c \saNormal \acciaccatura { f } e8->^\sf ~ e16 \glissando |
  \times 4/6 { b'16 a gis fis8 gis32 ( \glissando dis ) }
    \times 4/5 { dis8 ais'16 ais' bis ~ }
    \bendAfter #-2 bis32-\staccatissimo eis,,16 cis d32 d fis
    \times 2/3 { e8^\> d e\mp } |
  \feelingLucky
  r8
  \stemDown
  \override TupletNumber #'text = #(lambda (grob) (broken-tuplet-text grob (list (markup #:note "2.." UP) (markup #:note "2." UP))))
  \times 1/1 { 
    \once \override NoteHead #'stencil =
    #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 215) 100) '(5 . 0.2) '(3 . 0.4) #f (lambda (x) (/ x 4)))
    d'4*1/2^\mp
    \once \override NoteHead #'stencil =
    #(ly:stencil-rotate (make-spermazoid '((30 0 100 10 100 50) (60 50 80 70 150) (30 70 250 70 200) 100) '(5 . 0.6) '(3 . 0.9) #t (lambda (x) (/ x 2))) 10 0 0)
    b4
    \once \override NoteHead #'stencil =
  %  #(make-spermazoid '((60 90 50 30 70 50) (50 40 100 80 180) (30 10 210 10 215) 10) '(4 . 0.9) '(3 . 0.4) #t values)
    #(make-spermazoid '((20 0 40 00 55 10) (30 20 80 40 170) (30 05 210 05 215)  100) '(4 . 0.2) '(4 . 0.1) #t (lambda (x) (/ x 4)))
    c4*3/4
    \once \override NoteHead #'stencil =
    #(make-spermazoid '((60 10 50 30 70 20) (50 40 -20 40 0) (50 40 20 40 0) (50 40 -20 40 0) (50 40 20 40 0) (50 40 -20 40 0) (50 40 20 40 0) 10) '(4 . 0.9) '(3 . 0.4) #f values)
    a4*3/4
    \once \override NoteHead #'stencil =
    #(make-spermazoid '((260 0 270 1 300 40) (100 10 100 20 150) 10) '(5 . 0.3) '(4 . 0.4) #t (lambda (x) (* x x)))
    g'4*3/2
    \once \override NoteHead #'stencil =
    #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 315) 10) '(5 . 0.2) '(3 . 0.4) #f (lambda (x) (/ x 4)))
    d4
    \once \override NoteHead #'stencil =
    #(ly:stencil-rotate (make-spermazoid '((260 0 250 10 200 50) (200 40 100 80 180) (30 10 210 10 215) (30 40 210 40 300) (100 40 430 50 480) 10) '(5 . 0.4) '(3 . 0.1) #t (lambda (x) (sqrt x))) 15 0 0)
    e4
  } r4 |
  \cricket \stemDown c8.^\veryhighFRENCH \stemUp c,16 c16 \times 2/3 { c16 c c }
  \stemNeutral
  \saNormal cis^\mp ( \glissando
    s8*4/6 %{GLISS%} cis'16*4/6 ) fis,16*4/6 dis16*4/6 e16*4/6 fis'16 a, f!8->^\f\glissando |
  \times 8/9 { e'32 cis^\p dis, e ais16-\staccatissimo bis32.^\f gis }
    dis16 e dis''^\pp bis^\< \glissando
    s16 s32 %{GLISS%} e,,32^\f e16 f
    cis^- e dis dis
  \times 4/6 { cis'^\mp cis'8-\staccatissimo a16 ais8^\sfp^\< \glissando }
    %{GLISS%} s8*2/3 ais,8*2/3^\f \glissando fis'8*2/3-.
    fis,16 cis' a32^\> a gis gis
    \times 2/3 { \bendAfter #-2 cis4^-^\mp^\cawFRENCH eis,16 fis } |
  \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text
  \times 11/18 { \bendAfter #3 bes8.^-^\< a16 aes g \bendAfter #5 bes8.^- a16 aes g \bendAfter #8 bes8.^- a16 aes g } bes16^\ff
    g'8^\> \glissando \times 2/3 { g, f'16^\p } |
  \times 4/6 { cis'16-\staccatissimo cis-\staccatissimo ais,-\staccatissimo gis8-\staccatissimo ais'16 }
    b8^\< \glissando fis,16^\f fis
    \times 4/5 { cis''8^\mp ais,16 gis gis }
    \times 4/5 { cis, \bendAfter #-3 eis'4^\espressivo } |
  \times 4/5 { r8 f16^\mf cis b }
    b g'8 \glissando b,32 cis b8-\staccatissimo cis-> \glissando (
    dis16 ) ais ais ais' \glissando ( |
  gis, ) r8. r4 r2 |
  r2 \cricket c,16 c8 c16 r4 |
  r4 r16 c c8 c16 r8. r8 c16 c |
  r8. c16 c \tri c8.^\f ~ \tri c8 c16^\mf c r4 |
  r2.
  \footnote \markup { "" } #'(0 . 0) #'NoteHead \appoxFRENCH
  \feelingLucky \clef treble \override NoteHead #'style = #'default
      %\once \override NoteHead #'stencil =
      % #(make-spermazoid-rel '((51 52 55 52 57 52 )(35 49 54 52 56 )(34 53 58 53 60 )(68 55 61 55 61 )(30 59 61 62 62 )34) '(5 . 0.835281875121) '(4 . 0.920967394837) #t (lambda (x) (/ x 1)))
      f4*116/139^"*"
    %\once \override NoteHead #'stencil =
     %  #(make-spermazoid-rel '((57 56 58 59 58 64 )(66 48 64 52 66 )(50 52 67 55 68 )(43 59 70 64 71 )(42 69 71 69 71 )44) '(5 . 0.310662514461) '(4 . 0.0290533486501) #t (lambda (x) (/ x 1)))
      b4*58/139
    \once \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-y '((30 60 30 30 30 15) (30 30 6 30 0) 4) 3) '(5 . 0.690148208726) '(4 . 0.348686820964) #t (lambda (x) (/ x 4)))
      b4*116/139
r8*116/139
    \once \override NoteHead #'stencil =
       #(extend-base-note-head 200)
      b4*116/139
    \once \override NoteHead #'stencil =
       #(make-spermazoid-rel '((100 0 100 5 100 10) (70 40 20 40 25) 1) '(4 . 0.482559903255) '(3 . 0.40674225175126) #t (lambda (x) (/ x 3)))
      b4*174/139
r8*116/139
    %\once \override NoteHead #'stencil =
     %  #(extend-base-note-head 200)
      b4*58/139
r8*116/139
%{
    \once \override NoteHead #'stencil =
       #(make-spermazoid-rel '((40 0 30 1 40 3) (50 40 10 40 20) (50 40 20 40 30) 2) '(4 . 0.586658555279) '(3 . 0.944686258717) #f (lambda (x) (/ x 1)))
      b4*174/139
%}
    \once \override NoteHead #'stencil =
       #(make-spermazoid-rel '((40 0 30 1 40 3) (50 40 10 40 20) (50 40 20 40 30) 10) '(4 . 0.586658555279) '(3 . 0.944686258717) #f (lambda (x) 0))
      b4*22/139
\saNormal
e,16^\pp
\feelingLucky
    \once \override NoteHead #'stencil =
       #(make-spermazoid-rel '((40 0 30 1 40 3) (50 40 10 40 20) (50 40 20 40 30) 2) '(4 . 0.586658555279) '(2 . 0.944686258717) #f (lambda (x) (/ x 1)))
      c'4*469/556^\mf
r8*116/139
    \once \override NoteHead #'stencil =
       #(make-spermazoid-rel '((100 0 200 5 100 10) (120 30 10 40 25) 1) '(4 . 0.482559903255) '(3 . 0.40674225175126) #t (lambda (x) (/ x 3)))
      b4*203/139
    %\once \override NoteHead #'stencil =
     %  #(make-spermazoid-rel '((69 32 73 32 76 35 )(41 66 35 67 36 )(62 72 37 76 37 )(46 78 37 83 39 )(39 88 41 93 43 )37) '(5 . 0.710233767015) '(4 . 0.797191755801) #t (lambda (x) (/ x 1)))
      b4*174/139
    \once \override NoteHead #'stencil =
       #(make-spermazoid-rel '((50 50 40 30 50 30) (40 30 20 30 10) (40 30 5 30 0) 2) '(4 . 0.966599103383) '(4 . 0.356967701711) #t (lambda (x) (/ x 1)))
      b4*145/139
r8*116/139
    %%%%% HERE
%\once \override NoteHead #'extra-spacing-width = #'(+inf.0 . -inf.0)
\once \override NoteHead #'Y-extent = #'(0 . 0.1)
    \once \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-y '((20 10 150 150 150 -50) (50 40 -30 60 -10) 49) 12) '(5 . 0.427110042554) '(4 . 0.471785993805) #f (lambda (x) (/ x 1)))
      d4*348/139
r8.*116/139
    \once \override NoteHead #'stencil =
       #(make-spermazoid-rel '((48 49 83 40 85 45 )(86 40 45 44 45 )(41 46 45 41 45 )(41 45 45 48 47 ) 47) '(4 . 0.251829998894) '(3 . 0.256745221573) #t (lambda (x) (/ x 4)))
      f4*232/139^\espressivo
r8*116/139
    %\once \override NoteHead #'stencil =
       %#(make-spermazoid-rel '((46 57 50 58 55 60 )(35 45 60 45 61 )(47 50 62 53 63 )(70 56 65 58 67 )(43 59 68 63 70 )48) '(5 . 0.740134723015) '(4 . 0.567139221242) #t (lambda (x) (/ x 1)))
      e4*58/139
    %\once \override NoteHead #'stencil =
     %  #(make-spermazoid-rel '((43 36 48 39 50 40 )(38 45 40 45 40 )(40 48 41 53 43 )(44 56 45 59 45 )(55 61 46 62 46 )50) '(5 . 0.98511866707) '(4 . 0.384467928574) #t (lambda (x) (/ x 1)))
      e4*58/139
    %\once \override NoteHead #'stencil =
     %  #(make-spermazoid-rel '((45 36 49 41 53 41 )(41 45 42 48 42 )(45 49 42 51 44 )(58 55 45 59 45 )(40 63 45 68 46 )42) '(5 . 0.608465767931) '(4 . 0.640178400897) #t (lambda (x) (/ x 1)))
      c4*58/139
    %\once \override NoteHead #'stencil =
     %  #(make-spermazoid-rel '((65 55 69 60 69 62 )(48 60 63 62 64 )(36 63 64 65 65 )(49 70 65 71 67 )(57 76 69 78 71 )45) '(5 . 0.67552693279) '(4 . 0.646819457884) #t (lambda (x) (/ x 1)))
      c4*58/139
    %\once \override NoteHead #'stencil =
     %  #(make-spermazoid-rel '((59 62 60 65 65 66 )(60 59 68 61 68 )(65 63 70 67 72 )(46 68 73 71 73 )(66 76 74 78 76 )35) '(5 . 0.272470644874) '(4 . 0.911530807192) #t (lambda (x) (/ x 1)))
      a4*58/139
    %\once \override NoteHead #'stencil =
     %  #(make-spermazoid-rel '((61 55 63 55 66 59 )(52 61 60 65 61 )(48 65 62 66 64 )(51 66 65 71 65 )(65 74 65 74 66 )33) '(5 . 0.935554795496) '(4 . 0.984217004325) #t (lambda (x) (/ x 1)))
      a4*58/139
    %\once \override NoteHead #'stencil =
     %  #(make-spermazoid-rel '((48 53 52 56 52 57 )(62 42 59 42 59 )(32 42 59 47 61 )(68 52 62 56 62 )(46 56 62 58 63 )32) '(5 . 0.329363602002) '(4 . 0.42926312446) #t (lambda (x) (/ x 1)))
      b4*116/139
r4.*116/139
    \once \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((50 5 30 15 20 10) (10 45 10 40 0) 50) 5) '(5 . 0.40855959049125) '(3 . 0.0919795069917) #t (lambda (x) (/ x 3)))
      b4*116/139^\mp
    \once \override NoteHead #'stencil =
       #(make-spermazoid '((40 10 40 20 40 30) (40 40 40 40 30) (40 40 10 40 0) 5) '(5 . 0.27533687003) '(4 . 0.751943088923) #f (lambda (x) (/ x 2)))
      f4*116/139
r8*116/139
    %\once \override NoteHead #'stencil =
     %  #(extend-base-note-head 300)
      g4*116/139
r4*116/139
    \once \override NoteHead #'stencil =
       #(ly:stencil-rotate (make-spermazoid-rel (crude-bloat-y '((40 10 30 10 20 10) (20 20 20 20 20) (20 20 10 20 10) (20 20 10 20 10) (20 20 10 20 10) 0) 14) '(5 . 0.126729178736) '(4 . 0.378643344151) #t (lambda (x) (/ x 1))) 00 0 0)
      f'4*348/139^\mf
r8*116/139
\cricket \stemTrans \tri
%    \once \override NoteHead #'stencil =
%       #(make-spermazoid-rel '((66 52 68 55 71 60 )(67 63 62 64 63 )(40 67 63 70 63 )(36 75 63 78 63 )(30 81 63 85 65 )33) '(5 . 0.275980962978) '(4 . 0.698481233385) #t (lambda (x) (/ x 1)))
      c,4*116/139 \unStemTrans |
}

altoGlissando = \relative c'' {
  $(skip-of-length tperc)
  s1
  s1
  s1
  s4.
  s4
  s1*2
  s1
  \noLed \override NoteHead #'transparent = ##t d4 e s2 s2 |
  s1
  s1. |
  \repeat unfold 2 { s4 \bar "" }
  s8. \bar ""
  \repeat unfold 4 { s4 \bar "" } \bar "|"
  s1*7/8 |
  s1*5/4
  s2 |
  s1 |
  s1 |
  s1 |
  s2. |
  s2 |
  s1 |
  s2. |
  s1
  s1
  s1
  s1
  s1
  s1
  s2
  s2
  s2
  s2
  s1 | 
  s1 |
  s1 |
  s4. |
  $(skip-of-length powerText)
  $(skip-of-length nineStarsText)
  s4
  s1
  s1
  s2
  s1
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  \preggoSkip
  s2 |
  s4*5
  s1 |
  s1*5/4 |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4 |
  s1 |
  s2 |
  s1 | 
  s2 s16^\p^\< s^\f^\> s^\p^\< s^\f^\> s16*2/3 s16*2/3\p s16*2/3^\mp s8 |
  s2
    \override Stem #'length = #7
    \override TupletBracket #'direction = #UP
    \times 2/3 { \stemUp ees,4 \stemTrans g8 }
    s4 | \unStemTrans
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s2 c4 c |
  c c c c |
  c s2. |
  s1 |
  s4 f, g a |
  b s b s |
  s1 |
  \override Voice . Glissando #'bound-details #'right #'padding = #0
  
  s8. \noStem des'16^\mp^\< \glissando
\override NoteHead #'stencil = #empty-stencil
  \override NoteHead #'style = #'harmonic

  \override Voice . Glissando #'bound-details #'left #'padding = #0

\stemDown e4 \glissando e \glissando e \glissando |
  e \glissando f \glissando f \glissando e \glissando |
  \revert Voice . Glissando #'bound-details #'right #'padding
  \noStem d8^\f s8 s2. |
  \revert Voice . Glissando #'bound-details #'left #'padding
  \revert NoteHead #'stencil
  \revert NoteHead #'style
  s1 |
  s1 |
  s1 |
  s1 |
  \override TupletBracket #'direction = #UP
  \override Accidental #'stencil = ##f
  \autoBeamOff
  s2 \times 4/6 { \stemUp e,,16 \stemDown a16 s8. \stemInv e16 } s4 |
  s2 f'16 a,32 s32 s8 s4 |
  s4 \times 2/3 { d8 \stemUp \stemInv a8 \stemDown \stemInv fis } s2 |
}

altoWords = \lyricmode {
  gan shi nan bao sine ho see
  nein
  how now brown cow
  \repeat unfold 3 gna
  gao
  yes
  heu
  hai 
  %%% THOUGHTS I
  \markup \center-column { 矯 jiăo } \markup \center-column { 矯 jiăo } \markup \center-column { 珍 zhēn } \markup \center-column { 木 mù, } \markup \center-column { 巔， diān. } \markup \center-column { 得 dé } \markup \center-column { 無 wú } \markup \center-column { 金 jīn } \markup \center-column { 丸 wan } \markup \center-column { 懼？ jù? }
  \markup \center-column { 美 mĕi } \markup \center-column { 服 fú } \markup \center-column { 患 huàn } \markup \center-column { 人 rén } \markup \center-column { 指， zhĭ, } \markup \center-column { 高 gāo } \markup \center-column { 明 míng } \markup \center-column { 逼 bī } \markup \center-column { 神 shén } \markup \center-column { 惡。 ĕ. }
  %hoi
  no hoi ɬ
  %\repeat unfold 6 { wa -- ter }
  mais at -- tends, c'est trop "bien !"
  dik hoi
  t t
  %%% ON CLIMBING ORCHID MOUNTAIN IN THE AUTUMN TO ZHANG
  \skip 1
  i
  \markup \center-column { 天 tiān } \markup \center-column { 邊 biān } \markup \center-column { 樹 shù } \markup \center-column { 若 ruò } \markup \center-column { 薺， jì } \markup \center-column { 江 jiāng } \markup \center-column { 畔 pàn } \markup \center-column { 洲 zhōu } \markup \center-column { 如 rú } \markup \center-column { 月。 yuè }
  %\markup \center-column { 何 hé } \markup \center-column { 當 dāng } \markup \center-column { 載 zăi } \markup \center-column { 酒 jiŭ } \markup \center-column { 來， lái } \markup \center-column { 共 gòng } \markup \center-column { 醉 zuì } \markup \center-column { 重 chóng } \markup \center-column { 陽 yáng } \markup \center-column { 節。 jié }
  o -- ra -- cle
  À ma très chère Chou -- chou a -- vec les ten -- dres ex -- cuses de son père pour ce qui
  pfff
  you
  gung sai nan bou ki
  gung tzing ha tung tchi a ou zih vun da um de ha
  hoi
  take my star oh
  chouit bi dik k gou
  zzz zit toup
  ga o kin di hoi dum iao
  dum
  ao
  di ga dum
  ao \repeat unfold 7 { dol -- lar }
  \repeat unfold 3 { ni -- nety nine cent }
  \markup \center-column { 美 mĕi } \markup \center-column { 元 yuán } \skip 1
  \markup \center-column { 甲 jiă} \markup \center-column { 骨 gŭ } \markup \center-column { 文 wén } \skip 1
  gung chao yao tzi
  you
  \markup \center-column { 笑 xiào } \skip 1
  Oh o -- ra -- cle I'm
  hoi tzi ai
  shtim dou
  thk hai
  shtim i da hank shtim
    ank zim zim ouiou doum doum di gi da χa sha da  
  i zao hi o si ao gun
  a ha ha ha wa -- ter vrou
    a di bi
    dook haik staln
  zi ou du bu dak ah i
    zu gu zhi diou
    wuh djuv djuv
    χa zha vla la
  dou tchi dum oi
    ao oui
    doum dim ar ba dou dul
    aw djoum it
  \repeat unfold 3 { oi di bi dou }
  oi dio wit kit
  i bi ou gou
    wi ouim djou djou
    git woa na na bit tchiou
  a ba djin djin
    kou oua tzi
    tzou ti
    vouah thuh tzi
  \repeat unfold 2 { ar -- rê -- te }
  \repeat unfold 2 { wa -- ter }
  shh
  wa -- ter
  in vai nou chin haou ni ba Schloß o i sai hao si ni lu -- cky lu -- cky lu -- cky wok oum tzi bou si tch
}

tenor = \relative c' { #(set-accidental-style 'neo-modern)
  \autoBeamOff
  \cricket
  \tperc
  \cricket
  R1 |
  R1 |
  r2.... \tri c32^\f |
  \tNormal
  c8^-^\mf c^- c^- |
  r4
  b'8^\f d b a b a a4 |
  fis8 a fis e fis e e r |
  \cricket
  c4-.^\f^\gruntFRENCH r \tNormal % << { ees2^^^\> \glissando | \stemDown
%  s2. \noLed c'4^\pp } \\ { \xCircle b,2^\gongFRENCH \noLed \override NoteHead #'transparent = ##t g'4 a b } >>
%  r2 |
%  b,8 ais b c c^\f ees f ees |
  \once \override Stem #'direction = #UP
  ees2^^^\> ( \glissando |
  s2. \noLed \once \override Stem #'direction = #DOWN c'4^\pp ) r2 |
  \revert NoteHead #'no-ledgers
  b,8 ais b c c^\f ees f ees |
  c bes c ees f ges f ees c bes c ees |
  s4*6 s8.
  R1*7/8 |
  \cricket r4 \tri c1:16^\mf^\lipSmackingFRENCH |
  \times 2/3 { r8 c^\f^\laughterFRENCH c } \times 2/3 { c c r } |
  R1 |
  \tNormal
  ees,2^\f^\frenchFRENCH \ziggliss b'4..^\mp^\< ( \glissando gis'16-. ) |
  \bendAfter #-2 cis16-.^\mf
  \cricket
  c,^\f c8 \times 2/3 { c8 c4 } \times 2/3 { c8 c4 } \times 2/3 { c8 c4 } |
  \times 2/3 { c8 c4 } \times 2/3 { c8 c4 } \times 2/3 { c8 c4 } |
  R2 |
  r4 \saNormal c'2.^\mp ~ |
  c16 g'^\mf^\squirrelFRENCH e d e d b d b a gis \cricket \tri c,16 %{χ%} |
  \times 2/3 { \tri c8-. %{ç%} \saNormal d'16 %{ni%} \cricket \tri c, %{p%} \tri c16-. %{t%} r32 \saNormal \hairlen #4 b''^\p^\< %{di%} ~ }
    \times 2/3 { b4^\f  \glissando d,,8^\spanishRFRENCH %{rou (r roulé)%} \glissando }
    \times 4/5 { e'8-\staccatissimo %{ih%} dis'-\staccatissimo %{fiht%} \hairlen #4 e16^\p^\< %{di%} \glissando }
    d,,8\f %{ou%} \cricket \tri c16 %{ɬ%} \tri c %{ɬ%} 
  \times 4/5 { \tri c8-\staccatissimo^\mf  %{t%} \feelingLucky
      \once \override TupletNumber #'text = #(markup #:note "8" UP)
      \once \override NoteHead #'stencil =
      #(make-spermazoid '((20 0 40 00 55 10) (30 20 80 40 170) (30 05 210 05 215)  100) '(4 . 0.2) '(4 . 0.1) #f (lambda (x) (/ x 4)))
      c^\markup \parenthesize \fontsize #-2 \note #"8" #UP %\times 1/1 { c } %{oui%}
        \cricket \tri c16-\staccatissimo %{q%} }
    \revert TupletNumber #'text
    \revert TupletNumber #'Y-offset
    \times 2/3 { r8 \tri c16-. %{t%} }
      \feelingLucky
%      \once \override TupletNumber #'text = #(markup #:note "8" UP)
      \once \override NoteHead #'stencil =
      #(make-spermazoid '((20 0 40 00 55 10) (30 20 80 40 170) (30 05 210 05 215)  100) '(4 . 0.2) '(4 . 0.1) #t (lambda (x) (/ x 4)))
      c8^\markup { \parenthesize \fontsize #-2 \note #"8" #UP } %{oui%} %\times 1/1 { c8 } %{oui%}
    \saNormal \times 2/3 { aes'8^\f %{doum%} f %{doum%} \cricket \tri c^\mf %{t͡ʃç%} }
    \tri c16 %{wuh%} \tri c8.^\spitFRENCH^\espressivo %{tchiou%} |
  \tri c8-\staccatissimo %{t%} \tri c32 \tri c32 \tri c32 \tri c32 %{d m d m%} 
    \saNormal b''16^\p %{dih%} cis8^\< %{diou%} \glissando dis,,16^\f %{ɢe%}
    \times 2/3 { \cricket \tri c8^\mf %{t%} \air c^\inhaleFRENCH %{inspiration%} \saNormal \bendAfter #-3 a''8^\f %{bim%} }
    \cricket \tri c,,8-\staccatissimo %{t%} \saNormal fis16-.^\mf^\espressivo %{dim%} \cricket \tri c16
  \tri c4^\ff %{^\ouPersistF%} %{r rolled from ou to i vowel %}
    \tNormal b'16^\mp ^\puckerFRENCH %{lip smacking ... mim%} g %{mum%} \cricket \tri c, %{m%} \tri c %{m%}
    \tri c %{s%} \tri c %{t%} r8
    r4 |
   r8 \tri c4.^\f ~ %{ç%} \tri c2 %{dentist%} |
   \tri c1^\dentistFRENCH ~ |
   \tri c2 ~ \times 2/3 { \tri c4 \saNormal d'8^\mf ( ~ } d4 \glissando |
   c4 ) r4 |
  R2 |
  R1 |
  R1 |
  r8 \monologue \FatText \MonoShift
  \override TextScript #'whiteout = ##t
  s8.^"here's" s8.^"a" s4^"fucking" s4^"star"
  \unFatText \unMonoShift
  \revert TextScript #'whiteout
  R4. |
  \monologue \FatText \MonoShift
  \override TextScript #'whiteout = ##t
  s4^"I" \bar "" s4^"have" \bar "" s4^"five" \bar "" s4^"stars," \bar "" s4^"you" \bar "" s4^"give" \bar "" s4^"me" \bar "" s4^"power" \bar "" 
  \unFatText \unMonoShift
  \revert TextScript #'whiteout
  $(skip-of-length nineStarsText) \tNormal bes4^\espressivo^\mf
  R1 |
  R1 |
  R2 |
  \cricket
  r2. r16 \tri c,8. ~ |
  \tri c4 \bendAfter #-2 c8 r8 r2 |
  r2 r8 c8^\slowDiphthongFRENCH ~ c4 ~ |
  c4 r4 c2 |
  r4 c4 ~ c4. r8 |
  r8. \saNormal \times 9/15 { b'16 d b a b a a8 fis16 a fis e r8. }
  r8
  \monologue
  \FatText \MonoShift
  \override TextScript #'whiteout = ##t
  s8^"Oh" |
  s4^"oracle," \bar "" s4^"I'm" \bar "" s4^"pregnant" \bar "" s4^"with" \bar "" s4^"your" \bar "" s4^"star."
  \unFatText \unMonoShift \revert TextScript #'whiteout
  s4*9 s16
  \tNormal
  r4 ees8^\espressivo^\mf r8 |
  s1 s8 \cricket \override NoteHead #'style = #'triangle c8^\mp^\waterGunFRENCH 
  c8 r4 c8 r4. c8 |
  c r8 r8. c16 r8 c8 ~ c8. c16 r8 c16 c |
  \tNormal
  \once \override TupletNumber #'text = #(markup #:note "4." UP "+" #:note "8" UP)
  bes8^\f bes g |
  R4. |
  fis'16^\mp^\asiaFRENCH dis8 \bendAfter #-2 fis8. |
  e8. fis8 b,16 ~ |
  b cis8 \feelingLucky
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel '((63 54 62 35 63 45 )(55 63 63 48 69 )(32 70 68 37 65 ) 100) '(5 . 0.326146273239) '(4 . 0.563352469366) #t (lambda (x) 0))
  d4*3/4
  r16
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel '((34 62 44 63 57 46 )(70 67 54 49 67 )(41 53 69 46 41 )37) '(5 . 0.375801042849) '(4 . 0.891003307627) #t values)
  e4*1/2 r16 |
  \tNormal
  r2 a,4^\sf^\< \glissando \grace { \stemTrans <\parenthesize bes,>\ff } \unStemTrans r4 |
  \cricket \times 2/3 { c'8^\mp^\tenderFRENCH c c } r4 |
  \tNormal
  c8^\mf^\spiritualFRENCH des c r r16 ges'4. r16 |
  R1 |
  R1 |
  \feelingLucky
  %\once \override NoteHead #'stencil = 
  %#(make-spermazoid-rel '((44 43 65 43 35 40 )(58 54 70 31 52 )(53 69 42 63 61 )(47 66 43 43 33 )(67 46 37 67 67 )43) '(5 . 0.559975537335) '(4 . 0.332823777941) #t (lambda (x) (/ x 709)))
  a,8*4/5^\p^\<
  %\once \override NoteHead #'stencil = 
  #(make-spermazoid-rel '((45 38 55 62 64 50 )(50 31 65 50 34 )(62 56 49 64 35 )(49 45 31 42 62 )(64 58 46 45 33 )30) '(5 . 0.472765497143) '(4 . 0.579762043746) #t (lambda (x) (/ x 589)))
  a8*4/5
  %\once \override NoteHead #'stencil = 
  %#(make-spermazoid-rel '((67 43 37 41 63 35 )(44 54 31 58 49 )(43 57 66 32 58 )(67 53 65 57 48 )(57 53 34 45 61 )40) '(5 . 0.917747079026) '(4 . 0.405550027237) #t (lambda (x) (/ x 816)))
  c8*4/5
  %\once \override NoteHead #'stencil = 
  %#(make-spermazoid-rel '((54 58 53 38 65 69 )(36 38 33 42 52 )(56 62 33 45 37 )(50 68 65 47 45 )(45 65 31 61 56 )45) '(5 . 0.750194538004) '(4 . 0.45974700124) #t (lambda (x) (/ x 788)))
  c8*4/5
  \once \override NoteHead #'stencil = 
  #(make-spermazoid-rel '((37 49 47 63 36 49 )(31 52 64 31 58 )(50 51 47 40 57 )(37 39 70 65 65 )(39 57 45 41 39 )39) '(5 . 0.666289881351) '(4 . 0.242082009467) #f (lambda (x) (/ x 164)))
  g4*4/5
  \once \override NoteHead #'stencil = 
  #(make-spermazoid-rel '((49 34 52 52 59 47 )(50 51 35 63 38 )(46 56 39 50 68 )(50 66 49 33 46 )(58 43 66 54 39 )30) '(5 . 0.0727749032864) '(4 . 0.649000114312) #t (lambda (x) (/ x 518)))
  d'4*4/5
  \once \override NoteHead #'stencil = 
  #(make-spermazoid-rel '((31 43 59 30 32 70 )(30 67 43 30 70 )(44 41 38 63 41 )(38 39 48 64 53 )(65 65 61 65 49 )32) '(5 . 0.686152121314) '(4 . 0.883098583211) #f (lambda (x) (/ x 243)))
  a4*4/5 |
  \once \override NoteHead #'stencil = 
  #(make-spermazoid-rel '((35 68 39 51 48 37 )(44 60 69 69 41 )(53 62 42 46 67 )(70 64 59 32 49 )(48 31 37 39 55 )31) '(5 . 0.688411612737) '(4 . 0.00986490550512) #t (lambda (x) (/ x 1)))
  a4*1/2
  \once \override NoteHead #'stencil = 
  #(make-spermazoid-rel '((64 63 36 32 40 50 )(64 42 63 68 37 )(55 70 63 67 35 )(52 32 43 41 38 )(45 60 68 54 35 )46) '(5 . 0.725242311557) '(4 . 0.875376140589) #f (lambda (x) (/ x 1)))
  d4*1/2
  \once \override NoteHead #'stencil = 
  #(make-spermazoid-rel '((62 43 62 34 39 48 )(43 32 45 36 69 )(62 40 57 54 54 )(56 49 34 38 60 )(30 34 62 33 39 )37) '(5 . 0.707928629574) '(4 . 0.647570501998) #t (lambda (x) (/ x 1)))
  g,4*1/2
  \once \override NoteHead #'stencil = 
  #(make-spermazoid-rel '((53 58 37 37 60 44 )(66 55 38 52 36 )(60 53 52 44 62 )(36 64 37 48 49 )(55 40 47 62 67 )47) '(5 . 0.0719932479108) '(4 . 0.168855094326) #f (lambda (x) (/ x 1)))
  c4*1/2^\f
  \cricket
  \revert TupletNumber #'text
  \revert TupletNumber #'Y-offset
  \times 2/3 { c8 c4 }
  \times 2/3 { c8 c4 }
  r2. r4^\fermata |
  R1 R1 R1 R1 R1 |
  r2. r8.. \tri c32^\f |
  r16 \tri c r \times 2/3 { c c \tNormal g' ~ } \bendAfter #-2 g a32 fis d e
  \times 2/3 { b'16 fis b, } \feelingLucky \clef bass 
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel (crude-bloat-y '((40 20 35 15 20 20 )(20 20 20 20 25 )(20 20 30 20 45 ) 50) 10) '(5 . 0.510373565022) '(4 . 0.278404683716) #f (lambda (x) (/ x 1)))
    c,4*3/4^>^\wiseFRENCH^\markup \parenthesize \line { \fontsize #-2  \note #"8" #UP + \fontsize #-2 \note #"16" #UP } r8. |
  \cricket
  \revert TupletNumber #'text
  \revert TupletNumber #'Y-offset
  r4. \times 2/3 { r16 c'16^\mf c } \times 4/6 { c r8 r16 c c } \times 4/6 { c c c8 c16 r16 } |
  r4 \saNormal b''8^\p \glissando ( c8 \glissando s4 b8 \glissando c ) |
  \cricket \times 4/5 { c,,16^\mf c r8. } r4 \feelingLucky \clef treble
    \once \override TupletNumber #'text = #(markup #:note "2" UP)
    \times 1/1 {
      s8
      
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((64 70 30 35 55 56 )(24 68 41 63 22 )(22 58 26 53 58 )(52 41 39 68 32 )(20 60 56 39 46 )48) '(5 . 0.593109846886) '(4 . 0.426222137899) #f (lambda (x) (/ x 1)))
        b'4*1/2
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((46 52 58 53 52 43 )(42 50 62 35 45 )(41 50 60 30 39 )(57 24 41 38 52 )(64 36 33 42 53 )50) '(5 . 0.835849334304) '(4 . 0.494632104861) #t (lambda (x) (/ x 1)))
        d4*1/2
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel (crude-bloat-x '((63 58 52 56 60 39 )(32 32 56 31 34 )(50 29 49 49 70 )(56 32 41 60 40 )(68 45 53 38 50 )47) 0.3) '(5 . 0.602946560299) '(4 . 0.0850506502919) #t (lambda (x) (/ x 1)))
        a4*1/2 }
\stemDown
    \once \override TupletNumber #'text = #(markup #:note "8." UP)
    \times 1/1 {
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel (crude-bloat-x '((60 37 51 37 61 40 )(46 21 44 30 48 )(48 58 61 51 33 )(36 26 66 45 36 )(34 36 55 53 65 )31) 0.4) '(5 . 0.791702473031) '(4 . 0.411533887295) #t (lambda (x) (/ x 1)))
        b4*3/8
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel (crude-bloat-x '((10 10 10 10 10 10) (10 10 10 10 10) (10 10 10 10 10) 1) 0.4) '(5 . 0.791702473031) '(4 . 0.411533887295) #t (lambda (x) (/ x 1)))
        c4*3/8
      }
     \cricket
     c,32 c
     \feelingLucky
     \clef treble
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel (crude-bloat-x '((20 20 15 15 10 8) (10 10 0 10 -10) (10 20 10 10 10) 1) 2) '(5 . 0.791702473031) '(4 . 0.411533887295) #t (lambda (x) (/ x 1)))
        a'4^\markup \fontsize #-2 \parenthesize \note #"4" #UP r4 %\times 4/5 { r8 c,16 c r } 
    \revert NoteHead #'style
    \stemNeutral \revert Stem #'stencil
    \clef treble a16 c16. b |
  R1 |
  \cricket
  \grace { s8 } \stemUp
  r4.. \once \override TupletNumber #'text = #tuplet-number::calc-fraction-text \times 7/10 { c,8 c8 c8 c8 c8 } c8 ~ |
  c8 c8 \times 2/3 { c4 c8 ~ } c c4. ~ |
  c2 r8 c4.^\masterFRENCH ~ |
  c4 c4 ~ c4. r8 |
  R1 |
		  %{\goalposts \clef treble \stemNeutral \revert NoteHead #'style
		  r8 \noLed e''4.^\pterosaurFRENCH ~ \bendAfter #-2 e2 |%}
  \tNormal
  r8 c'8 \times 2/3 { d,8 ( a'8. ) r16 } fis,4.^\espressivo^\generatorFRENCH \feelingLucky
     \once \override NoteHead #'stencil = #(make-spermazoid-rel '((37 60 41 63 42 65 )(31 36 70 41 74 )(41 46 74 49 79 )(64 51 80 54 83 )(58 54 83 55 83 )41) '(5 . 0.690196564439) '(4 . 0.730624021345) #t (lambda (x) (/ x 4)))
         b4*1/2 \cricket |
  \tri c4^\ff \tNormal \times 8/9 { d8^\mp^\closedFRENCH ( \glissando gis16-. ) a b c e,8^\< ( \glissando a16\f ) } a \cricket \tri \footnote \markup { "" } #'(0 . 0) #'NoteHead \upsideDownFRENCH c,^"*" \tri c \tri c |
  \tri c16 c16 \feelingLucky \clef "treble_8"
     \once \override NoteHead #'stencil = #(make-spermazoid (crude-bloat-y '((100 0 70 200 70 130) (100 150 70 80 20) 100) 6) '(5 . 0.2) '(3 . 0.4) #t (lambda (x) 0))
      b4^\markup \fontsize #-2 \parenthesize \note #"4" #UP \cricket \tri c16 \tri c
  \feelingLucky \clef treble
  \override TupletNumber #'text = #(lambda (grob) (broken-tuplet-text grob (list (markup #:note "2" UP) (markup #:note "1" UP) (markup #:note "1" UP "+" #:note "1" UP))))
  \times 1/1 {
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((47 51 47 54 49 56 )(48 39 57 40 57 )(61 42 59 47 59 )(44 50 59 53 60 )(40 55 81 58 103 )46) 0.6) '(5 . 0.804195711567) '(4 . 0.147055913031) #f (lambda (x) (/ x 1)))
      b'4*1/2^\mf
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((42 66 46 67 51 72 )(32 46 73 51 74 )(41 56 74 56 74 )(65 61 75 66 77 )(45 68 99 73 151 )36) 0.6) '(5 . 0.419055331247) '(4 . 0.526253111883) #t (lambda (x) (/ x 1)))
      d4*1/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((50 34 54 34 56 38 )(42 51 39 56 40 )(69 61 41 65 42 )(33 69 44 69 45 )(69 69 65 72 75 )41) 0.6) '(5 . 0.188598313855) '(4 . 0.450516059075) #t (lambda (x) (/ x 1)))
      b4*1/2
    \override NoteHead #'stencil =
       #(make-spermazoid (crude-bloat-x '((33 33 34 54 34 76 )(53 25 86 30 106 )(41 31 126 32 106 )(59 34 87 38 69 ) 32) 1.6) '(5 . 0.547156670188) '(4 . 0.637775045602) #f (lambda (x) (/ x 1)))
      g4*1/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((38 69 43 72 47 75 )(53 37 75 40 77 )(46 45 77 48 77 )(64 52 78 56 79 )(36 58 180 61 90 )30) 0.6) '(5 . 0.705241777337) '(4 . 0.559887053532) #t (lambda (x) (/ x 1)))
      c4*1/2
    \override NoteHead #'stencil =
       #(ly:stencil-rotate (make-spermazoid-rel (crude-bloat-x '((30 39 30 44 34 49 )(31 29 49 29 49 )(59 33 50 38 52 )(32 42 53 46 53 )(58 49 55 49 55 )36) 0.6) '(5 . 0.24872376591) '(4 . 0.652815193128) #t (lambda (x) (/ x 1))) 15 0 0)
      b4*1/2
    \override NoteHead #'stencil =
       #(make-spermazoid (crude-bloat-x '((37 35 89 37 109 41 )(69 33 41 36 41 )(40 40 43 43 43 )(56 43 43 44 43 )(35 44 43 44 43 )44) 0.6) '(5 . 0.811797525544) '(4 . 0.455404919072) #f (lambda (x) (/ x 1)))
      f4*1/2
    \override NoteHead #'stencil =
       #(ly:stencil-rotate (make-spermazoid-rel (crude-bloat-x '((67 53 67 53 72 53 )(38 65 54 70 55 )(43 73 57 76 59 )(48 79 60 84 62 )(45 86 62 89 63 )33) 0.6) '(5 . 0.283034671129) '(4 . 0.776061413426) #f (lambda (x) (/ x 1))) -15 0 0)
      g4*1/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((33 38 35 43 35 45 )(55 29 45 33 45 )(54 37 47 37 47 )(62 40 30 45 20 )(31 45 15 48 5 )42) 0.6) '(5 . 0.980457600514) '(4 . 0.755827124671) #t (lambda (x) (/ x 1)))
      a4*1/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((51 41 55 41 56 45 )(48 47 45 52 45 )(30 53 46 54 48 )(44 59 29 61 25 )(40 61 82 66 103 )49) 0.6) '(5 . 0.15255532147) '(4 . 0.615952464754) #t (lambda (x) (/ x 1)))
      g4*1/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((66 61 70 66 73 66 )(58 67 67 67 68 )(43 71 69 72 70 )(41 74 71 77 71 )(41 79 103 81 144 )38) 0.6) '(5 . 0.688500271104) '(4 . 0.467874946965) #f (lambda (x) (/ x 1)))
      g4*1/2
    \override NoteHead #'stencil =
       #(ly:stencil-rotate (make-spermazoid-rel (crude-bloat-x '((49 46 52 48 56 53 )(34 48 55 50 57 )(50 55 58 59 60 )(43 61 61 61 61 )(56 61 61 64 62 )30) 0.6) '(5 . 0.844789873198) '(4 . 0.89334705856) #t (lambda (x) (/ x 1))) 20 0 0)
      e4*1/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((62 46 63 50 63 55 )(66 53 56 55 58 )(49 58 58 59 60 )(43 62 60 65 60 )(61 67 61 71 61 )40) 0.6) '(5 . 0.120901175533) '(4 . 0.873574038867) #t (lambda (x) (/ x 1)))
      a4*3/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((59 46 61 50 66 55 )(52 59 56 63 57 )(34 64 59 64 60 )(70 69 62 69 64 )(44 69 66 74 66 )39) 0.6) '(5 . 0.637267472569) '(4 . 0.667987509857) #f (lambda (x) (/ x 1)))
      a4*1/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((69 56 71 60 75 63 )(55 65 63 67 65 )(54 70 66 70 66 )(47 71 67 76 38 )(69 76 18 76 0 )38) 0.6) '(5 . 0.78390848637) '(4 . 0.620943463204) #f (lambda (x) (/ x 1)))
      g4*2/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((41 30 43 31 43 31 )(51 38 32 41 32 )(63 45 33 46 33 )(70 48 34 53 15 )(52 58 7 60 0 )40) 0.6) '(5 . 0.669638685142) '(4 . 0.00795382119667) #t (lambda (x) (/ x 1)))
      f4*2/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((48 40 50 45 53 47 )(61 45 47 46 49 )(45 47 51 47 53 )(32 49 55 51 57 )(34 52 59 56 60 )33) 0.6) '(5 . 0.552750532274) '(4 . 0.66730675784) #f (lambda (x) (/ x 1)))
      f4*2/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((44 30 48 30 49 35 )(52 42 37 47 38 )(55 47 38 49 39 )(30 51 39 56 40 )(56 57 41 59 42 )38) 0.6) '(5 . 0.449341012835) '(4 . 0.0134510362303) #t (lambda (x) (/ x 1)))
      f4*1/2
    \override NoteHead #'stencil =
       #(ly:stencil-rotate (make-spermazoid-rel (crude-bloat-x '((44 52 47 52 49 57 )(47 42 58 42 59 )(30 47 60 51 61 )(59 51 61 51 61 )(56 51 61 56 63 )48) 0.6) '(5 . 0.951714211348) '(4 . 0.125228613369) #t (lambda (x) (/ x 1))) 20 0 0)
      f4*2/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((37 47 41 52 41 54 )(31 35 54 38 54 )(32 38 54 42 55 )(52 44 57 44 59 )(65 46 60 51 61 )37) 0.6) '(5 . 0.901305659882) '(4 . 0.376295288786) #f (lambda (x) (/ x 1)))
      d4*1/2
    \override NoteHead #'stencil =
       #(make-spermazoid-rel (crude-bloat-x '((34 64 35 68 38 72 )(34 29 73 31 74 )(59 32 74 35 75 )(65 36 75 38 75 )(56 42 75 44 75 )43) 0.6) '(5 . 0.651407203505) '(4 . 0.656987337717) #f (lambda (x) (/ x 1)))
      e4*2/2   } |
  \saNormal \revert NoteHead #'stencil
  g8 \cricket \tri c,8 r16 \tri c8 r16 \tri c8 r16 \tri c8 r16 \tri c8 |
  r16 \tri c8 r16 \tri c8 r16 \tNormal fis,16^_^\halfwayFRENCH ~ \times 4/5 { fis8. a16 fis } r8 g |
  \times 2/3 { c^_ bes e,^_ ~ } e16 r f16^_ r e16 r a'8^\espressivo ~ \times 4/5 { a16 r a,8 gis16 } |
  r16 gis''8.^\insistFRENCH ~ gis8 \times 2/3 { r16 e,,16 r } \times 2/3 { e r8 } bes'16 g ~ \times 4/5 { g e-\staccatissimo r8. } |
  d'8^\espressivo r \cricket \times 2/3 { c^\p c c } c4 r8 c |
  c4 r4 r2 |
  r2. r16 \tri c8.^\mp^\waveFRENCH ~ |
  \tri c8. r16 \tri c4 %{ < %} r8 \tri c4. %{kshh < >%} ~ |
  \tri c16 \tri c r \tri c \tri c \tri c \tri c r r \tri c r8 \tri c16 r8. |
  \tri c16 r8. r4 r2 |
  R1 |
}
 
tenorGlissando = \relative c' {
  $(skip-of-length tperc)
  s1
  s1
  s1
  s4.
  s4
  s1*2
  s2 \xCircle b2^\gongFRENCH
  \noLed \override NoteHead #'transparent = ##t g'4 a b s4 s2 |
  s1
  s1. |
  \repeat unfold 2 { s4 \bar "" }
  s8. \bar ""
  \repeat unfold 4 { s4 \bar "" } \bar "|"
  s1*7/8 |
  s1*5/4
  s2 |
  s1 |
  s1 |
  s1 |
  s2. |
  s2 |
  s1 |
  s2. |
  s1
  s1
  s1
  s1
  s1
  s1
  s2
  s2
  s2
  s2
  s1 | 
  s1 |
  s1 |
  s4. |
  $(skip-of-length powerText)
  $(skip-of-length nineStarsText)
  s4
  s1
  s1
  s2
  s1
  s1 |
  s2 s8 s4.^\p^\< |
  s8 s8^\f s4 s4.^\p^\< s8^\f
  s4 s4^\p^\< s4 s8^\f s8 |
  s1 |
  \preggoSkip
  s2 |
  s4*5
  s1 |
  s1*5/4 |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4 |
  s1 |
  s2 |
  s1 | 
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s2 b'4 s |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1
  s4 \revert NoteHead #'transparent
  \times 2/3 { r4 \cross f,,4^\cymbalFRENCH \cross f }
  \times 2/3 { \cross f4 \cross f \cross f } r4 r4 \cross f4 |
  		%s2   \revert NoteHead #'transparent
 		  %\times 2/3 { \xCircle f,,4^\smallCymbalFRENCH \xCircle f \xCircle f } |
}

tenorWords = \lyricmode {
  \repeat unfold 4 \skip 1
  tcht
  \repeat unfold 3 gna
  \markup \center-column { 兒 ér } \markup \center-column { 童 tóng } \markup \center-column { 相 xiāng } \markup \center-column { 見 jiàn } \markup \center-column { 不 bù } \markup \center-column { 相 xiāng } \markup \center-column { 識， shí, }
  \markup \center-column { 笑 xiào } \markup \center-column { 問 wèn } \markup \center-column { 客 kè } \markup \center-column { 從 cōng } \markup \center-column { 何 hé } \markup \center-column { 處 chŭ } \markup \center-column { 來。 lái. }
  heu
  hai 
 \markup \center-column { 矯 jiăo } \markup \center-column { 矯 jiăo } \markup \center-column { 珍 zhēn } \markup \center-column { 木 mù, } \markup \center-column { 巔， diān. } \markup \center-column { 得 dé } \markup \center-column { 無 wú } \markup \center-column { 金 jīn } \markup \center-column { 丸 wan } \markup \center-column { 懼？ jù? }
 \markup \center-column { 美 mĕi } \markup \center-column { 服 fú } \markup \center-column { 患 huàn } \markup \center-column { 人 rén } \markup \center-column { 指， zhĭ, } \markup \center-column { 高 gāo } \markup \center-column { 明 míng } \markup \center-column { 逼 bī } \markup \center-column { 神 shén } \markup \center-column { 惡。 ĕ. }
  \skip 1
  \repeat unfold 4 ha
  en
  tzou
  tchi
  \repeat unfold 7 { wa -- ter }
  i
  \markup \center-column { 人 rén } \markup \center-column { 歸 guī } \markup \center-column { 山 shān } \markup \center-column { 郭 guō } \markup \center-column { 暗， àn } \markup \center-column { 雁 yàn } \markup \center-column { 下 xià } \markup \center-column { 蘆 lú } \markup \center-column { 洲 zhōu } \markup \center-column { 白。 bái. }
  χ ç ni p t di rou ih iht di ou ɬ ɬ
  t oui q t tiou doum doum t͡ʃç
  wuh tchiou
  t d m d m
  dih diou ɢe
  t \skip 1 bim
  t dim t
  roui
  mim mum m m
  s t
  ç
  \skip 1
  gau
  love
  s -- uivre
  \repeat unfold 3 oua
  \markup \center-column { 下 xià } \markup \center-column { 床 chuáng } \markup \center-column { 畏 wèi } \markup \center-column { 蛇 shé } \markup \center-column { 食 shí } \markup \center-column { 畏 wèi } \markup \center-column { 藥， yào } \markup \center-column { 海 hăi } \markup \center-column { 氣 qì } \markup \center-column { 濕 shī } \markup \center-column { 蟄 zhé }
  you
  \repeat unfold 6 pst
  pshhh
  \repeat unfold 3 pst
  o -- ra -- cle
  no no zi
  a i ou a
  niao ni
  niao
  here's my star
  take my star oh
  si mi ei sen hau seen
  hon ay rau bin tzai
  \repeat unfold 2 { dol -- lar }
  ta shri t p da she be de be houi houi houm shzvasht
  Oh preg -- nant I'm or -- a -- cle star face.
  \markup \center-column { 愛 ài }
  wa -- ter
  youn kain soun kin hao wa -- ter in
  yi bai sou
  Oh o -- ra -- cle, I'm
  STOP THE FUCK -- ING STAR
  tsau tchi ayn mou gna gun shhh
  oumm kat ti ki going mm \lyrRot m \lyrRot t \lyrRot t
  t k gaoum \lyrRot t \lyrRot t
  yung tzi na ou tchi san gao fan ni yao sa kao ben gi na ao san go ne ao bai
  zi \repeat unfold 7 tz
  star here's a here
    here's a star here star here star tzi
    here star star here's a star
  oh you give me star, I Schloß.
  shh shh kshh
  ki k t kih tu \repeat unfold 3 kou
}

bass = \relative c' { #(set-accidental-style 'neo-modern)
  \autoBeamOff
  \cricket
  $(skip-of-length tperc)
  c16^\f c r8 c16 c r8 c16 c r8 c16 c r8 |
  c16 c r8 c16 c r8 c16 c r8 c16 c r8 |
  R1 |
  R4. |
  r4 |
  \feelingLucky
  \override Stem #'direction = #DOWN
  \revert Staff . BarLine #'bar-extent
  \override TupletNumber #'text = #(markup #:note "2" UP)
  \clef treble
  r4.
  \once \override NoteHead #'stencil =
  #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 215) 100) '(5 . 0.2) '(3 . 0.4) #f (lambda (x) (/ x 4)))
  \times 1/1 { b'2^\mp }
  r8
  r4
  \once \override NoteHead #'stencil =
  #(ly:stencil-rotate (make-spermazoid '((30 0 100 10 100 50) (60 50 80 70 150) (30 70 250 70 200) 100) '(5 . 0.6) '(3 . 0.9) #t (lambda (x) (/ x 2))) 10 0 0)
  \times 1/1 { d2 }
  r4
  \revert Stem #'stencil
  \cricket
  c,4-.^\f^\gruntFRENCH r \bNormal %<< { \stemDown bes2^^^\> \glissando |
  %s2 \noLed e4^\pp } \\ { s2 \noLed \override NoteHead #'transparent = ##t c4 d } >>
  \stemDown bes2^^^\> \glissando ( |
  s2 \noLed e4^\pp )
  r4 r2 |
  \revert NoteHead #'no-ledgers
  c2^\mf r2 |
  R1. |
  \cricket
  \sustainG
  \tri c1*11/16^\f^\puffFRENCH \glissando \hideNotes c8 \unHideNotes
  \tri c1*1/4 \glissando \hideNotes c8 \unHideNotes
  c4*1/2^\veryNasalFRENCH c4*1/2 c4*1/2 c4*1/2
  R1*7/8
  R1*5/4
  R2
  % HERE
  \saNormal
  \normalG
  r2 \ziggliss d4^\f ( \glissando d'8-. ) r |
  %r2 r8 c^\mf c r8 |
  r4 \cricket c,8 c r2 |
  r4 \times 2/3 { c8^\f^\falsettoFRENCH c4 } \times 2/3 { c8 c4 } \times 2/3 { c8 c4 } |
  \times 2/3 { c8 c4 } \times 2/3 { c8 c4 } \times 2/3 { c8 c4 } |
  R2
  \normalG
  \bNormal
  ees,4^\f ~ \stemDown \bendAfter #3 ees16 \stemNeutral c8.\rest r2 |
  \clef treble
  r16 cis''^\toSopranoFRENCH^\mf fis b, f' b, dis gis \times 2/3 { eis8 cis gis' } |
  \times 2/3 { a,8-. r gis' ( ~ }
    gis4 \glissando
    dis,16 ) \cricket \tri c^\noVowelFRENCH \tri c \bNormal e^\sfz
    \times 2/3 { a,,8-.^\f^\lipVibFRENCH %{lip fan%} r8 \cricket \tri c'8 %{suck in tick%} }
  \feelingLucky
  \once \override NoteHead #'stencil =
  #(ly:stencil-rotate (make-spermazoid '((30 0 100 10 100 50) (60 50 80 70 150) (30 70 250 70 300) 100) '(5 . 0.6) '(3 . 0.9) #t (lambda (x) (/ x 2))) 10 0 0)
  b4^\mf^\lightSaberFRENCH
    \times 1/1 {
    r8
    \once \override NoteHead #'stencil =
    #(ly:stencil-rotate (make-spermazoid '((30 0 50 50 70 80) (60 30 140 10 260) 100) '(5 . 0.9) '(3 . 0.9) #t (lambda (x) (/ x 2))) 10 0 0)
    d8^\f }
    \saNormal d'8^\mp-\staccatissimo r
    \cricket \times 2/3 { \tri c,16^\f^\thFRENCH \tri c \tri c %{suction%} r8 \tri c16 %{t%} } | 
  \times 2/3 { r8 \saNormal g''8-\staccatissimo^\mf^\consonantFRENCH a,-\staccatissimo }
    \times 2/3 { bes-\staccatissimo f'-\staccatissimo bes,-\staccatissimo }
    \times 4/5 { \cricket \tri c,16^\spanishRFRENCH \tri c \tri c r \saNormal e16^\p^\< ~ ( }
    e8. \glissando fis'16^\f ) |
  \times 2/3 { d'8 d, d, }
    b8 \feelingLucky \once \override TupletNumber #'text = #(markup #:note "4." UP) \times 1/1 { r16 
     \once \override NoteHead #'stencil =
       #(ly:stencil-rotate (make-spermazoid (crude-bloat-x '((30 0 50 50 40 80) (40 30 200 200 70) (200 200 0 200 -100) 100) 5) '(5 . 0.9) '(3 . 0.9) #t (lambda (x) (/ x 4))) 0 0 0)
       d4*5/4 }
     \saNormal gis'16-\staccatissimo^\mf ais-\staccatissimo dis,,-\staccatissimo cis-\staccatissimo %{tchu tchu tchu tchu %}
  \times 2/3 { a''8-\staccatissimo b4 }
    \feelingLucky \stemDown
    \override TupletNumber #'text = #(markup #:note "2" UP)
    \times 1/1 {
    \once \override NoteHead #'stencil =
    #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 215) (40 50 240 40 280) 100) '(5 . 0.2) '(3 . 0.4) #t (lambda (x) (/ x 8)))
    a,4^\mp
    \once \override NoteHead #'stencil =
    #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 215) (40 30 240 10 340) 1) '(5 . 0.2) '(4 . 0.4) #t (lambda (x) x))
    b4 } \stemNeutral
    \saNormal r8 dis'8 |
  R1 |
  R2 |
  R2 |
  r4. \clef bass d,,,8^\mf ~ |
  d2 ~ |
  d1 ~ |
  d2. r4 |
  R1 |
  g8^\mf g e |
  $(skip-of-length powerText)
  $(skip-of-length nineStarsText)
  s4
  \goalposts \clef percussion  
  \override NoteHead #'style = #'triangle
  \times 2/3 { b'4^\f^\moreSpitFRENCH d8 }
    r4
    \footnote "*" #'(0.5 . 0.5) #'NoteHead \kFRENCH
    \once \override Glissando #'bound-details #'right #'padding = #0
    \tightG c8.*1/3 \glissando \hideNotes \once \override Glissando #'bound-details #'left #'padding = #0 a16 \glissando c16 \unHideNotes r16 \normalG
\goalposts
    c4-\staccatissimo^\sfz
  c4
    r16 e8.
    r4
    \footnote "†" #'(0.5 . 0.5) #'NoteHead \hFRENCH
    \times 2/3 { b4^\sfz d8 }
  \times 2/3 { c16 g8 c16 a8 }
    c4-\staccatissimo | 
  c4-\staccatissimo^\sfz r4 r2 |
  R1 |
  r2 \times 2/3 { r4 \cricket \tri c8^\airFRENCH }
    \feelingLucky \clef bass
    \override TupletNumber #'text = #(markup #:note "4" UP "+" #:note "2" UP)
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel '((60 48 40 53 35 45 )(50 47 31 35 34 )(56 47 66 35 43 )(70 61 56 67 46 )(35 37 42 51 47 )43) '(5 . 0.595740565753) '(4 . 0.951391050858) #t (lambda (x) x))
    \times 1/1 { f,4*3^\suckFRENCH }
    \override TupletNumber #'text = #(markup #:note "4" UP)
    \override NoteHead #'stencil =
    #(make-spermazoid-rel '((48 45 32 30 54 32 )(50 67 31 63 62 )(49 68 40 59 69 )48) '(5 . 0.304671074796) '(4 . 0.0890092813734) #t (lambda (x) (/ x 360)))
    \times 1/1 { r8 f4*1/2 }
    \override NoteHead #'stencil =
    #(make-spermazoid-rel '((38 66 54 49 67 35 )(38 57 63 61 38 )(44 62 54 40 69 )30) '(5 . 0.678987861013) '(4 . 0.405893129342) #f (lambda (x) (/ x 753)))
    \times 1/1 { r8 f4*1/2 }
    \override NoteHead #'stencil =
    #(make-spermazoid-rel '((56 40 64 45 56 64 )(35 66 36 38 70 )(48 66 37 55 38 )31) '(5 . 0.77906676387) '(4 . 0.559691400693) #t (lambda (x) (/ x 136)))
    \times 1/1 { r8 f4*1/2 }
    \revert NoteHead #'stencil
    \revert Stem #'stencil
   \goalposts
   \override NoteHead #'style = #'harmonic-mixed
   \times 2/3 { e8 c4 ~ } c8 r \times 2/3 { e8 c4 }
   e8 r16 \saNormal \times 9/15 { e''16 g e d e d d8 b16 d b a \cricket c,16.^\girlLaughFRENCH c }
   c16 c c c
   \sustainG
   c1*29/8^\fff^\fanFRENCH \glissando \hideNotes c8. \unHideNotes
  \bNormal
  r4 bes8^\espressivo^\mf r8 |
  s4*5
  \cricket \override NoteHead #'style = #'triangle
  r8. c16^\mp^\waterGunFRENCH r4 r8 \times 2/3 { c16 c c } c8 r8 |
  r8. c16 c r8. r4 c4 ~ c16 r8 c16 |
  \bNormal
  bes,8^\f bes g |
  R4. |
  R4. |
  R4. |
  R4. |
  R4 |
  R1 |
  R2 |
  \normalG
  c'8^\mf^\spiritualFRENCH bes aes r r16 ees'4. r16 |
  r4 r8. \feelingLucky
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel '((58 55 50 47 66 57 )(70 66 33 34 37 )(60 58 42 40 54 )50) '(5 . 0.469883905017) '(4 . 0.0352222761969) #t (lambda (x) (/ x 1)))
  c,16^\markup \fontsize #-2 \parenthesize \note #"16" #UP
  \unStemTrans
  \cricket \tri \times 2/3 { c'16 \tri c^\mp \tri c } \bNormal d8^\f \glissando (
  a16 ) \cricket c32^\mf c \feelingLucky \clef bass
  \once \override TupletNumber #'text = #(markup #:note "8" UP "+" #:note "16" UP)
  \times 1/1 {
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel (crude-bloat-x '((53 53 63 32 31 42 )(69 63 38 35 44 )(68 56 39 35 44 )37) 3) '(5 . 0.510373565022) '(4 . 0.278404683716) #t (lambda (x) (/ x 1)))
    b4*1/4^\f
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel (crude-bloat-x '((31 59 31 34 40 33 )(70 70 45 62 57 )(46 39 44 30 30 )33) 3) '(5 . 0.238608679095) '(4 . 0.680002709505) #t (lambda (x) (/ x 1)))
    g4*1/2
  } \cricket c16. \saNormal \bendAfter #-3 a''16.^\p^\<
  \bNormal b,,,16^\sfz \cricket c'32^\mp c c16
  \clef bass \feelingLucky
  \once \override TupletNumber #'text = #(markup #:note "4." UP)
  \times 1/1 {
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel '((43 68 65 51 31 64 )(48 43 58 69 -67 )(42 40 -36 61 -34 )44) '(5 . 0.78774120024) '(4 . 0.0892043286067) #t (lambda (x) (/ x 527)))
    g4*1/2^\mf
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel '((44 44 53 54 55 57 )(43 56 55 58 55 )(51 56 42 68 55 )(43 59 67 52 36 )(33 31 60 53 68 )49) '(5 . 0.172543061708) '(4 . 0.429782294654) #t (lambda (x) (/ x 476)))
    b4
  } \saNormal cis'16 fis \cricket c,32 c |
  \bNormal b,16 dis \cricket \override NoteHead #'style = #'triangle c' c
    c c c c 
    c c c r
    \override NoteHead #'style = #'harmonic-mixed
    r c^\f c r |
  r32 c16 c c16
    c8 c16
    c8 r16 c16
    c8 r32 c16
    c8 |
  c16 c8 c16
  \times 4/5 { c c c c c }
  \times 4/5 { c c c c r } r4^\fermata |
  R1 R1 R1 R1 R1
  \tNormal
  r2. \times 2/3 { r4 aes'8^\f } |
  \saNormal e''16. ( \glissando fis,,32 ) \cricket \tri c32 \tri c \tri c \tri c
    \saNormal \acciaccatura { e'16 } gis,16. ~ gis32 \glissando \bendAfter #-3 a'16 cis,,16
    \times 4/6 { \cricket \tri cis-\staccatissimo \tNormal cis-\staccatissimo f-\staccatissimo b-\staccatissimo gis-\staccatissimo e'-\staccatissimo } \times 2/3 { a,-\staccatissimo r \cricket c,8-- c-- }
  r2. r8 \times 2/3 { r8 }
  \feelingLucky
  \clef bass
  \once \override TupletNumber #'text = #(markup #:note "2" UP)
  \times 1/1 {
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((40 10 35 10 30 10 )(30 30 10 25 10 )(30 20 10 15 10 ) 0) '(5 . 0.378134681064) '(4 . 0.304392443306) #f (lambda (x) (/ x 1)))
      c,4*1/2^\mf^\withAltoFRENCH
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((40 10 35 10 30 10 )(30 30 10 25 10 )(30 20 10 15 10 ) 0) '(5 . 0.378134681064) '(4 . 0.304392443306) #t (lambda (x) (/ x 1)))
      e4*1/2
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((40 10 35 10 30 10 )(30 30 10 25 10 )(30 20 10 15 10 ) 0) '(5 . 0.378134681064) '(4 . 0.304392443306) #f (lambda (x) (/ x 1)))
      d4*1/2
      \once \override NoteHead #'stencil =
      #(make-spermazoid-rel '((40 10 35 10 30 10 )(30 30 10 25 10 )(30 20 10 15 10 ) 0) '(5 . 0.378134681064) '(4 . 0.304392443306) #t (lambda (x) (/ x 1)))
      f4*1/2
  }
    \revert TupletNumber #'text
    \revert TupletNumber #'Y-offset
  \cricket
  \times 2/3 { r16 } \cricket r8 c'16 c c32^\laughterFRENCH c c c r8 |
  \times 4/5 { r4 c16 } c16 r8. r4 \times 2/3 { \tri c8^\f r4 } |
  \feelingLucky
  \revert Stem #'stencil
  \revert NoteHead #'style
  \revert TupletNumber #'Y-offset
  \revert TupletNumber #'text
  \clef bass
  \times 2/3 { r8 c,^\authorityFRENCH a } \times 4/5 { r8 a16 d8 } \times 4/5 { c \cricket c'16^\mf c16 r } \bNormal r8. bes,16 \glissando ( |
  s8. %{GLISS%} aes16 ) r4 \times 2/3 { r8 ges^\espressivo ges^\espressivo } r4 |
  r2.. \cricket c'8 ~ |
  c8 c8 \times 2/3 { c4 c8 ~ } c c4. ~ |
  c8
  \feelingLucky \clef bass
  \stemDown
  \override TupletNumber #'text = #(lambda (grob) (broken-tuplet-text grob (list (markup #:note "2.." UP) (markup #:note "2." UP))))
  \times 1/1 { 
    \once \override NoteHead #'stencil =
    #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 215) 100) '(5 . 0.2) '(3 . 0.4) #f (lambda (x) (/ x 4)))
    d,4*1/2^\mp
    \once \override NoteHead #'stencil =
    #(ly:stencil-rotate (make-spermazoid '((30 0 100 10 100 50) (60 50 80 70 150) (30 70 250 70 200) 100) '(5 . 0.6) '(3 . 0.9) #t (lambda (x) (/ x 2))) 10 0 0)
    b4
    \once \override NoteHead #'stencil =
  %  #(make-spermazoid '((60 90 50 30 70 50) (50 40 100 80 180) (30 10 210 10 215) 10) '(4 . 0.9) '(3 . 0.4) #t values)
    #(make-spermazoid '((20 0 40 00 55 10) (30 20 80 40 170) (30 05 210 05 215)  100) '(4 . 0.2) '(4 . 0.1) #t (lambda (x) (/ x 4)))
    c4*3/4
    \once \override NoteHead #'stencil =
    #(make-spermazoid '((60 10 50 30 70 20) (50 40 -20 40 0) (50 40 20 40 0) (50 40 -20 40 0) (50 40 20 40 0) (50 40 -20 40 0) (50 40 20 40 0) 10) '(4 . 0.9) '(3 . 0.4) #f values)
    a4*3/4
    \once \override NoteHead #'stencil =
    #(make-spermazoid '((260 0 270 1 300 40) (100 10 100 20 150) 10) '(5 . 0.3) '(4 . 0.4) #t (lambda (x) (* x x)))
    g'4*3/2
    \once \override NoteHead #'stencil =
    #(make-spermazoid '((100 100 150 30 70 50) (100 40 100 80 180) (30 10 210 10 315) 10) '(5 . 0.2) '(3 . 0.4) #f (lambda (x) (/ x 4)))
    d4
    \once \override NoteHead #'stencil =
    #(ly:stencil-rotate (make-spermazoid '((260 0 250 10 200 50) (200 40 100 80 180) (30 10 210 10 215) (30 40 210 40 300) (100 40 430 50 480) 10) '(5 . 0.4) '(3 . 0.1) #t (lambda (x) (sqrt x))) 15 0 0)
    e4
  } \stemNeutral \cricket c'8.^\f^\fryFRENCH b16|
  \times 2/3 { d8 c r } c d r c16 c r8 c

%%%%% m. 79

    \feelingLucky \clef treble
    \once \override NoteHead #'stencil =
    #(make-spermazoid-rel '((60 48 40 53 35 45 )(50 47 31 35 34 )(56 10 43 15 21 )(31 61 -10 15 6 ) 15) '(5 . 0.595740565753) '(4 . 0.951391050858) #t (lambda (x) x))
    d'4
    \override TupletNumber #'text = #(markup #:note "4" UP)
    \override NoteHead #'stencil =
    #(make-spermazoid-rel '((100 90 140 -70 50 32 )(50 67 31 100 30 )(49 68 40 59 69 ) 100) '(4 . 0.304671074796) '(3 . 0.0890092813734) #f (lambda (x) x))
    b4
    \override NoteHead #'stencil =
    #(make-spermazoid-rel '((38 66 54 49 67 35 )(38 57 63 61 38 )(44 62 54 40 69 )30) '(4 . 0.678987861013) '(3 . 0.405893129342) #t (lambda (x) (/ x 753)))
\clef bass
    f,4
    \override NoteHead #'stencil =
       #(make-spermazoid-rel '((39 67 41 15 43 10 )(53 34 -150 37 10 )(55 10 5 39 5 )(46 10 15 10 -100 ) 44) '(5 . 0.940029502293) '(3 . 0.74384752456) #t (lambda (x) (/ x 1)))
      d4
    \override NoteHead #'stencil =
       #(make-spermazoid-rel '((200 10 150 -40 100 60 )(46 10 57 100 59 )(44 42 -100 44 -150 )(31 50 64 50 64 )36) '(5 . 0.752921695726) '(4 . 0.753250682954) #t (lambda (x) (/ x 1)))
\clef bass
      f4
    \override NoteHead #'stencil =
       #(make-spermazoid-rel '((140 10 100 15 100 10 )(70 50 30 40 50 )(34 10 100 10 100) 30) '(5 . 0.865821272268) '(4 . 0.452361573284) #t (lambda (x) (/ x 100)))
      b,4
    \override NoteHead #'stencil =
       #(make-spermazoid-rel '((60 36 60 38 65 38 )(32 56 39 57 41 )(30 57 42 60 -42 )(67 63 -43 65 -45 )(59 70 -45 73 -47 )40) '(5 . 0.561700081467) '(4 . 0.0408763855688) #t (lambda (x) (/ x 1)))
      e4
    \override NoteHead #'stencil =
       #(make-spermazoid-rel '((10 36 100 38 65 -150 )(32 100 150 57 40 ) 10) '(4 . 0.561700081467) '(3 . 0.0408763855688) #f (lambda (x) (/ x 1)))
      f4
    \revert NoteHead #'stencil
    \revert Stem #'stencil


  %r4 \times 2/3 { r4 c8^\ff^\shoutFRENCH ~ } \bendAfter #-2 c2 |
  %r2 r8 c4.^\sim ~ |
  %\bendAfter #-2 c4 r4
  r2
  \tri c'2^\ff^\waveFRENCH ~ |
  c4. r8
  \saNormal e'8.^\f fis16 e8 cis | b cis e4
  r8 cis b16 r32 gis gis8 \glissando ( a' ) \feelingLucky
  \once \override NoteHead #'stencil = #(make-spermazoid-rel '((33 37 34 41 39 42 )(37 33 42 34 43 )(57 36 43 41 44 )(40 44 44 49 44 )(38 52 46 54 46 )37) '(5 . 0.366760435824) '(4 . 0.25810554813) #f (lambda (x) (/ x 1)))
    f,4*3/2^\markup \fontsize #-2 \parenthesize \note #"4." #UP
  \once \override NoteHead #'stencil = #(make-spermazoid-rel '((46 54 48 54 52 58 )(56 42 59 44 59 )(38 44 60 49 62 )(37 51 63 54 65 )(54 55 67 56 68 )50) '(5 . 0.170817307394) '(4 . 0.498845991841) #t (lambda (x) (/ x 1)))
    b4*2^\mf^\markup \fontsize #-2 \parenthesize \note #"2" #UP
  R1 |
  %{r4 \bNormal ais,^\mp ( \glissando |
  fis4. \glissando a8 ) %}
  r2
  \cricket c,8^\p c16 c c \feelingLucky
  \clef treble
  \once \override NoteHead #'stencil = #(make-spermazoid-rel '((34 68 39 73 41 77 )(65 35 79 40 79 )(48 45 79 49 80 )(42 53 81 53 82 )(32 55 84 57 85 )39) '(5 . 0.412346933934) '(4 . 0.64957028879) #f (lambda (x) (/ x 1)))
    g'4*3/4^\mf^\markup \fontsize #-2 \parenthesize \note #"8." #UP  
  \clef "treble_8"
  \once \override NoteHead #'stencil = #(make-spermazoid-rel '((49 70 49 70 49 74 )(49 40 74 41 75 )(45 43 75 46 75 )(38 47 76 50 78 )(62 50 78 54 79 )44) '(5 . 0.176546845478) '(4 . 0.801049778201) #t (lambda (x) (/ x 1)))
    e4*3/2^\markup \fontsize #-2 \parenthesize \note #"4." #UP
    \tNormal \revert NoteHead #'stencil cis8^_
    eis^_ \bendAfter #2 dis4^\espressivo \saNormal ais''8^\> \glissando |
  %{GLISS%} s8 dis,,16^\p cis16--
    r8 \bendAfter #3 b8.^\mf r16 \bendAfter #4 cis8. r16 \bendAfter #3 d8 |
  \bNormal
  r4 \times 2/3 { r4 f^\mp des } r8 \feelingLucky \once \override TupletNumber #'text = #(markup #:note "4." UP) \times 1/1 {
    \once \override NoteHead #'stencil = #(make-spermazoid-rel '((53 66 55 66 55 69 )(46 50 71 50 71 )(53 54 73 57 74 )(69 59 75 62 75 )(52 63 76 67 76 )35) '(5 . 0.0404376541608) '(4 . 0.067220116209) #t (lambda (x) (/ x 1)))
    f4^\mf
    d4*1/2-\staccatissimo
  } \bNormal c,16^\pp \cricket \tri c'8.^\mf ~ \tri c4 r4 |
  R1*5 |
}

bassGlissando = \relative c' {
  $(skip-of-length tperc)
  s1
  s1
  s1
  s4.
  s4
  s1*2
  s1
  \noLed \override NoteHead #'transparent = ##t c4 d s2 s2 |
  s1
  s1. |
  \repeat unfold 2 { s4 \bar "" }
  s8. \bar ""
  \repeat unfold 4 { s4 \bar "" } \bar "|"
  s1*7/8 |
  s1*5/4
  s2 |
  s1 |
  s1 |
  s1 |
  s2. |
  s2 |
  s1 |
  s2. |
  s1
  s1
  s1
  s1
  s1
  s1
  s2
  s2
  s2
  s2
  s1 | 
  s1 |
  s1 |
  s4. |
  $(skip-of-length powerText)
  $(skip-of-length nineStarsText)
  s4
  s1
  s1
  s2
  s1
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  \preggoSkip
  s2 |
  s4*5
  s1 |
  s1*5/4 |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4 |
  s1 |
  s2 |
  s1 | 
  s4 s8. s16^\p^\< s2\f |
  s1*24 |
  %\xCircle f,1^\cymbalFRENCH\laissezVibrer |
  %\stemDown
  %\xCircle f2\laissezVibrer \times 2/3 { r8 \xCircle f4 ~ } \once \override NoteHead #'transparent = ##t f4\laissezVibrer |
  %s1 |
  \revert NoteHead #'transparent
  r4 r16 \cross f,8.\laissezVibrer^\simplecymbalFRENCH s2 |
}

bassWords = \lyricmode {
  \repeat unfold 8 { dol -- lar }
  chin χoui
  heu
  hai 
  nai
  ħ \skip 1
  ħ \skip 1
  \repeat unfold 4 gnig
  %no hoi
  hoi
  dra -- gon
  \repeat unfold 6 { wa -- ter }
  tou
  \markup \center-column { 人 rén } \markup \center-column { 歸 guī } \markup \center-column { 山 shān } \markup \center-column { 郭 guō } \markup \center-column { 暗， àn } \markup \center-column { 雁 yàn } \markup \center-column { 下 xià } \markup \center-column { 蘆 lú } \markup \center-column { 洲 zhōu } \markup \center-column { 白。 bái. }
  moum
  diouzh tik touk douk tprr ǂ
  tziou tchiou tchit th th th t
  dik χout tik oui nout r p t hai
  di ou m m diouzhk tchi dim dum doum
  tchit din ou dzin tzit
  ɢe
  o -- ra -- cle
  t͡ʃ k kioui \repeat unfold 2 \skip 1 ki
  kih
  tzi \markup \rotate #180 "h" ki
  ki ɢ ki \markup \rotate #180 "h" ǂ çi
  tchik
  kkhhhwhy
  why ga ga
  ma -- ha ma -- ha ga
  % ON THE FESTIVAL OF THE MOON TO SUB-OFFICIAL ZHANG
  \markup \center-column { 下 xià } \markup \center-column { 床 chuáng } \markup \center-column { 畏 wèi } \markup \center-column { 蛇 shé } \markup \center-column { 食 shí } \markup \center-column { 畏 wèi } \markup \center-column { 藥， yào } \markup \center-column { 海 hăi } \markup \center-column { 氣 qì } \markup \center-column { 濕 shī } \markup \center-column { 蟄 zhé }
  ha ha ha ha ha ha
  shhh \skip 1
  you
  \repeat unfold 7 pst
  pshhh
  pst
  o -- ra -- cle
  take my star oh
  ouais t p t
  bi ni mi hya dum
  dim tcho hum di bi dat
  ah guing
  zi zi p t doum bat
  \repeat unfold 9 t
  \repeat unfold 8 { dol -- lar }
  \repeat unfold 2 { ni -- nety nine cent } 
  ut diou dou mi dou mi
  iχa ib doum f touf touf kif touf tif çi
  dra -- gon
  gung chao yao tzi
  o -- rey he he he he
  wa -- ter
  shh
  hung chao, yi bai sou
  wa -- ter
  or
  o -- ri
  STOP THE FUCK -- ING STAR
  i zao hi o si ao gun
  star
  %star
  %star
  yi bai sou din oum gi mit shik
  \markup \center-column { 明 míng } \markup \center-column { 星 xīng }
  \markup \center-column { 電 diàn } \markup \center-column { 源 yuán }
  \markup \center-column { 神 shén } \markup \center-column { 諭 yù }
  \markup \center-column { 美 mèi } \markup \center-column { 元 yuán }
  shhh
  \markup \center-column { 孤 gū } \markup \center-column { 鴻 hóng } \markup \center-column { 海 hăi } \markup \center-column { 上 shàng } \markup \center-column { 來， lái }
  \markup \center-column { 池 chí } \markup \center-column { 潢 huáng } \markup \center-column { 不 bù } \markup \center-column { 敢 găn } \markup \center-column { 顧； gù }
  hoi tzi ai %nuo
  no o -- ra -- cle gan chi ha m
  star here -- ou star star here star
  dar -- ling i da Schloß shh
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \sopNAME shortInstrumentName = \sopSNAME
} <<
      << \new Voice = "soprano" { \numericTimeSignature << \soprano \marks >> } \\ { \sopranoGlissando } >>
      \lyricsto "soprano" \new Lyrics { \sopranoWords }
    >>
    \new Staff \with {
       instrumentName = \altNAME shortInstrumentName = \altSNAME
} <<
      << \new Voice = "alto" { \numericTimeSignature \alto } \\ { \altoGlissando } >>
      \lyricsto "alto" \new Lyrics { \altoWords }
    >>
    \new Staff = "tenorstaff" \with { instrumentName = \tenNAME shortInstrumentName = \tenSNAME
} <<
      << \new Voice = "tenor" { \numericTimeSignature \tenor } \\ { \tenorGlissando } >>
      \lyricsto "tenor" \new Lyrics { \tenorWords }
    >>
    \new Staff \with { instrumentName = \basNAME shortInstrumentName = \basSNAME
} <<
      << \new Voice = "bass" { \numericTimeSignature \bass } \\ { \bassGlissando } >>
      \lyricsto "bass" \new Lyrics { \bassWords }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override TextScript #'layer = #6
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletNumber #'avoid-slur = #'ignore
      \override TupletBracket #'breakable = ##t
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override TimeSignature #'whiteout = ##t
    }
    \context {
      \Lyrics
      \override LyricText #'whiteout = ##t
      \override LyricText #'layer = #6
    }
    \context {
      \Score
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
\midi{}
}
