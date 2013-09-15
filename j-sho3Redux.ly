\version "2.15.0"
% copy and paste from larger version
\include "defs-devel.ly"
transH = \override NoteHead #'transparent = ##t
unTransH = \revert NoteHead #'transparent
% crécelle, siflet
% succion rapide, pensez à
% babillage d'une jeune américaine de 19 ans de la côte ouest
% un peu nunuche, un peu blonde
% monologue d'un écureuil, très aigu, pas strictement en rythme
\header {
  title = "J-sho"
  composer = "mike solomon"
}
#(ly:set-option 'point-and-click #f)

myPageBreak = \pageBreak

sim = \markup \italic { sim. }
redT = \once \override TextScript #'color = #red
midiStuff = { s4. s4. s4. s4 s16 }
normalStuff = { \partial 16 }

Red = \override NoteHead #'color = #red
Black = \revert NoteHead #'color
RedL = \override LyricText #'color = #red
BlackL = \revert LyricText #'color

percussionFRENCH = \markup \italic \column { "en rajoutant des petits coups" "de glockenspiel et de cymbale" }
highfryFRENCH = \markup \italic "fry aigu"
highfryENGLISH = \markup \italic "high fry"
fry = \markup { \italic \column {"vocal fry" "with hands cupped over mouth"} }
tapefastFRENCH = \markup \italic \column { "une bande jouée" "2x trop vite" }
tapefastENGLISH = \markup \italic { a tape played 2x too fast }
tapeslowFRENCH = \markup \italic { une bande jouée 2x trop lent }
tapeslowENGLISH = \markup \italic { a tape played 2x too slow }
stupidFRENCH = \markup \italic { américaine nunuche }
stupidENGLISh = \markup \italic { ditzy american }
cadenzaFRENCH = \markup { \italic "l'écureuil fait sa cadence" }
cadenzaENGLISH = \markup { \italic "a chipmunk cadenza" }
waterENGLISH = \markup { \justify { † During this section, the alto, tenor, and bass should be very solumn.  Make light water sounds with the mouth, a small bowl of water, and/or a dropper. }}
waterFRENCH = \markup { \justify { † Pendant la cadence, l'alto, le ténor et la basse devraient rester solennels.  Faites épisodiquement des sons d'eau en utilisant la bouche, un petit bol rempli d'eau, et/ou un flacon. }}
crashENGLISH = \markup { \italic \column { "crash cymbal, or garbage can lid," "or anything splashy, loud, and violent" }}
crashFRENCH = \markup { \italic \column { "cymbale ou couvercle" "de poubelle" }}
vacuumoffENGLISH = \markup { \italic \column { "turn off the" "vacuum cleaner" }}
vacuumoffFRENCH = \markup { \italic "éteignez l'aspirateur" }
babbleFRENCH = \markup { \italic \column { "babillage d'une jeune américaine"
"de 19 ans de la côte ouest"
"un peu nunuche, un peu blonde" }}
babbleENGLISH = \markup { \italic \column { "a fake monologue in babble language" "sounding like a ditzy, west-coast" "american 19-year-old" } }
rireFRENCH = \markup { x \italic "= rire"}
rireENGLISH = \markup { x \italic "= laughter" }
noisemakerENGLISH = \markup { \justify { * For each Schloß, use noisemakers and other small percussion instruments to add to the triomphal atmosphere. } }
noisemakerFRENCH = \markup \justify {* Pendant chaque Schloß, utilisez des crécelles, siflets et d'autres petits instruments de percussion pour \smallCaps { faire la } \line { \smallCaps fete !!!!!11un } }
vacuumENGLISH = \markup { \italic \column { "turn on the" "vacuum cleaner" }}
vacuumFRENCH = \markup \italic { allumez l'aspirateur }
gongENGLISH = \markup { \italic "gong, bass drum" } 
gongFRENCH = \markup { \italic "grosse caisse" }
paENGLISH = \markup { \italic \column { "spoken with hand over mouth," "like a muffled PA announcement." } } 
paFRENCH = \markup { \italic \column { "dit avec la main sur la bouche" "comme une annonce par haut-parleur dans un magasin" } }
ditzENGLISH = \markup { \italic "ditzy american" }
ditzFRENCH = \markup { \italic "américaine nunuche" }
chipmunkFRENCH = \markup { \italic \column { "monologue d'un écureuil," "très aigu, pas strictement en rythme" }}
chipmunkENGLISH = \markup { \italic \column { "making high, squeaky" "chipmunk sounds" "not in exact rhythm" } }
gloveFRENCH = \markup { \italic \column { "fait claquer" "un gant en latex" } }
gloveENGLISH = \markup { \italic \column { "snap a" "latex glove" } } 
responseENGLISH = \markup { \italic \column { "a response to" "the snapping glove" } } 
responseFRENCH = \markup { \italic \column { "une réponse au gant qui claque" } }
whistleENGLISH = \markup { \italic \column { "whistle" "upwards" } }
whistleFRENCH = \markup { \italic \column { "sifflé" "en ascendant" } }
jazzFRENCH = \markup { \italic \column { "du smooth jazz" "free scat" } }
jazzENGLISH = \markup { \italic \column { "mellow, smooth slow jazz" "free syllables" } }
mooENGLISH = \markup { \italic \column { "moo of a cow" "over the PA" } }
mooFRENCH = \markup { \italic \column { "beuglement à travers" "le haut-parleur" } }
flatterFRENCH = \markup { \italic \column { "en devenant de plus" "en plus nunuche et faux" } }
flatterENGLISH = \markup { \italic \column { "becoming progressively" "ditzier and flatter"  } } 
rubbingENGLISH = \markup { \italic "start rubbing hands" }
rubbingFRENCH = \markup { \italic "en frottant les mains" }
%shallowFRENCH = \markup { \italic \column { "du rire superficiel" "sourire de façade" } }
shallowFRENCH = \markup { \italic \column { "du rire" "superficiel" } }
shallowENGLISH = \markup { \italic \column { "stupid, shallow laughter" "with a fake smile" } }
punctuateENGLISH = \markup { \italic "punctuate hand rubbing with light applause" }
%punctuateFRENCH = \markup { \italic "rajoutez des petits applaudissements" }
punctuateFRENCH = \markup { \null }
turnoffENGLISH = \markup { \italic \column { "let this glissando" "parallel the power down" "of the vacuum cleaner" "finish when the vacuum is making no more noise" }}
turnoffFRENCH = \markup { \italic \column { "un glissando qui déscend à" "mesure que l'aspirateur éteint" } }
pekingENGLISH = \markup { \italic \column { "delivered in the style of" "Peking opera, following the inflections" "indicated above the vowels of the Chinese words" } }
pekingFRENCH = \markup { \italic \column { "comme dans un opéra de pékin" } }
tappingENGLISH = \markup \justify {* During this section, the soprano and bass lightly tap percussive instruments such as Tibetan bowls, pebbles, triangles, branches, etc..}
tappingFRENCH = \markup \justify {* Pendant l'opéra de pékin, la soprane et la basse devraient taper doucement sur des percussions comme les bols tibétain, cailloux, triangles, brindilles, etc..}
tappingagainENGLISH = \markup { "* Again lightly striking a plethora of dry and ethereal percussion instruments."}
tappingagainFRENCH = \markup \justify { * Accompagnez la montée des chanteuses en utilisant les mêmes instruments de percussion utilisés pendant l'opéra de pékin. }
bravosmallENGLISH = \markup \italic "bravo!"
bravosmallFRENCH = \markup \italic "bravo !"
bravoENGLISH = \markup { \italic \column { "applauding & saying \"bravo!\"" "all the while staying pianississimo" } }
bravoFRENCH = \markup { \italic \column { "bravo !" applaudissements } }
clickFRENCH = \markup { \italic "x = claquement de langue" }
clickENGLISH = \markup { \italic "x = tongue click" }
richENGLISH = \markup { \italic "rich in overtones" }
richFRENCH = \markup { \italic "riche en harmoniques" }
spoonsFRENCH = \markup { \italic \column { "en jouant des cuillères à" "l'américaine (si possible)" } }
spoonsENGLISH = \markup { \italic "if possible, accompany yourself playing the spoons" }
mouthclickFRENCH = \markup { \italic "claquement de langue" }
mouthclickENGLISH = \markup { \italic "tongue click" }
slowglissFRENCH = \markup { \italic \column { "glissando lent" } }
slowglissENGLISH = \markup { \italic \column { "slow glissando" } }
lambFRENCH = \markup { \italic "une voiture qui passe ou un agneau qui bêle" }
lambENGLISH = \markup { \italic "like a passing car or bleeting lamb" }

smallMe = {
  \set fontSize = #-4
  \override Stem #'length-fraction = #(magstep -4)
  \override Beam #'length-fraction = #(magstep -4)
  \override Beam #'beam-thickness = #0.35
}

unSmallMe = {
  \unset fontSize
  \revert Stem #'length-fraction
  \revert Beam #'length-fraction
  \revert Beam #'beam-thickness
}

unTup = {
    \override TupletBracket #'stencil = ##f
    \override TupletNumber #'stencil = ##f
}

tup = {
  \revert TupletBracket #'stencil
  \revert TupletNumber #'stencil
}

%#(set-global-staff-size 17.82)
#(set-global-staff-size 15.87)


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
  max-systems-per-page = #4
  %min-systems-per-page = #4
}

%% DEFS

%% Deal with tempos later...AHHHH

ctip = \once \override Hairpin #'circled-tip = ##t
slash = \once \override NoteHead #'style = #'slash
xcircle = \once \override NoteHead #'style = #'xcircle
cross = \once \override NoteHead #'style = #'cross
diamond = \once \override NoteHead #'style = #'diamond

ditz = {
  \once \override TextScript #'padding = #2.0
  s32^\markup { \italic "impassible et rapide" }
  \FatText
  \MonoShift
  \monologue
  \override TextScript #'whiteout = ##t
  \override TextScript #'extra-spacing-width = #'(-0.2 . 0.2)
  %s4-"tu" \bar "" s-"sais" \bar "" s-"j'ai" \bar "" s-"l'impression" \bar "" s-"qu'on" \bar "" s-"ne" \bar "" s-"parle" \bar "" s-"que" \bar "" s-"de" \bar "" s-"cul" \bar "" s-"au" \bar "" s-"boulot" \bar "" s-"a" \bar "" s-"ben" \bar "" s-"c'est" \bar "" s-"bizarre" \bar "" s-"ça" \bar "" s-"parce" \bar "" s-"que" \bar "" s-"nous" \bar "" s-"on" \bar "" s-"ne" \bar "" s-"parle" \bar "" s-"que" \bar "" s-"de"
  s1-"tu sais j'ai l'impression qu'on ne" \break \bar "" s1-"parle que de cul au boulot eh ben c'est bizarre ça parce que que nous on ne parle que de" \bar "" \break
  \unFatText
  \unMonoShift
  \revert TextScript #'whiteout
  \revert Staff . BarLine #'Y-extent
}

roundFF = \markup { \center-align \concat {
\normal-text { \bold { \italic ( } }
\dynamic ff
\normal-text { \bold { \italic ) } } } }

roundFFdynamic = #(make-dynamic-script roundFF)

subF = \markup { \center-align \concat {
\normal-text { \bold { \italic sub } }
\dynamic f } }

subFdynamic = #(make-dynamic-script subF)

air = {
  \stopStaff
  \override Staff . StaffSymbol #'line-count = #1
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \startStaff
  \override Voice . NoteHead #'style = #'slash
  \override Voice . NoteHead #'no-ledgers = ##t
  %\override Voice . Rest #'style = #'mensural
  \set melismaBusyProperties = #'(tieMelismaBusy beamMelismaBusy slurMelismaBusy)
  %\autoBeamOff
  %\stemUp
}

tstem = \once \override Voice . Stem #'transparent = ##t

hhh = \once \override Voice . NoteHead #'no-ledgers = ##t

txtn =
#(define-music-function (parser location marky) (markup?)
#{
  \once \override NoteHead #'stencil = #ly:text-interface::print
  \once \revert NoteHead #'style
  \once \override NoteHead #'text = $marky
  \once \override NoteHead #'whiteout = ##t
  \once \override Stem #'transparent = ##t
#})

rhythmMarkStaffReduce = #-0
rhythmMarkLabelFontSize = #-0

rhythmMark = #(define-music-function (parser location label musicI musicII ) (string? ly:music? ly:music?)
   #{
      \tempo \markup {
        \center-column {
        \line \general-align #Y #DOWN {

          \score {                     % 2nd column in line
            \new Staff \with {
              fontSize = #rhythmMarkStaffReduce
              \override StaffSymbol #'staff-space = #(magstep rhythmMarkStaffReduce)
              \override StaffSymbol #'line-count = #0
              %\override VerticalAxisGroup #'Y-extent = #'(0 . 0)  % td
              %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0) %RV
            }

            \relative { \stemUp $musicI }

            \layout {
              ragged-right= ##t
              indent = 0
              \context {
                \Staff
                \remove "Clef_engraver"
                \remove "Time_signature_engraver" }
            } % layout

          } % 1st Score end

          \hspace #-0.1                % 3rd column in line

                                       % 4th column in line
          \italic \fontsize #rhythmMarkStaffReduce "="

          \score {                     % 5th column in line

            \new Staff \with {
              fontSize = #rhythmMarkStaffReduce
              \override StaffSymbol #'staff-space = #(magstep rhythmMarkStaffReduce)
              \override StaffSymbol #'line-count = #0
              %\override VerticalAxisGroup #'Y-extent = #'(0 . 0)  % td
              %\override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0) %RV
            }

            \relative { \stemUp $musicII }

            \layout {
              ragged-right= ##t
              indent = 0
              \context {
                \Staff
                \remove "Clef_engraver"
                \remove "Time_signature_engraver" }
            } % layout end

          } % 2nd Score end

        } % line end
            %\combine                     % 1st column in line
            %\italic
            \fontsize #rhythmMarkLabelFontSize $label
            %\transparent \italic \fontsize #rhythmMarkLabelFontSize f
                % This fakes a uniform baseline (ie. create common anchor for vcenter)

        } % column end
      } % markup end
   #})

tripletEighth = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  \times 2/3 { b8 }
}

tripletQuarter = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  \times 2/3 { b4 }
}

quintupletEighth = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  \times 2/3 { b8 }
}

quintupletQuarter = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  \times 2/3 { b4 }
}

dottedEighth = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  b8.
}

dottedQuarter = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  b4.
}

tripletDottedQuarter = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  \times 2/3 { b4. }
}

quintupletDottedQuarter = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  \times 4/5 { b4. }
}

normalEighth = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  b8
}

normalQuarter = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  b4
}

normalHalf = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  b2
}

#(define-markup-command (hA layout props) () (interpret-markup layout props (markup #:hspace 2)))
#(define-markup-command (hB layout props) () (interpret-markup layout props (markup #:hspace 3)))
#(define-markup-command (hC layout props) () (interpret-markup layout props (markup #:hspace 4)))
#(define-markup-command (hD layout props) () (interpret-markup layout props (markup #:hspace 5)))

%% MARKS


chiquitaT = { \tempo 4.=96 }
interludeT = { \tempo 2=96 }
slowingT = { \tempo 4=82 }
ditzTwoT = { \tempo 4=90 }
allezTwoT = { \tempo 4=100 }
schlossTwoT = { \tempo 2=90 }
freiheitT = { \tempo 4=74 }
bangT = { \tempo 8.=164 }
allezT = {\tempo 4=82 }
monstreT = \allezT
girlT = { \tempo 4=140 }
pretentiousT = { \tempo 4=134 }
jShoT = { \tempo 4=120 }
schlossOneT = { \tempo 4=150 }
firstBossaT = { \tempo 4=120 }
bossaT = { \tempo 4=124 }
rizzT = { \tempo 4=130 }
sillyT = { \tempo 4=90 }
noT = \sillyT
vacuumT = { \tempo 4=76 }
monstreTT = \vacuumT
credoT = \vacuumT
monsterTT = \vacuumT
finaleT = { \tempo 4=70 }
partOfMeT = { \tempo 4=170 }

marks = {
  \time 6/16
  \chiquitaT
  \normalStuff
  s16 |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  \time 2/4
  \allezT
  s2 |
  \time 3/4
  \girlT
  s2.
  \time 2/8
  s4 |
  \time 3/16
  \bangT
  s8. |
  s8. |
  s8. |
  s8. |
  s8. |
  s8. |
  s8. |
  s8. |
  s8. |
  s8. |
  \time 2/8
  \jShoT
  s4 |
  \time 3/8
  s4. |
  s4. |
  \time 5/4
  \schlossOneT
  \mark "*"
  s1 s8.   \chiquitaT s16 |
  \time 6/16
  s4. |
  s4. |
  s4. %{\breathe%} |
  \time 3/4
  \girlT
  s2.
  \time 3/8
  s4.
  \time 3/4
  s2.
  \time 3/8
  s4.
  \time 3/4
  s2.
  \time 3/8
  s4.
  \time 4/4
  \vacuumT
  s1 |
  s1 |
  s1 \break |
  \time 3/4
  s2. |
  \firstBossaT
  \time 4/4
  s1 |
  s1 |
  s1 |
  s1 |
  s1 \break |
  s1 |
  \time 3/8
  s4. |
  \time 6/16
  \chiquitaT
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  \time 2/4
  \sillyT
  s2 |
  s2 |
  \allezTwoT
  s2 |
  \time 4/4
  \schlossTwoT
  s1 |
  \time 6/16
  \chiquitaT
  s4. |
  \time 3/4
  \girlT
  s2. |
  \time 3/8
  s4. |
  \time 3/4
  \monstreT
  s2. |
  \time 2/4
  s2 |
  \time 3/4
  s2. |
  \time 5/8
  s1*5/8 |
  \time 5/4
  s1*5/4 |
  \time 5/8
  s1*5/8 |
  \time 3/4
  s2. |
  \time 4/4
  \bossaT
  s1 |
  \time 7/8
  s1*7/8 |
  \rizzT
  s1*7/8 |
  \time 3/16
  \bangT
  s8. | s8. | s8. | s8. | s8. | s8. | s8. | s8. | s8. | s8. |
  \time 3/4
  \girlT
  s2. |
  \time 3/8
  s4. |
  \time 3/4
  s2. |
%{
  \time 3/8
  s4. |
  \time 4/4
  \freiheitT
  s1 |
  s1 |
  \time 9/8
  s1*9/8 |
%}
  $(skip-of-length ditz)
  \time 3/8
  \chiquitaT
  s4. |
  %%%%%%%%%%%%%
  %\break
  %%%%%%%%%%%%
  \time 5/16
  s4*5/4 |
  \time 3/8
  \sillyT
  s4. |
  \time 4/4
  \monstreTT
  s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
  \time 3/4
  s2. |
  \time 5/8
  s1*5/8 |
  \time 4/4
  \noT
  s1 | s1 |
  \time 2/4
  s2 |
  \time 4/4
  \pretentiousT
  s1 |
  \girlT
  s1 |
  \bossaT
  s1 |
  s1 |
  s1 |
  \time 6/16
  \chiquitaT
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  \time 9/16
  s4.*3/2 |
  \time 2/2
  \interludeT
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  \time 3/4
  s2. |
  \time 2/4  
  s2 |
  \time 3/4
  \slowingT
  s2. |
  \time 5/4
  s1*5/4 |
  \time 3/4
  s2. |
  \time 6/4
  s1. |
  \time 7/4
  s1*7/4 |
  \time 5/4
  s1*5/4 |
  \ditzTwoT
  s1*5/4 |
  \time 3/4
  s2. |
  \time 2/2
  \interludeT
  s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
  \time 4/4
  \credoT
  s1 |
  s1 |
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  \girlT
  \mark "*"
  s1*5/4 |
  \time 3/4
  s2. |
  \time 7/8
  s1*7/8 |
  \time 3/4
  s2. |
  \time 9/8
  s1*9/8 |
  \time 4/4
  \allezT
  s1 |
  s1 |
  s1 |
  \time 6/4
  s1. |
  \time 4/4
  \mark "†"
  \vacuumT
  s1 | s1 | s1 | s1 | s1 | s1 | s1 |
  \allezT
  s1 | s1 | s1 | s1 | s1 |
  \time 3/4
  \credoT
  s2. |
  \time 4/4
  s1 |
  \jShoT
  s1 |
  \time 3/16
  \bangT
  s8. | s8. | s8. | s8. | s8. | s8. | s8. | s8. |
  \time 10/8
  \partOfMeT
  s1*5/4 | s1*5/4 | s1*5/4 | s1*5/4 | s1*5/4 | s1*5/4 | s1*5/4 | %s1*5/4 |
  s1*5/4 | s1*5/4 | s1*5/4 \bar "|."
}
%% CHORUS

soprano = \relative c' {
  \time 6/16
  \normalStuff
  \cricket
  \clef percussion
  \stemUp
  r16 |
  c4.^\mp ~ |
  c4. ~ |
  c4. ~ |
  c4. ~ |
  c4. |
  \time 2/4
  c32^\f c8.. ~ c4
  \time 3/4
  \stemNeutral
  \berioGoalposts
  \Red
  a4.^\mp^\< b8 d e |
  \time 2/8
  \stemUp
  c8^\>
  \saNormal
  \Black
  fis''8^\p^\espressivo |
  \time 3/16
  \cricket
  c,,8^\f c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  \time 2/8
  \stemNeutral
  R4 |
  \time 3/8
  R4. |
  R4. |
  \time 5/4
  \normal
  \clef "treble"
  \footnote "" #'(0 . 0) \noisemakerFRENCH Rest
  r8 e'4. ~ e2 ~ e8 \cricket r8
  \time 6/16
  \cricket
  c,4.^\mp ~ c4. ~ c4.  |
  \berioGoalposts
  \Red
  a4.^\< b8 d e |
  \time 3/8
  \stemUp
  c4^\> \saNormal fis''8^\p^\espressivo | %\cross c8:32\!^\markup { \italic \column { "aspiration rapide, pensez à" "Hanibal Lector, Le silence des agneaux" } } |
  \time 3/4
  \stemNeutral
  \cricket
  \berioGoalposts
  a,,,4.^\< b8 d e |
  \time 3/8
  \stemUp
  \saNormal fis''4^\subPd^\espressivo \berioGoalposts \cricket \cross c,,8:32^\markup { \italic \column { "aspiration" "rapide" } } |
  \time 3/4
  \stemNeutral
  a4.^\< \saNormal fis'''8^\subPd^\espressivo \berioGoalposts \cricket d,,^\< e16 c^\f ~ |
  \time 3/8
  \stemUp
  c4. |
  \time 4/4
  \cricket
  c1 ~ |
  c16 c8 c16 ~ c8 c16 c16 ~ c2 ~ |
  c1 ~ |
  \time 3/4
  c2. |
  \Black
  \saNormal
  \time 4/4
  r4 fis4^\mp r8 fis r4 |
  r4 fis4 r8 fis a g |
  r4 fis4 r8 fis r4 |
  r4 fis4 r8 fis a g |
  r4 e4 r8 e r4 |
  r4 ees4 r8 d d d |
  \time 3/8
  r4 fis8 |
  \cricket
  \time 6/16
  c4.^\mp ~ |
  c4. ~ |
  c4. ~ |
  c4. ~ |
  c4. |
  \saNormal
  \time 2/4
  \normal \clef "treble"
  a'8^\f a a r |
  a8 a a r |
  \cricket
  \clef percussion
  c,32 c8.. ~ c4 |
  \normal \clef "treble"
  \time 4/4
  c'2.. ~ \times 2/3 { c8 r16 }
  \time 6/16
  R4. |
  \berioGoalposts
  \Red
  \cricket
  a,4.^\< b8 d e |
  \time 3/8
  \stemUp
  c4^\> \saNormal fis''8^\p^\espressivo | %\cross c8:32\!^\markup { \italic \column { "aspiration rapide, pensez à" "Hanibal Lector, Le silence des agneaux" } } |
  \Black
  \time 3/4
  R2. |
  \time 2/4
  \cricket \berioGoalposts
  \stemNeutral
  \times 2/3 { \footnote "" #'(0 . 0) "* Tremoli de triangle pendant les \"pitié\"." NoteHead c,16^\mf^"*" c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  R2. |
  \time 5/8
  \times 2/3 { c16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } | \myPageBreak
  \time 5/4
  R1*5/4 |
  \time 5/8
  \times 2/3 { c16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  \times 2/3 { c c c } r8 r2 |
  \saNormal
  r4 fis,4^\mp r8 fis r4 |
  \time 7/8
  r4 fis4 r8 fis a |
  R1*7/8 |
  \time 3/16
  \stemUp
  \cricket
  c,8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  \Red
  a4.^\mp^\< b8 d e |
  \time 2/8
  \stemUp
  c8.^\> \Black c16^\subFdynamic c c |
  \time 3/4
  \slash c2.^\markup { \italic \column { "en frottant" "les mains" }} |
%{
  \time 3/8
  \slash c8. c16 c c |
  \time 4/4
  R1 |
  \times 4/5 { r8 c16 c c } r2.
  \time 9/8
  r2
  \times 4/5 { r8 c16 c c }
  r4.
%}
  \cadenzaOn
  \time 4/4
  \question
  \ditz
  \cadenzaOff
  \time 3/8
  \saNormal
  c'4 ~ c16 r16 |
  \time 5/16
  \cricket |
  c,8. ~ c8 |
  \time 3/8
  \normal \clef "treble" \stemNeutral
  a'8^\f a a |
  \time 4/4
  \cricket \clef percussion
  \berioGoalposts
  \ottava #1
  \Red
  r8. c16^\mf^\chipmunkFRENCH r4 \cross c,16_\clickFRENCH a'-. r8 r16 e'8.-\bendAfter #-2  |
  r8 d8-. r8 c16 c r8 \times 2/3 { r16 b16 b } r16 a16 r8 |
  r8 c r4 r16 a16^\responseFRENCH (  f'4-\bendAfter #-3 ) r8 |
  r8. b,16 e8-. c-. r16 d16 r8 b16 b r e |
  \times 2/3 { r8 \diamond c4^\whistleFRENCH-\bendAfter #2  } r4 e8-\bendAfter #-2  r8 r8 d16 d |
  d d r8 r8. f16 r d r8 r8. e16 |
  \times 2/3 { d8 e r } r16 c r8 \acciaccatura { d } e8-\bendAfter #-2  r8 r8 \times 2/3 { r16 f [ ( e ] } |
  \times 2/3 { f [ e ) ] r16 } r8 r4 r4 f16 f r8 |
  r4 c8-. r e-. r \times 2/3 { d-. d-. r } |
  \time 3/4
  \times 2/3 { r d-. r } \acciaccatura { e } g4-\bendAfter #-3  \times 2/3 { r4 c,8 } |
  \time 5/8
  r8 e16 c r4 b8 |
  \ottava #0
  \time 4/4
  \Black
  \saNormal \clef "treble"
  g'4^_^\ff g4^_ g4^_ g4^_ |
  g4^_ g4^_ g4^_ g4^_ |
  \time 2/4
  g4^_ g8 \cricket \berioGoalposts \clef percussion \berioGoalposts \Red b,,^\f |
  \time 4/4
  d c e d r8 f ~ f8. \cricket \times 2/3 { c32 c c } |
  \stemNeutral
  a4. b8 d e \stemUp c
  \saNormal
  fis''8^\p^\espressivo | 
  \Black
  r4 a,,^\mp r8 aes r8 g |
  r4 g r8 fis g gis |
  r4 a4 r8 aes r4 |
  \time 6/16
  \cricket
  \Red
  c,4. ~ |
  c4. ~ |
  c4. ~ |
  c4. ~ | 
  \redT
  c16^\markup \italic \column { "en regardant Elsa de travers," "genre tu fais quoi, meuf ?" } r r4 |
  \Black
  R4.*5 |
  \time 9/16
  \Red
  r16 \times 4/5 { c8^\mf c8 c8 c8 c8 } | \Black
  \time 2/2
  \normal \clef "treble"
  r8 c'16^\mp^\< c c8 b r8 bes16 bes bes8 a |
  g f e d c4-.^\f e''4-.^\pp
  c,4.^\mp \glissando a8 ~ a4. r8 |
  c4. \glissando a8 ~ a4. r8 |
  c4. \glissando a8 ~ a4 gis \glissando |
  \time 3/4
  a4-. r4 r4 |
  \time 2/4
  \cricket \clef percussion c,32^\f c8.. ~ c4 |
  \myPageBreak
  \time 3/4
  \normal \clef "treble"
  \times 2/3 { fis4^\mf^\flatterFRENCH  dis r } r |
  \time 5/4
  fis4 r4 dis4^\rubbingFRENCH ~ dis8 r8 r4 |
  \time 3/4
  fis2. |
  \time 6/4
  r8^\punctuateFRENCH dis4. ~ dis2 \cricket \Red \times 2/3 { r8 c c } \Black r4 |
  \time 7/4
  \saNormal
  fis2. ~ fis2 r2 |
  \time 5/4
  dis2. ~ dis2 ~ |
  dis2. ~ dis2 |
  \time 3/4
  R2. |
  \time 4/4
  R1^\vacuumoffFRENCH |
  R1 |
  R1^\percussionFRENCH |
  R1 |
  R1 |
  R1 |
  \myPageBreak
  R1 |
  R1 |
  \normal \clef "treble"
  e'8 g e d e d d4 |
  b8 d b a b a a4 |
  \time 4/4
  bes8     bes32 bes bes bes       bes4 ~   bes32 bes bes16 bes32 bes bes16 ~       bes32 bes bes bes bes bes bes bes |
  bes bes bes bes bes bes bes16 ~    bes4 ~    bes32 bes bes bes ~ bes8 ~ bes32 bes bes bes32 ~ bes8 ~ |
  \time 3/4
  bes32 bes bes8. ~      bes32 bes bes bes bes bes16. ~        bes16 bes32 bes bes bes bes bes
  \time 2/4
  bes16 bes32 bes bes bes16.  ~ bes8. bes32 bes |
  \cricket \clef percussion \berioGoalposts
  \footnote "" #'(0 . 0) %{\tappingagainFRENCH%} NoteHead
  R1*5/4
  \time 3/4
  \stemNeutral
  \cricket \berioGoalposts
\Red
  a,4.^\mp^\< b8 d e |
  \time 7/8
  \stemUp
  c4^\> r8\! r4 r4 |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e |
  \time 9/8
  \stemUp
  c4^\> r8\! r4 r4 r8 a8 |
\Black
%  c,1^\mp^\slowglissFRENCH \glissando  s4 |
%  \time 3/4
%  s2. |
%  \time 7/8
%  s1*7/8 |
%  \time 3/4
%  s2. |
%  \time 9/8
%  s1 c'8 |
  \time 4/4
  R1 |
  R1^\fermataMarkup |
  \normal \clef "treble"
  f'1^\ppp ~ |
  \time 6/4
  f4 \air \clef percussion \ctip \stemTrans \sustainG c4*4^\>^\bravosmallFRENCH \glissando \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \time 4/4
  \normal
  \cricket
  \footnote "" #'(0 . 0) \waterFRENCH NoteHead 
  \berioGoalposts
  \ottava #1
  \Red
  g''8^\mf^\cadenzaFRENCH r r4 r8 d r4 |
  f8 r8 r8 e16 e \times 2/3 { r4 d8 } r8. e16 |
  r4. f8 %{%} r4 r8. e16 |
  r8 c8   r4   r8 d16 d   d r8. |
  r8 f8 r8. f16 r4 c16 c c c |
  r8 d16 c \times 2/3 { r4 e8 } r4 f8 r8 |
  r8 d \times 2/3 { r8 c f } \ottava #0 r2 |
  \Black
  \normal \clef "treble"
  r4 a,2.^\mp |
  a1 |
  a2.^\< ( b4 ~ |
  b2 cis2 ~ |
  cis8 dis4. ~ dis8 fis ) r4\roundFFdynamic |
  \time 3/4
  bes,16.^\f bes32 bes bes bes bes    bes bes bes bes bes8 ~    bes8 ~ bes32 bes bes bes |
  \time 4/4
  bes4 ~    bes8 bes32 bes bes bes    ~ bes4 ~   bes32 bes bes bes bes bes bes bes |
  r4 bes4^\mf \glissando g4 ees'32 ees ees ees ees ees r16
  \time 3/16
  \clef percussion \cricket
  \stemUp
  c,8^\f c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c32. c c c |
  \saNormal
  \time 10/8
  bes8^\f c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes \Red \cricket c, c c \saNormal \Black ees |
  bes c ees f g bes \Red \cricket c, c c \saNormal \Black ees |
  bes c ees f g bes c ges f ees |
  %bes c ees f g bes c ges f ees |
  \transpose c bes, \relative c' {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
  \transpose c d \relative c' {
  bes c ees f g bes c ges f ees } |
}

sopranoWords = \lyricmode {
  shhh
  Al -- lez
  \RedL
  I'm a lit -- tle girl
  \BlackL
  â
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Schloß!
  shhh
  \RedL
  I'm a lit -- tle girl â
  I'm a lit -- tle â \skip 1  
  I'm â lit -- tle girl
  zzzzhh gir zhh rl zzhhhh
  \BlackL
  A -- ra -- ça
  a pra -- ia.
  Que -- ri -- do te a -- mo.
  Es -- ca -- pa co -- mi -- go. Sim
  shhh
  Sil -- ly "ra -"
  Sil -- ly "ra -"
  Al -- lez.
  Schloß!
  \RedL
  I'm a lit -- tle girl â
  \BlackL
  pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é
  pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é
  pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é
  A -- ra -- ça a pra
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  \RedL
  I'm a lit -- tle girl
  \BlackL
  part of me
  \skip 1
%{
  \skip 1
  part of me
  part of me
  part of me
%}
  Schloß!
  shhh
  Sil -- ly "ra -"
  \repeat unfold 47 \skip 1
  No! No! No! No! No! No! No! No! No! No!
  \RedL
  pre -- ten -- tious right -- eous fuck! chi -- qui -- ta I'm a lit -- tle girl â
  \BlackL
  Tem cui -- da -- do pe -- ri -- go
  E um
  \RedL
  shhh
  et si on di -- sait
  \BlackL
  Ca -- li -- for -- nia
  C A L I F O R N I A
  Save me.
  Save me.
  Save me from Merck.
  Al -- lez
  J -- sho
  J -- sho
  J -- sho
  \RedL
  change it
  \BlackL
  J -- sho
  \markup { \center-column { 言 yán }} \markup { \center-column { 者 zhě }} \markup { \center-column { 不 bù }} \markup { \center-column { 如 zhī }} \markup { \center-column { 知 zhī }} \markup { \center-column { 者 zhě }} \markup { \center-column { 默 mò }}
  \markup { \center-column { 此 cĭ }} \markup { \center-column { 語 yŭ }} \markup { \center-column { 吾 wú }} \markup { \center-column { 聞 wén }} \markup { \center-column { 于 yú }} \markup { \center-column { 老 lăo }} \markup { \center-column { 君 jūn }}
  Cre -- do in u -- num De -- um,
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cæ -- li et ter -- ræ,
  vi -- si -- bi -- li -- um om -- ni -- um et  in -- vi -- si -- bi -- li -- um.
  Et in u -- num Do -- mi -- num IE -- SUM CHRIS -- TUM, Fi -- li -- um
  \RedL
  I'm a lit -- tle girl. I'm a lit -- tle girl I'm
  \BlackL
  %oooooo
  Schloß! " "
  \repeat unfold 26 { " " }
  Sil -- ly "ra -"
  CHRI -- STUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum.
  Et ex Pa -- tre na -- tum an -- te om -- ni -- a sæ -- cu -- la.
  J -- sho J -- sho's on the riz -- zo.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead. part of me
  \repeat unfold 4 { Ev' -- ry -- bo -- dy wants to be part of me. }
  \repeat unfold 2 { Ev' -- ry -- bo -- dy wants to \RedL part of me \BlackL me. }
  \repeat unfold 5 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

alto = \relative c' {
  \time 6/16
  \normalStuff
  \cricket
  \clef percussion
  \stemUp
  c16^\mp |
  c c c c c c |
  c c c c c c |
  c c c c c c |
  c c c c c c |
  c c c c c r |
  \time 2/4
  c32^\f c8.. ~ \times 2/3 { c4 \berioGoalposts \stemNeutral c'8^\mp } |
  \time 3/4
  \stemNeutral
  \saNormal
  a,2.^\p^\espressivo-\bendAfter #-2 
  \time 2/8
  R4 |
  \time 3/16
  \cricket
  c8^\f c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  \time 2/8
  \stemNeutral
  \berioGoalposts
  r8 g'^\stupidFRENCH |
  \time 3/8
  g g f |
  a g4 |
  \time 5/4
  \normal
  \clef "treble"
  r8 g4. \berioGoalposts c8 c c4 c'8 \cricket \clef percussion \times 2/3 { r8 c,,16^\mp }
  \time 6/16
  c16 c c c c c |
  c16 c c c c c |
  c16 c c c c r16 |
  \time 3/4
  \stemNeutral
  \saNormal
  a2.^\p^\espressivo-\bendAfter #-2
  \time 3/8
  R4. |
  \time 3/4
  \stemNeutral
  \saNormal
  a2.^\espressivo-\bendAfter #-2
  \time 3/8
  R4. |
  \time 3/4
  \stemNeutral
  \saNormal
  a2^\espressivo-\bendAfter #-2
  \cricket
  \times 2/3 { c8 c c } |
  \time 3/8
  R4.^\vacuumFRENCH |
  \time 4/4
  \stemNeutral
  \cricket
  \berioGoalposts
  \transpose f d \relative c' {
    r8. c'16^\f^\babbleFRENCH e16 c r c  g8.-\bendAfter #-2 r16 \acciaccatura { \cross c16^\rireFRENCH  } \cross c \cross c \cross c \cross c |
    \cross e16 r \acciaccatura { \cross b } \cross c \cross c   \cross c8 r e8.-\bendAfter #-2  r16 \acciaccatura { c16 } g8 e |
    \times 2/3 { r8 b r } \acciaccatura { b } e8.-\bendAfter #-3  r16   f8 r16 d16 g8.\bendAfter #-3  r16 |
    \time 3/4
    b16 r \cross e \cross e    \cross e \cross e r b  \cross e \cross e \cross e r |
    \saNormal
    \stemNeutral
  }
  \time 4/4
  \saNormal
  \Red
  g4 \cricket \cross c8^\mouthclickFRENCH \saNormal g d'4 \cricket \cross c8 \saNormal g ~ |
  g g \cricket \cross c8 \saNormal g d' \cricket \cross c8 \saNormal d e ~ |
  e e \cricket \cross c8 \saNormal e b4 \cricket \cross c8 \saNormal e ~ |
  e e \cricket \cross c8 \saNormal e b \cricket \cross c8 \saNormal b c ~ |
  c c \cricket \cross c8 \saNormal c g8 \cricket \cross c8 \saNormal c d ~ |
  d d \cricket \cross c8 \saNormal d a d \cricket \cross c8 \saNormal g ~ |
  \time 3/8
  g g \Black \cricket \cross c16 c16^\mp |
  \time 6/16
  \stemUp
  c c c c c c |
  c c c c c c |
  c c c c c c |
  c c c c c c |
  c c c c c r |
  \time 2/4
  \normal \clef "treble"
  \Red
  a8^\f a a r |
  a8 a a r |
  \cricket
  \clef percussion
  \Black
  c32 c8.. ~ c4 |
  \normal \clef "treble"
  \time 4/4
  e2. g8 ~ \times 2/3 { g8 \cricket \clef percussion c,16^\mp }
  \time 6/16
  c16 c c c c r |
  \time 3/4
  \saNormal
  a2.^\p^\espressivo-\bendAfter #'-2 
  \time 3/8
  R4. |
  \time 3/4
  R2. |
  \time 2/4
  \cricket \berioGoalposts
  \stemNeutral
  \times 2/3 { c'16^\mf c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  R2. |
  \time 5/8
  \times 2/3 { c16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 5/4
  R1*5/4 |
  \time 5/8
  \times 2/3 { c16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  \times 2/3 { c c c } r8 r2 |
  \saNormal
  \Red
  g,4 \cricket \cross c8^\mouthclickFRENCH \saNormal g d'4 \cricket \cross c8 \saNormal g ~ |
  g g \cricket \cross c8 \saNormal g d' \cricket \cross c8 \saNormal d |
  \Black
  \stemNeutral
  \cricket
  \berioGoalposts
  \times 2/3 { g4^\f^\markup { \italic \column { "ditzy american female" } } g g }  \times 2/3 { f4 a8 ~ } a8 |
  \time 3/16
  \stemUp
  c,8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  \time 3/4
  c2.^ ~ |
  \time 3/8
  c4. |
  \time 3/4
  \slash c2.^\markup { \italic "en frottant les mains" } |
%{
  \time 3/8
  \slash c8. r8. |
  \time 4/4
  \saNormal \clef "treble"
  a'2^\pp g8 [ f ] e^\f [ f ] |
  g8.. [ d32 ] d4 ~ d8 g4 c,8 ~ |
  \time 9/8
  c8 f4 ~ f8 f8 e [ ees ] ces4 |
%}
  $(skip-of-length ditz)
  \time 3/8
  \saNormal
  g'4 ~ g16 \cricket \clef percussion \stemUp c,^\mp |
  \time 5/16
  c c c c c |
  \time 3/8
  \normal \clef "treble" \stemNeutral
  a8^\f a a |
  \time 4/4
  \cricket
  R1 | R1 | r2 \redT \cross \Red c4^\gloveFRENCH \Black r4 |
  R1 |
  \saNormal
  \transpose c ees \relative c'' { r8. a16\mp^\jazzFRENCH ~ a2. \grace { gis16 [ a ] } |
  gis2. ~ \times 2/3 { gis8 gis b ~ } |
  b fis8 ~ fis2 r8 b8 ~ |
  \times 2/3 { b4 a8 ~ } a2 \grace { gis16 [ a ] } gis4 ~ |
  \times 2/3 { gis4 fis8 ~ } fis2 r4 |
  \time 3/4
  \times 2/3 { r4 cis'8 ~ } cis2 |
  \time 5/8
  e4. cis8. b16 | }
  \time 4/4
  \normal \clef "treble"
  g'4^_^\ff g4^_ g4^_ g4^_ |
  g4^_ g4^_ g4^_ g4^_ |
  \time 2/4
  g4^_ g8 \cricket \clef percussion \berioGoalposts r |
  \time 4/4
  r4 e8^\f c r8 f ~ f4 |
  \stemNeutral
  \saNormal
  r8 a,2..-\bendAfter #-2  |
\Red
  \saNormal
  a4 \cricket \cross c8^\mouthclickFRENCH \saNormal a e e \cricket \cross c'8 \saNormal a ~ |
  a a \cricket \cross c8 \saNormal a e \cricket \cross c'8 \saNormal e, b' ~ |
  b a \cricket \cross c8 \saNormal a e4 \cricket \cross c'8 \saNormal e,16 \stemUp \Black \cricket c'16^\mp |
  %r4 c^\mp r8 e r8 c |
  %r4 c r8 d e d |
  %r4 c4 r8 e r8. %\stemUp \cricket c16^\mp |
  \time 6/16
  c c c c c c
  c c c c c c
  c c c c c c
  c4.^\<^\richFRENCH ~
  c4. ~
  c4.^\> ~
  c4. ~
  c4.^\< ~
  c4^\f c8 |
  c c c |
  \time 9/16
  c16 r8 r4.
  \time 2/2
  \normal \clef "treble"
  c8^\mp^\< b c d e dis e f |
  g fis \cricket c2.^\f^\highfryFRENCH |
  \saNormal
  \Red
  gis'4^\mp^\< a8 f8^\> ~ f8 c^\mp f c |
  gis'4 \times 2/3 { a8 \Black r8 \cricket c,^\tapefastFRENCH } \times 2/3 { c c c } r16 \cross c8.:32^\rireFRENCH |
  \times 2/3 { c2--^\tapeslowFRENCH c-- c-- } |
  \time 3/4
  c4-- c-. c-. |
  \time 2/4
  \cricket \clef percussion c32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "treble"
  \times 2/3 { fis4^\mf^\flatterFRENCH  dis r } r |
  \time 5/4
  fis4 r4 dis4^\rubbingFRENCH ~ dis8 r8 r4 |
  \time 3/4
  fis2. |
  \time 6/4
  r8^\punctuateFRENCH dis4. ~ dis2 r2 |
  \time 7/4
  fis2. ~ fis2 \cricket c2^\markup { \italic "loud inhale" } \saNormal |
  \time 5/4
  dis2. ~ dis2^\vacuumFRENCH |
  \cricket \clef percussion \berioGoalposts
  r4   r8. a'16^\f^\markup { \italic \column { "ditzy american" "female" } }    f16 f b r   e,16 a8.\bendAfter #-3    \times 2/3 { r8 \acciaccatura e16 \cross g8 \cross g } |
  \time 3/4
  \times 2/3 { \cross g \cross g r } r8 \times 2/3 { r16 d'16 d } \times 2/3 { d d r } r8 |
  \time 2/2
  \footnote "" #'(0 . 0) \tappingFRENCH NoteHead
  e,1^\turnoffFRENCH-\bendAfter #-3 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1*3 |
  %\times 2/3 { r2 c4^\f^\crashFRENCH } \times 2/3 { c c c } |
  %\times 2/3 { r4 c8 } c4 ~ c r4 |
  %r2 r8 c^\p c c |
  \normal \clef "treble"
  e'8 g e d e d d4 |
  b8 d b a b a a4 |
  \time 4/4
  \Red
  \once \override TextScript #'color =#red
  bes,4^\markup \italic \column { "même rythme," "l'octave en dessous" }     bes32 bes bes bes bes8   bes32 bes16 bes32 bes bes bes bes ~   bes4 ~ |
  bes8 ~ bes32 bes bes bes    bes bes bes bes bes bes bes16 ~    bes8 bes32 bes bes16 ~   bes8 bes32 bes bes bes |
  \time 3/4
  bes bes bes bes bes8 ~ bes4 ~    bes32 bes bes bes bes bes16. ~
  \time 2/4
  bes8.. bes32 bes32 bes bes bes ~ bes32 bes16. |
  \Black
  \cricket \clef percussion \berioGoalposts
  c1^\mp^\slowglissFRENCH \glissando  s4 |
  \time 3/4
  s2. |
  \time 7/8
  s1*7/8 |
  \time 3/4
  s2. |
  \time 9/8
  s1 c'8 |
  \time 4/4
  \Red \redT
  \cricket c,1:32^\markup \italic "drumroll" |
  \Black
  R1^\fermataMarkup
  \normal \clef "treble"
  \Red
  a1^\ppp ~ |
  \time 6/4
  a4 \Black \air \clef percussion \ctip \stemTrans \sustainG c4*4^\>^\bravoFRENCH \glissando \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \time 4/4
  \normal
  \cricket
  R1*7 |
  \normal \clef "treble"
  r4 a'2.^\mp |
  cis,1 |
  e2. ( g4 ~ |
  g8 a b4 ~ b8 a g e ~ |
  e8 cis4 e4 g8 ) \Red a4^\ff ~ |
  \time 3/4
  a32 \Black \Red \redT bes,16^\f^\markup \italic { toujours l'octave en dessous } bes32 bes bes bes bes    bes bes bes bes bes8 ~    bes8 ~ bes32 bes bes bes |
  \time 4/4
  bes4 ~    bes8 bes32 bes bes bes    ~ bes4 ~   bes32 bes bes bes bes bes bes bes |
  r4 \Black g'4^\mf \glissando ees4. r8 |
  \time 3/16
  \clef percussion \cricket
  \stemUp
  c8^\f c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  \saNormal
  \time 10/8
  bes8^\f c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  \cricket r4 c8^\lambFRENCH c2..-\bendAfter #-2  |
  \cricket r4 c8 c2..-\bendAfter #-2  |
  \saNormal
  bes8 c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  %bes c ees f g bes c ges f ees |
  \transpose c bes, \relative c' {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
}

altoWords = \lyricmode {
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Al -- lez hop
  â
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  J -- sho's on the riz -- zo!
  Schloß!
  Oh my gawd, Schloß!
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  â
  â
  â
  no you're not
  \repeat unfold 30 \skip 1
  \RedL
  A \skip 1 pra -- ia. \skip 1
  Va -- mos. \skip 1 Fu -- ga \skip 1 con -- mi -- go.
  \skip 1 A -- mor.  \skip 1 Va -- mos. \skip 1 Ô sim \skip 1
  É tar -- de. \skip 1 Fu -- ga \skip 1 con mi -- go \skip 1 e pa -- ra \skip 1 sem -- pre. \skip 1
  \BlackL
%  A -- ra -- ça a pra -- ia.
%  Que -- ri -- do te a -- mo.
%  Es -- ca -- pa co -- mi -- go. Sim
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Sil -- ly "ra -"
  Sil -- ly "ra -"
  Al -- lez.
  Schloß!
  Schloß!
  Chi -- qui -- ta ba -- na -- na
  â
  pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é
  pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é
  pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é
  %A -- ra -- ça a pra
  \RedL
  A \skip 1 pra -- ia. \skip 1
  Va -- mos. \skip 1 Fu -- ga \skip 1 con
  \BlackL
  J -- sho's on the rizz!
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  \repeat unfold 2 \skip 1
  %{
  O Frei -- heit, Frei -- heit!
  Nicht wo Hym -- nen schal -- len
  %}
  Schloß!
  Chi -- qui -- ta ba -- na -- na
  Sil -- ly "ra -"
  \skip 1
  \repeat unfold 13 \skip 1
  No! No! No! No! No! No! No! No! No! No!
  right -- eous fuck!
  â
  \RedL
  E \skip 1 es -- cu -- ro \skip 1
  Nem dá \skip 1 na -- da \skip 1
  Sen -- ho -- ra \skip 1
  A -- mor \skip 1 E
  \BlackL
  %Tem cui -- da -- do pe -- ri -- go
  %E um
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui
  pu -- tain j'ar -- rive pas
  \repeat unfold 10 back
  â
  %\repeat unfold 6 Merck
  \RedL
  Save me please you got to save me
  \BlackL
  J -- sho's for kids \skip 1 J -- sho's for kids.
  \repeat unfold 2 Merck
  Al -- lez
  J -- sho
  J -- sho
  J -- sho
  J \skip 1 sho
  \repeat unfold 15 { " " }
  %\repeat unfold 9 \skip 1
  \markup { \center-column { 言 yán }} \markup { \center-column { 者 zhě }} \markup { \center-column { 不 bù }} \markup { \center-column { 如 zhī }} \markup { \center-column { 知 zhī }} \markup { \center-column { 者 zhě }} \markup { \center-column { 默 mò }}
  \markup { \center-column { 此 cĭ }} \markup { \center-column { 語 yŭ }} \markup { \center-column { 吾 wú }} \markup { \center-column { 聞 wén }} \markup { \center-column { 于 yú }} \markup { \center-column { 老 lăo }} \markup { \center-column { 君 jūn }}
  Cre -- do in u -- num De -- um,
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cæ -- li et ter -- ræ,
  vi -- si -- bi -- li -- um om -- ni -- um et  in -- vi -- si -- bi -- li -- um.
  Et in u -- num Do -- mi -- num IE -- SUM
  oooooo " "
  \skip 1
  Schloß! " "
  Sil -- ly rab -- \RedL bit. \BlackL
  CHRI -- STUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum.
  Et ex Pa -- tre na -- tum an -- te om -- ni -- a sæ -- cu -- la.
  J -- sho
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  \repeat unfold 3 { Ev' -- ry -- bo -- dy wants to be part of me. }
  \repeat unfold 4 eh
  \repeat unfold 6 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

tenor = \relative c' {
  \time 6/16
  \normalStuff
  \cricket
  \clef percussion
  \stemUp
  c16^\mp |
  c c c c c c |
  c c c c c c |
  c c c c c c |
  c c c c c c |
  c c c c c r |
  \time 2/4
  c32^\f c8.. ~ c8. \times 2/3 { c32 c c } |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\mp^\< b8 d e |
  \time 2/8
  \stemUp
  c8.^\> r16\! |
  \cricket
  << {
  \time 3/16
  c8^\f c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. | }
  \new Staff \with {
      \remove "Time_signature_engraver"
      alignAboveContext = #"sopstaff"
      fontSize = #-3
      firstClef = ##f
      \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 2))
    } \relative c' { \clef percussion \cricket \override NoteHead #'style = #'cross \stemUp \footnote "" #'(0 . 0) "* Les rythmes tapés sur la poitrine sont toujours exécutés tutti." NoteHead  c16^\f^\markup { \italic { "en tapant sur la poitrine" } }^"*" [ c c] \repeat unfold 9 { c16[ c c] } }
  >>
  \time 2/8
  R4 |
  \time 3/8
  R4. |
  R4. |
  \time 5/4
  \normal
  \clef "treble_8"
  r8 c4. ~ c2 ~ c8 \cricket \clef percussion \times 2/3 { r8 c16^\mp }
  \time 6/16
  c16 c c c c c |
  c16 c c c c c |
  c16 c c c c r16 |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\< b8 d e |
  \time 3/8
  \stemUp
  c4^\> \cross c8:32\!^\markup { \italic \column { "aspiration rapide, pensez à" "Hanibal Lector, Le silence des agneaux" } } |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e |
  \time 3/8
  \stemUp
  c4^\> \cross c8:32\! |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e16 c^\f ~ |
  \time 3/8
  \stemUp
  c4. ~ |
  \time 4/4
  c8 r8 r4 r2 |
  r16 c8 r16 r8 c16 r r2 |
  R1 |
  \time 3/4
  R2. |
  \time 4/4
  \tNormal
  g4 \cricket \cross c8^\mouthclickFRENCH \tNormal g d4 \cricket \cross c'8 \tNormal g ~ |
  g g \cricket \cross c8 \tNormal g d \cricket \cross c'8 \tNormal d, e ~ |
  e e \cricket \cross c'8 \tNormal e, b4 \cricket \cross c'8 \tNormal e, ~ |
  e e \cricket \cross c'8 \tNormal e, b \cricket \cross c'8 \tNormal b, c ~ |
  c c \cricket \cross c'8 \tNormal c, g'8 \cricket \cross c8 \tNormal c, d ~ |
  d d \cricket \cross c'8 \tNormal d, a' d, \cricket \cross c'8 \tNormal g ~ |
  \time 3/8
  g g \cricket \cross c16 c16^\mp |
  \time 6/16
  c c c c c c |
  c c c c c c |
  c c c c c c |
  c c c c c c |
  c c c c c r |
  \time 2/4
  \normal
  \normal \clef "treble_8"
  a8^\f a a r |
  a8 a a r |
  \cricket \clef percussion
  c32 c8.. ~ c8 \times 2/3 { c16 c c } |
  \normal \clef "treble_8"
  \time 4/4
  c2. e8 ~ \times 2/3 { e8 \cricket \clef percussion c16^\mp }
  \time 6/16
  c16 c c c c r |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\mp^\< b8 d e |
  \time 3/8
  \cricket
  \stemUp
  c4^\> r8\! |
  \time 3/4
  \cross c8.^\p^\gongFRENCH \cross c \cross c \cross c |
  \time 2/4
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16^\mf c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  \stemUp \cricket
  \cross c,8.^\p^\gongFRENCH \cross c \cross c \cross c |
  \time 5/8
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 5/4
  \stemUp \cricket
  \times 5/6 { \cross c,4^\p^\gongFRENCH \cross c \cross c \cross c \cross c \cross c | }
  \time 5/8
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  \times 2/3 { c c c } \stemUp \cricket \cross c,8.^\p^\gongFRENCH \cross c \cross c r16 |
  \tNormal
  \stemNeutral
  g4 \cricket \cross c8^\mouthclickFRENCH \tNormal g d4 \cricket \cross c'8 \tNormal g ~ |
  g g \cricket \cross c8 \tNormal g d \cricket \cross c'8 \tNormal d, |
  R1*7/8
<< {
  \time 3/16
  \stemUp
  \cricket
  c'8^\f c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  }
  \new Staff \with {
      \remove "Time_signature_engraver"
      alignAboveContext = #"sopstaff"
      fontSize = #-3
      firstClef = ##f
      \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 2))
    } \relative c' { \clef percussion \cricket \override NoteHead #'style = #'cross \stemUp c16^\f^\markup { \italic { "en tapant sur la poitrine" } }[ c c] \repeat unfold 9 { c[ c c] }}
  >>
  \time 3/4
  \stemNeutral
  a4.^\mp^\< b8 d e |
  \time 3/8
  \stemUp
  c4^\> r8\! |
  \time 3/4
  \slash c2.^\markup { \italic "en frottant les mains" } |
%{
  \time 3/8
  \slash c8. r8. |
  \time 4/4
  \normal \clef "treble_8"
  f2^\pp e4^\f g, |
  c4 ges'2 bes,4 ~ |
  \time 9/8
  bes ees4 d c bes8 |
%}
  $(skip-of-length ditz)
  \time 3/8
  \tNormal
  e4^\f ~ e16 \cricket \clef percussion \stemUp c^\mp |
  \time 5/16
  c c c c c |
  \time 3/8
  \normal \clef "treble_8"
  \stemNeutral
  a8^\f a a |
  \time 4/4
  \cricket \clef percussion
  \revert Voice . Stem #'flag-style
  R1 | R1 |
  r2 \cross c4^\gloveFRENCH r4 |
  R1 |
  r4.. \cross c16 r2 |
  R1 | R1 | R1 | R1 |
  \time 3/4
  \times 2/3 { r4 \cross c8^\sfz } r2 |
  \time 5/8
  R1*5/8 |
  << {
  \time 4/4
  \normal \clef "treble_8"
  g4^_^\ff g4^_ g4^_ g4^_ |
  g4^_ g4^_ g4^_ g4^_ | }
  \new Staff \with {
      \remove "Time_signature_engraver"
      alignAboveContext = #"tenstaff"
      fontSize = #-3
      firstClef = ##f
      \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 2))
    } \relative c' { \clef percussion \cricket \override NoteHead #'style = #'cross \stemUp \times 4/6 { c16^\f^\markup { \italic "tambour" }[ c c c c c] } \repeat unfold 7 \times 4/6 { c16[ c c c c c] } }
  >>
  \time 2/4
  g4^_ g8 \cricket \clef percussion \berioGoalposts b^\f |
  \time 4/4
  d c e d r8 f ~ f8. \cricket \times 2/3 { c32 c c } |
  \stemNeutral
  a4. b8 d e \stemUp c4 |
  \tNormal
  a4 \cricket \cross c8^\mouthclickFRENCH \tNormal a e e \cricket \cross c'8 \tNormal a ~ |
  a a \cricket \cross c8 \tNormal a e \cricket \cross c'8 \tNormal e, b' ~ |
  b a \cricket \cross c8 \tNormal a e4 \cricket \cross c'8 \tNormal e,16 \stemUp \cricket c'16^\mp |
  \time 6/16
  c c c c c c
  c c c c c c
  c c c c c c
  c4. ~^\richFRENCH
  c4.^\< ~
  c4. ~
  c4.^\> ~
  c4. ~
  c4.^\< ~
  c4. ~
  \time 9/16
  c16\f   c8*4/5^\mf c8*4/5 c8*4/5 c8*4/5 c8*4/5 |
  \time 2/2
  \normal \clef "treble_8"
  e4.^\mp^\< ees8 d4. des8 |
  c8 c c c c^\f r4. |
  gis4^\mp^\<^\spoonsFRENCH a8 f8^\> ~ f8 c^\mp f c |
  gis'4^\sim a8 f8 ~ f8 c f c |
  gis'4 a8 f8 ~ f4 c \glissando |
  \time 3/4
  f4 \cricket \cross c'^\mouthclickFRENCH \cross c |
  \time 2/4
  c32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "treble_8"
  \times 2/3 { fis,4^\mf^\flatterFRENCH  dis r } r |
  \time 5/4
  fis4 r4 dis4^\rubbingFRENCH ~ dis8 r8 r4 |
  \time 3/4
  fis2. |
  \time 6/4
  r8^\punctuateFRENCH  dis4. ~ dis2 \cricket \clef percussion \times 2/3 { r8 c' c } r4 |
  \time 7/4
  \normal \clef "treble_8"
  fis,2. ~ fis2 r2 |
  \time 5/4
  dis2. ~ dis2 ~ |
  dis2. ~ dis2 |
  \time 3/4
  R2. |
  \time 2/2
  \cricket \berioGoalposts \clef percussion r2. c'4^\pekingFRENCH ~ |
  c2 r4 e4 ~ |
  e2 r2 |
  d2 ~ d8 f4. |
  r4 e2 e4 |
  r4 c r e ~ |
  e2 r8 d4. |
  c4 r d2 |
  r4 d2 r4 |
  r8 b4. ~ b8 r4 c8 |
  \time 4/4
  \normal \clef "treble_8"
  bes4^\f ~   bes16. bes32 bes bes bes bes ~   bes8.. bes32    bes4 ~ |
  bes8 bes32 bes32 bes32 bes32   bes8 bes32 bes32 bes16 ~ bes16. bes32 bes4. ~ |
  \time 3/4
  bes8 bes32 bes bes16 ~    bes8. bes32 bes     bes bes bes bes bes8   ~ |
  \time 2/4
  bes8 bes32 bes bes bes   bes16. bes32 bes16 bes32 bes |
  \cricket \clef percussion \berioGoalposts
  R1*5/4
  \time 3/4
  \stemNeutral
  a4.^\mp^\< b8 d e |
  \time 7/8
  \stemUp
  c4^\> r8\! r4 r4 |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e |
  \time 9/8
  \stemUp
  c4^\> r8\! r4 r4 r8 a8 |
  \time 4/4
  R1 |
  R1^\fermataMarkup |
  \tNormal
  a1^\ppp ~ |
  \time 6/4
  a4 \air \clef percussion \ctip \stemTrans \sustainG c4*4^\>^\bravoFRENCH \glissando \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \time 4/4
  R1 | R1 | R1 | R1 | R1 | R1 | R1 |
  \normal \clef "treble_8"
  r4 a2.^\mp |
  a1 |
  cis1^\< ( ~ |
  cis2 a |
  e2 a4 ) a\ff ~ |
  \time 3/4
  a16 bes32^\f bes bes bes bes16 ~     bes4 ~    bes16. bes32 bes bes bes bes ~ |
  bes8 bes32 bes bes bes bes4 ~    bes16 bes32 bes bes16. bes32  bes bes bes bes bes bes bes bes |
  r2 ees,4. r8 |
<<
  {
  \cricket \clef percussion
  \time 3/16
  \stemUp
  c'8^\f c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  }
  \new Staff \with {
      \remove "Time_signature_engraver"
      alignAboveContext = #"sopstaff"
      fontSize = #-3
      firstClef = ##f
      \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 2))
    } \relative c' { \clef percussion \cricket \override NoteHead #'style = #'cross \stemUp c16^\f^\markup { \italic \column { "en tapant sur la poitrine" } } \repeat unfold 23 c16 }
  >>
  \tNormal
  \time 10/8
  bes8^\f c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes \cricket c, c c \tNormal ees |
  bes c ees f g bes \cricket c, c c \tNormal ees |
  bes c ees f g bes c ges f ees |
  %bes c ees f g bes c ges f ees |
  \transpose c bes, \relative c' {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
}

tenorWords = \lyricmode {
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Al -- lez chi qui ta
  I'm a lit -- tle girl.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Schloß!
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  I'm a lit -- tle girl. \skip 1
  I'm a lit -- tle girl. \skip 1
  I'm a lit -- tle girl.
  gir rl
  A \skip 1 pra -- ia. \skip 1
  Va -- mos. \skip 1 Fu -- ga \skip 1 con -- mi -- go.
  \skip 1 A -- mor.  \skip 1 Va -- mos. \skip 1 Ô sim \skip 1
  É tar -- de. \skip 1 Fu -- ga \skip 1 con mi -- go \skip 1 e pa -- ra \skip 1 sem -- pre. \skip 1
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Sil -- ly "ra -"
  Sil -- ly "ra -"
  Al -- lez chi qui ta
  Schloß!
  Schloß!
  Chi -- qui -- ta ba -- na -- na
  I'm a lit -- tle girl.
  \repeat unfold 4 \skip 1
  pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é
  \repeat unfold 4 \skip 1
  pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é
  \repeat unfold 6 \skip 1
  pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é pi -- ti -- é
  \repeat unfold 3 \skip 1
  A \skip 1 pra -- ia. \skip 1
  Va -- mos. \skip 1 Fu -- ga \skip 1 con
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  I'm a lit -- tle girl.
  \skip 1
  %{
  O Frei -- _ heit!
  Nicht wo Hym -- nen schal -- len
  %}
  Schloß!
  Chi -- qui -- ta ba -- na -- na
  Sil -- ly "ra -"
  \repeat unfold 3 \skip 1
  No! No! No! No! No! No! No! No! No! No!
  pre -- ten -- tious right -- eous fuck! chi qui ta
  I'm a lit -- tle girl.
  E \skip 1 es -- cu -- ro \skip 1
  Nem dá \skip 1 na -- da \skip 1
  Sen -- ho -- ra \skip 1
  A -- mor \skip 1 E
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui
  et si on di -- sait
  \repeat unfold 9 back
  Save me please you got to save me please you got to save me please from Merck.
  \repeat unfold 2 \skip 1
  Al -- lez
  J -- sho
  J -- sho
  J -- sho change it
  J -- sho
  \markup { \center-column { 來 lái } } \markup { \center-column { 如 rú }} \markup { \center-column { 春 chūn }} \markup { \center-column { 夢 mèng }} \markup { \center-column { 幾 jĭ }} \markup { \center-column { 多 duō }} \markup { \center-column { 時 shí }}
  \markup { \center-column { 去 qù }} \markup { \center-column { 似 sì }} \markup { \center-column { 朝 zhāo }} \markup { \center-column { 云 yún }} \markup { \center-column { 無 wú }} \markup { \center-column { 覓 mì }} \markup { \center-column { 處 chù}}
  Cre -- do in u -- num De -- um,
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cæ -- li et ter -- ræ,
  vi -- si -- bi -- li -- um om -- ni -- um et  in -- vi -- si -- bi -- li -- um.
  I'm a lit -- tle girl.
  I'm a lit -- tle girl.
  I'm
  Schloß! " "
  Sil -- ly rab -- bit.
  Et in u -- num Do -- mi -- num IE -- SUM CHRI -- STUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum.
  Et ex Pa -- tre na -- tum
  sho
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  \repeat unfold 5 { Ev' -- ry -- bo -- dy wants to be part of me. }
  \repeat unfold 2 { Ev' -- ry -- bo -- dy wants to part of me me. }
  \repeat unfold 4 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

bass = \relative c' {
  \time 6/16
  \normalStuff
  \cricket
  \clef percussion
  r16 |
  c4.^\mp ~ |
  c4. ~ |
  c4. ~ |
  c4. ~ |
  c4. |
  \time 2/4
  \stemUp
  c32^\f c8.. ~ c4 |
  \time 3/4
  c2.^\mf^\markup { \italic "low fry" } ~ |
  \time 2/8
  c4 |
  \time 3/16
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  \time 2/8
  R4 |
  \time 3/8
  R4. |
  R4. |
  \time 5/4
  \normal
  \clef "bass"
  r8 c,4. ~ c2 ~ c8 \cricket \clef percussion r8 |
  \time 6/16
  c'4.^\mp ~
  c4. ~
  c4.
  \time 3/4
  c2.^\mf^\markup { \italic "low fry" } ~ |
  \time 3/8
  c4. ~ |
  \time 3/4
  c8 r c2 ~ |
  \time 3/8
  c4. ~ |
  \time 3/4
  c4 r8 c4. ~ |
  \time 3/8
  c4. |
  \time 4/4
  \Red
  c1 ~ |
  c1 ~ |
  c1 ~ |
  \time 3/4
  c2. |
  \Black
  \time 4/4
  R1 |
  \FatTextManual #'(-0.2 . 0.2)
  \MonoShift
  \override TextScript #'whiteout = ##t
  s1-"Chers clients, veuillez trouver"
  s1-"notre offre special du jour"
  s1-"au rayon Ensemble 101"
  s2.-"au fond du magasin." s4
  \once \override Score . TimeSignature #'layer = #6
  s1-"Au rayon Ensemble 101, merci."
  \unFatText
  \unMonoShift
  \time 3/8
  R4. |
  \time 6/16
  \cricket
  c4.^\mp ~ |
  c4. ~ |
  c4. ~ |
  c4. ~ |
  c4. |
  \bNormal
  \time 2/4
  \normal
  \clef bass
  a,8^\f a a r |
  a a a r |
  \cricket \clef percussion
  c'32 c8.. ~ c4 |
  \normal \clef bass
  \time 4/4
  c,2.. ~ \times 2/3 { c8 \cricket \clef percussion r16 }
  \time 6/16
  R4. |
  \time 3/4
  R2. |
  \time 3/8
  R4. |
  \time 3/4
  \berioGoalposts
  f4^\mf^\< \times 2/3 { g8 a b4^\> a4 } |
  \time 2/4
  R2\! |
  \time 3/4
  f4^\< \times 2/3 { g8 a b8^\> } a4 |
  \time 5/8
  R1*5/8\! |
  \time 5/4
  f4^\< \times 2/3 { g8 b a ~ } a8 g16^\> g g g a8 g16 g g8\!-\bendAfter #-2  |
  \time 5/8
  R1*5/8
  \time 3/4
  f4^\< \times 2/3 { g8 a b4^\> a4 } |
  \time 4/4
  \cricket
  \hideNotes
  \stemUp
  s2.\!^\paFRENCH e4^\mf
  \time 7/8
  \repeat unfold 5 e8*7/5 
  \unHideNotes
  R1*7/8
  \time 3/16
  c'8^\f c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  \time 3/4
  c2.^\fry ~ |
  \time 3/8
  c4. |
  \time 3/4
  \slash c2.^\markup { \italic "en frottant les mains" } |
%{
  \time 3/8
  \slash c8. r8. |
  \time 4/4
  \normal
  \clef bass
  c2^\pp r8 c8^\f ~ c4 |
  c4 r8 \cricket \clef percussion \slash c8^\markup { \italic \column { "cupping hands over mouth" \italic "make loud farting noise" } } ~ \slash c4. r8 |
  \slash c2 r8 \slash c2 |
%}
  $(skip-of-length ditz)
  \time 3/8
  \normal
  \clef bass
  c,4 ~ c16 r |
  \time 5/16
  \cricket
  c'8. ~ c8 |
  \time 3/8
  \bNormal
  a,8 a a |
  \time 4/4
  \cricket
  \berioGoalposts
  R1 | R1 | R1 | R1 | R1 | R1 |
  \times 2/3 { r4 f'^\mf^\< g8 a } \times 2/3 { b4^\> a8 } \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \override NoteHead #'no-ledgers = ##t
  r2. \times 2/3 { r4 b8 ~ } |
  \times 4/5 { b8.^\< b16 a } \times 2/3 { b4 g8 }  \times 2/3 { a4^\> f8 }  \times 2/3 { g4 r8\! } |
  \time 3/4
  r2 a8.^\< g16 |
  \time 5/8
  g4^\> \times 2/3 { f8 f f\! } r8
  \time 4/4
  \normal \clef bass
  g,4^_^\ff g4^_ g4^_ g4^_ |
  g4^_ g4^_ g4^_ g4^_ |
  \time 2/4
  g4^_ g8 \cricket \clef percussion \berioGoalposts r |
  \time 4/4
  r2 r8 f''^\f ~ f4 |
  \stemNeutral
  R1 |
  R1 |
  \cricket
  \diamond c1^\mf^\mooFRENCH
  R1 |
  \time 6/16
  \Red
  c4. ~ |
  c4. ~ |
  c4. ~ |
  c4. ~ |
  c4. ~ |
  c4. ~ |
  c4. ~ |
  c4. ~ |
  c4. ~ |
  c4. ~ |
  \time 9/16
  c16 r8 r4. |
  \Black
  \time 2/2
  \normal \clef bass
  c,8^\mp^\< b c d e dis e f |
  g fis g a bes\f r4. |
  f4-.^\mp f-. f-. f-. |
  f4-. f-. f-. f-. |
  f4-. f-. f-. f-. |
  \time 3/4
  f4-. f-. r4 |
  \time 2/4
  \cricket \clef percussion c'32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "bass"
  \times 2/3 { fis,4^\mf^\flatterFRENCH dis r } r |
  \time 5/4
  fis4 r4 dis4^\rubbingFRENCH ~ dis8 r8 r4 |
  \time 3/4
  \cricket r8 c'2:16^\shallowFRENCH r8 |
  \time 6/4
  \normal \clef bass
  r8^\punctuateFRENCH  dis,4. r8 dis4. r2 |
  \time 7/4
  fis2. ~ fis2 r2 |
  \time 5/4
  dis2. ~ dis2 ~ |
  dis2. ~ dis2 |
  \time 3/4
  R2. |
  \time 2/2
  \air \clef percussion
  \mark "*"
  \Red
  \cricket \berioGoalposts \clef percussion r2. c'4^\pekingFRENCH ~ |
  c2 r4 e4 ~ |
  e2 r2 |
  d2 ~ d8 f4. |
  r4 e2 e4 |
  r4 c r e ~ |
  e2 r8 d4. |
  c4 r d2 |
  r4 d2 r4 |
  r8 b4. ~ b8 r4 c8 |
  \time 4/4
  \Black
  \normal \clef bass
  bes,16.^\f bes32 bes bes bes bes ~     bes16 bes32 bes ~ bes8 ~    bes8.. bes32     bes bes bes bes bes bes bes16 ~ |
  bes8. bes32 bes    bes bes bes8. ~     bes16 bes32 bes bes bes bes bes   bes bes bes bes bes bes16. ~ |
  \time 3/4
  bes8 bes32 bes bes bes     bes bes bes8. ~    bes4 ~    |
  \time 2/4
  bes32 bes bes bes bes bes16. ~ bes16 bes32 bes32 ~ bes16. bes32
  \cricket \clef percussion
  \stemUp
  \time 5/4
  c'8^\mf c r4 r4 c4 r |
  \time 3/4
  r c r
  \time 7/8
  r c8 ~ c r r4 |
  \time 3/4
  r8 c4 r8 r4 |
  \time 9/8
  r8 c4 r r c4 |
  \time 4/4
  c1:^\markup { \italic "drumroll" }
  R1^\fermataMarkup |
  \normal \clef bass
  f,1^\ppp ~ |
  \time 6/4
  f4 \air \clef percussion \ctip \sustainG c'4*4^\>^\bravoFRENCH \glissando \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \time 4/4
  R1 | R1 | R1 | R1 | R1 | R1 | R1 |
  \normal \clef bass
  r4 a,2.^\mp |
  a1 |
  a1^\< ~ |
  a1 ~ |
  a2. r4\roundFFdynamic |
  bes4^\f ~   bes8 bes32 bes bes bes    bes bes bes8. |
  \times 2/3 { bes16 bes \cricket \berioGoalposts \clef percussion b'4 } \times 2/3 { g8 g a8 ~ } \times 2/3 { a8 f f } \times 2/3 { f g4 } |
  \bNormal
  r2 \Red ees4. \Black r16
  \cricket \clef percussion
  c'32 c |  
  \time 3/16
  \stemUp
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  c8 c16 |
  c8. |
  \time 10/8
  \bNormal
  bes,8^\f c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  %bes c ees f g bes c ges f ees |
  \transpose c bes, \relative c {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
}

bassWords = \lyricmode {
  shhh
  Al -- lez
  \skip 1
  \repeat unfold 5 { Bang, you're dead. }
  Schloß!
  shhh
  \repeat unfold 3 \skip 1
  \RedL
  zhhhh
  \BlackL
  shhh
  Sil -- ly "ra -"
  Sil -- ly "ra -"
  Al -- lez.
  Schloß!
  Je suis un mon -- stre.
  Mon -- stre doit man -- ger.
  Mon -- stre~ne touche pas d'al -- lo -- ca -- ti -- on so -- ci -- ale.
  Je suis un mon -- stre.
  \override LyricText #'extra-spacing-height = #'(0 . 5)
  \override LyricText #'extra-offset = #'(0 . 5)
  \override LyricText #'whiteout = ##t
  Chers clients, je vous kiffe grave.
  \revert LyricText #'extra-spacing-height
  \revert LyricText #'extra-offset
  \revert LyricText #'whiteout
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  \repeat unfold 2 \skip 1
  %{
  O Fre -- heit!
  \repeat unfold 3 \skip 1
  %}
  Schloß!
  shhh
  Sil -- ly "ra -"
  Je suis un mon -- stre.
  Mon -- stre~est chô -- meur en fin de droits.
  Mon -- stre mange son bé -- bé.
  No! No! No! No! No! No! No! No! No! No!
  fuck!
  mooooooooo
  \RedL
  shhh
  \BlackL
  \repeat unfold 13 back
  \repeat unfold 14 Merck 
  Al -- lez
  J -- sho
  J -- sho
  " " sho sho
  J -- sho
  \RedL
  \markup { \center-column { 來 lái } } \markup { \center-column { 如 rú }} \markup { \center-column { 春 chūn }} \markup { \center-column { 夢 mèng }} \markup { \center-column { 幾 jĭ }} \markup { \center-column { 多 duō }} \markup { \center-column { 時 shí }}
  \markup { \center-column { 去 qù }} \markup { \center-column { 似 sì }} \markup { \center-column { 朝 zhāo }} \markup { \center-column { 云 yún }} \markup { \center-column { 無 wú }} \markup { \center-column { 覓 mì }} \markup { \center-column { 處 chù}}
  \BlackL
  Cre -- do in u -- num De -- um,
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cæ -- li et ter -- ræ,
  vi -- si -- bi -- li -- um om -- ni -- um et  in -- vi -- si -- bi -- li -- um.
  Et in u -- num Do -- mi -- num IE -- SUM CHRI -- STUM
  se -- ven six five four four four four
  \skip 1
  Schloß! \skip 1
  Sil -- ly "ra -"
  Fi -- li -- um De -- i un -- i -- gen -- i -- tum.
  Mon -- stre n'est pas très pra -- ti -- quant.
  \RedL
  sho
  \BlackL
  J -- sho
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  \repeat unfold 11 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

\score {
  \new ChoirStaff <<
    \new Staff = "sopstaff" <<
      \set Staff.instrumentName = #"Marie"
      \set Staff.shortInstrumentName = #"Marie"
      \new Voice = "soprano" {
        << \soprano \marks >>
      }
      \lyricsto "soprano" \new Lyrics { \sopranoWords }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Elsa"
      \set Staff.shortInstrumentName = #"Elsa"
      \new Voice = "alto" {
        \alto
      }
      \lyricsto "alto" \new Lyrics { \altoWords }
    >>
%{    \new Staff = "tenstaff" <<
      \set Staff.instrumentName = #"Ryan"
      \new Voice = "tenor" {
        \tenor
      }
      \lyricsto "tenor" \new Lyrics { \tenorWords }
    >>
%}
    \new Staff <<
      \set Staff.instrumentName = #"Eudes"
      \set Staff.shortInstrumentName = #"Eudes"
      \new Voice = "bass" {
        \bass
      }
      \lyricsto "bass" \new Lyrics { \bassWords }
    >>
  >>
  \layout {
%  \context { \Score \override NonMusicalPaperColumn #'allow-loose-spacing = ##f }
   \context {
     \Voice
     \remove "Forbid_line_break_engraver"
     \override Beam #'breakable = ##t
     \override TupletBracket #'breakable = ##t
     \override TupletNumber #'breakable = ##t
     \override TextScript #'layer = #5
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
      \override LyricText #'layer = #5
      \override LyricHyphen #'layer = #5
    }
    \context {
      \TabStaff
      \override TimeSignature #'style = #'numbered
    }
  }
\midi{}
}

