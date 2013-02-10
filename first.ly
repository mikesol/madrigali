\version "2.15.0"
% Er hat mehr Torf als eine Kuh von Düsseldorf
% Ich wette eine Mark
% dass Düsseldorf wird für die nächsten 100 Jahre stark
\include "defs-devel.ly"

mantra = \markup { \fontsize #1 \override #'(box-padding . 0.5) \box \justify {
Je crois de tout mon cœur en chaque phrase dans le tout à fait brillant et subtil traité musical de Thomas Clifton. Cet ouvrage est sans doute la meilleure chose qui ait jamais été écrite, quel que soit le sujet. Bien que je sois un homme, je serais d'accord pour subir toute opération médicale nécessaire pour pouvoir porter son enfant. Le fait que Clifton soit mort ne m'empêchera pas de parvenir à mes fins. Ensuite, j'arrêterai mes études et je passerai mon temps à apprendre de cet enfant prodige à mesure que je l'élèverai. Il transformera mes jours en des voyages extatiques à l'intérieur de mon âme, magnifiant et intensifiant l'expérience extra-corporelle que j'ai vécue quand j'ai lu son œuvre maîtresse. }}


#(set-global-staff-size 17.82)

\paper {
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in

  ragged-last-bottom = ##f
%  #(define fonts
%    (make-pango-font-tree "Gentium Plus"
%                          "sans-serif"
%                          "monospace"
%                           1.0))
}

\header {
  title = "Clifton SUZYKIN.fa$"
}

chirpFest = {
  c'4^\mp^\markup { \italic "high cricket" } \bar "" \hideNotes c \unHideNotes \noLed \bar ""
  c4 \bar "" \hideNotes c c c \unHideNotes \noLed \bar ""
  c4 \bar "" \hideNotes c c \unHideNotes \noLed \bar ""
  c16 [ c c ] \bar "" \hideNotes c4 c c \unHideNotes \noLed \bar ""
  c16 [ c c ] \bar "" \hideNotes c4 c \unHideNotes \noLed \bar ""
  c16 [ c c c ] \bar "" \hideNotes c4 c \unHideNotes \noLed \bar ""
  c16 [ c c ] \bar ""
}

acte = {   s4-"Acte" \bar "" s4-"deux" \bar "" s4-"où" \bar "" s4-"le" \bar "" s4-"singe," \bar "" s4-"tout" \bar "" s4-"en" \bar "" s4-"sachant" \bar "" s4-"qu'il" \bar "" s4-"sera" \bar "" s4-"puni," \bar "" s4-"lance" \bar "" s4-"sa" \bar "" s4-"merde" \bar "" s4-"vers" \bar ""
  s4-"le" \bar "" s4-"gardien" \bar "" s4-"de" \bar "" s4-"zoo." \bar "" s4-"" \bar "" s4-"Assistons" \bar "" s4-"à" \bar "" s4-"la" \bar "" s4-"scène." \bar ""
}

sopbass = {
  g1*3/4^\mf^\markup { \italic "low vocal fry" } \glissando \bar ""
  \hideNotes g16 \unHideNotes \noLed s8 \bar "" g1*1/2 \glissando \bar ""
  \hideNotes g16 \unHideNotes \noLed s8. \bar "" g1*1/2 \glissando \bar ""
  \hideNotes g16 \unHideNotes \noLed s8. \bar "" g1*1/2 \glissando \bar ""
  \hideNotes g16 \unHideNotes \noLed s8. \bar "" g1*1/2 \glissando \bar ""
  \hideNotes g16 \unHideNotes \noLed s8
}

soprano = \relative c' {
  \time 8/4 \once \override Staff . TimeSignature #'stencil = ##f
  fis4^\mp^\espressivo
  \hideNotes
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(pleasework)
  \once \override Staff . BarLine #'my-name = #'soppy
  \once \override Staff . BarLine #'stencil = #(royal-hack 'pleasework)
  \startStaff
  \bar ""
  \repeat unfold 8 a8 \repeat unfold 12 a16
  \unHideNotes
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(reverse)
  \once \override Staff . BarLine #'my-name = #'soprano2
  \once \override Staff . BarLine #'stencil = #(royal-hack 'reverse)
  \startStaff
  \bar ""
  \time 2/2
  \tempo 2=110
  %\override Script #'direction = #UP
  \autoBeamOff
  a4.->^\ff a4.-> a4-> ~ |
  a8 a4.-> a4-- a-- |
  a-- a-- a8-. a-. a-. a-. |
  a-. a-. a-. a-. a-. a-. a-. a-. |
  a-. a-. a-. a-. a4.-> a8-> ~ |
  a4 a4-> ~ a8 a4-- a8-- ~ |
  a8 a4-- a8-- ~ a r
  \speaking
  \sustainG
  \override NoteHead #'style = #'slash
  \stemTrans
  c,4^\mp^\<^\markup { \italic \column { "high babble, glutteral," "with interspersed chipmunk laughter" "like a tape getting caught in a player" }} \glissando |
  s1
  s2.
  \hideNotes
  \grace { c^\f } \unHideNotes
  \stemTrans
  c4^\mp^\markup { \italic "and saying \"bravo!\"" }^\markup { \italic "giggly laughter, applauding"}  \glissando |
  \time 6/4
  s1 s4.. \hideNotes c16 \unHideNotes
  \unStemTrans
  \tempo 2 = 74
  \time 2/2 \saNormal \normalG
  r8 d^\f ~ \times 2/3 { d fis a } d4-. e \glissando |
  e,2.^\> fis4 |
  \once \override Score . MetronomeMark #'self-alignment-X = #CENTER
  \tempo \markup { \line { \note #"4" #UP = \note #"8" #UP } }
  \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \mark \markup { \normal-text \italic "motlo accelerando!" }
  a8^\mp^\< g fis e d g fis e |
  d e fis d g4-.^\f \stemUp
  \cricket c,-. |
  R1
  \tempo 4=70
  c8^\mp^\markup { \italic \column { "high, not-too-fast, sparse" "chirp noises. a cricket, nocturne." } } \rTrans r4 c8 c \hideNotes
  \sustainG c \glissando s4 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s2.. c8 |
  \unHideNotes
  \saNormal
  \time 2/4
  r4^\fermata aes'^\mp^\espressivo |
  \tempo 4=120
  R1 |
  R1 |
  r4. c8^\ff ~ c4 r4 |
  R1 |
  r2 c4 r4 |
  r8 c4.  ~ c8 r8 c4 |
  \time 2/2
  \tempo 2=80
  % dynamic hack...investigate :(
  r8 %\once \override DynamicText #'extra-spacing-width = #'(-0.2 . 0.2)
  d8^\f b d a b,^\subPd c cis |
  d d e fis g4-. r^\fermata |
  r8 d'^\mp^\< b d a fis g gis |
  a g fis e d4-.\f fis-.^\p |
  \monologue
  r4.^\fermata \fatText \monoShift \once \override TextScript #'self-alignment-X = #CENTER s4-\markup { \whiteout "encore !" } r4.^\fermata |
  \saNormal
  r8 d'^\mp^\< b d a fis g gis |
  a g fis e d4-.^\f r4^\longfermata |
  r8 d'^\mp^\< b d a fis g gis^\ff |
  \times 2/3 { r4 a-- a-- } \times 2/3 { a-- a-- r } |
  \times 2/3 { r4 a-- a-- } a r8
  %\override Glissando #'bound-details #'right #'Y = #3.5
  %\override Glissando #'bound-details #'left #'Y = #3.5
  \once \override Glissando #'after-line-breaking = ##f \sustainG \bedlem \stemTrans c,^\markup { \italic \column { "a dialogue between two" "chipmunks at 4x the speed" } } \glissando | \noBreak
  % hack :(
  %\override Glissando #'bound-details #'right #'Y = ##f
  %\override Glissando #'bound-details #'left #'Y = ##f
  s1 |
  s1 |
  s4. \hideNotes c8 \unHideNotes
  \unStemTrans \saNormal r4 fis4^\mp^\espressivo |
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(tagueule)
  \once \override Staff . BarLine #'my-name = #'tgsoppy
  \once \override Staff . BarLine #'stencil = #(royal-hack 'tagueule)
  \startStaff
  s1 s1 |
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(tagueuleback)
  \once \override Staff . BarLine #'my-name = #'tgsoppyback
  \once \override Staff . BarLine #'stencil = #(royal-hack 'tagueuleback)
  \startStaff
  f4^\mf ~ \times 2/3 { f8 e f } \times 2/3 { d des c ~ } c8 r |
  f4 ~ \times 2/3 { f8 e f } r8 bes4^\mp^\< bes8 |
  a^\f d, e fis cis'^\> b4 bes8 |
  \time 5/4
  a8^\mp^\< d, e fis^\> ~ fis b4^\mp bes a8 |
  \time 4/4
  \tempo 2=80
  r8 d^\f b d a fis g gis |
  a g fis e d8 r\fermata fis^\pp r\fermata |
  \cricket
  \cadenzaOn
  \override Staff . BarLine #'stencil = ##f
  c4^\p^\markup { \italic "high cricket" } \bar "" \hideNotes c \unHideNotes \noLed \bar ""
  c4 \bar "" \hideNotes c c c \unHideNotes \noLed \bar ""
  c4 \bar "" \hideNotes c c \unHideNotes \noLed \bar ""
  c16 c c \bar "" \hideNotes c4 c c \unHideNotes \noLed \bar ""
  c16 c c \bar "" \hideNotes c4 c \unHideNotes \noLed \bar ""
  c16 c c c \bar "" \hideNotes c4 c \unHideNotes \noLed \bar ""
  c16 c c \bar ""
  \cadenzaOff
  \revert Staff . BarLine #'stencil
  \once \override Score . TimeSignature #'stencil = ##f
  \time 11/16
  \saNormal
  r4\fermata a''16-^^\mf a-^ a-^ r4\fermata |
  \once \override Score . TimeSignature #'stencil = ##f
  \time 15/16
  r4\fermata a16-^ a-^ a-^ r8\fermata \monologue \fatText \monoShift s4-\markup { \whiteout "encore !" } r8 |
  \time 4/4
  \saNormal
  r8 d,^\mp^\< b d a b, c
  \once \override TextScript #'cross-staff = ##t
  \once \override TextScript #'outside-staff-priority = ##f
  \once \override TextScript #'Y-offset = #-6.2
  \once \override TextScript #'font-size = #1
  cis\!_\markup { \pleaseworktwo #'(" " "Non," "c'était" "pas" "un" "accord.") #'(34 . 9) #'(0.5 0.0 0.5 -1.0 1.0 -1.0) #'(0 0.1 0.3 0.55 0.79 0.9) } |
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(pasaccord)
  \once \override Staff . BarLine #'my-name = #'pasoppy
  \once \override Staff . BarLine #'stencil = #(royal-hack 'pasaccord)
  \startStaff
  \once \override Score . TimeSignature #'stencil = ##f
  \noBreak
  \time 8/4
  s1 s1
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(pasaccordback)
  \once \override Staff . BarLine #'my-name = #'pasoppyback
  \once \override Staff . BarLine #'stencil = #(royal-hack 'pasaccordback)
  \once \override Score . TimeSignature #'stencil = ##f
  \startStaff
  \time 1/4
  cis'1*1/4^\ff |
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(siaccord)
  \once \override Staff . BarLine #'my-name = #'sasoppy
  \once \override Staff . BarLine #'stencil = #(royal-hack 'siaccord)
  \startStaff
  \time 4/4
  s1 |
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(siaccordback)
  \once \override Staff . BarLine #'my-name = #'sasoppyback
  \once \override Staff . BarLine #'stencil = #(royal-hack-single 'siaccordback)
  \override Staff . StaffSymbol #'line-count = #1
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \startStaff
  \override Voice . NoteHead #'style = #'harmonic-mixed
  \override Voice . NoteHead #'no-ledgers = ##t  
  \set melismaBusyProperties = #'(tieMelismaBusy beamMelismaBusy)
  \autoBeamOff
  \startStaff
  \override Score .  TimeSignature #'stencil = ##f
  \once \override Score . Clef #'Y-extent = #'(+inf.0 . -inf.0)
  \once \override Score . Clef #'X-extent = #'(+inf.0 . -inf.0)
  \clef percussion
  \bar ""
  \hideNotes c16 \unHideNotes \override NoteHead #'no-ledgers = ##t
  \time 5/16
  \stemUp
  c,16^\mf c c c \bar ""
  \stemNeutral
  \time 2/4
  s2 \bar ""
  \saNormal
  \time 1/4
  fis4^\mp^\espressivo \bar ""
  \time 3/8
  s4.
%  \cadenzaOff
  %\once \override Score . BarLine #'space-alist #'time-signature = #0.0
  \revert Score .  TimeSignature #'stencil
  \time 4/4
  \tempo 4=120
  R1 |
  R1 |
  \time 2/4
  
  R2 |
  r4 \times 2/3 { r4 f8^\mf^\< } \times 2/3 { c f g } \times 2/3 { a^\> g f } |
  \mark \markup { \italic \column { "becoming schmaltzier" "and looser" } }
  r8\! d'^\mp bes g c, des'4 c8 |
  d,8 \times 2/3 { g'4 e8 }
  \once \override Glissando #'style = #'zigzag
  \once \override Glissando #'thickness = #1
  b'4^\markup { \italic \column { "giggly," "bubbly" "laughter" }} \glissando \grace { \stemTrans \parenthesize a,8 } r4.
  \unStemTrans
  \tempo 4=80
  g8^\mf g e \cricket \stemUp \tempo 4=90 c16^\p |
  \time 4/4
  c c c c c c c c r c r c c c c c |
  \time 7/8
  c c c c c c c c r c c c r8 |
  \time 3/4
  \saNormal
  \tempo 4=180
  d'4^\f d cis16 [ b ] a8 |
  \time 2/4
  \acciaccatura { cis8 } d4 cis16 [ b a8 ] |
  \time 5/8
  g a b cis a |
  \time 2/4
  \acciaccatura { cis8 } d4 cis16 [ b ] a8 |
  \acciaccatura { cis8 } d8 cis16 [ b ] a8 a |
  \time 2/4
  b cis d e |
  \time 5/8
  d cis b cis a |
  \time 3/4
  \acciaccatura { cis8 } d4 d cis16 [ b a8 ] |
  \time 2/4
  \acciaccatura { cis8 } d4 cis16 [ b ] a8 |
  \time 5/8
  g a b cis a |
  \time 2/4
  \acciaccatura { cis8 } d4 cis16 b a8 |
  d8 fis gis a |
  \time 6/8
  gis fis e d e cis |
  \time 2/4
  \acciaccatura { cis8 } d4 cis16 [ b a8 ] |
  d8 fis gis a |
  \time 6/8
  gis fis e d e fis |
  d e fis d e fis |
  \time 2/4
  r4 fis,^\mp^\espressivo |
  \cricket \stemUp
  \tempo "slow"
  r8. c16^\mf c8 r |
  r4 c8 c |
  r4 c8 c |
  \times 2/3 { r4 c8 } c4 |
  R2 |
  \saNormal
  a'4--^\ff a-- a-- a-- |
  a4.-> a8-> ~ a4 a4-> ~ |
  a8 a4.-> a4.-> a8-> ~ |
  a4 a-- a-- a-- |
  a-- a-- a-- gis4-> ~ |
  gis8 gis4.-> gis8-. gis-. gis-. gis-. |
  gis-. gis-. gis-. gis-. gis-. gis-. |
  \cricket
  r16 c,^\mf r c c c |
  \time 3/4
  \saNormal
  e8^\p^\< d e d f d\f |
  e^\p^\< d e d f d\f |
  e^\p^\< d e d f d\f |
  \time 9/16
  \cricket
  c8.^\mf c c |
  \saNormal
  \time 3/4
  e8^\p^\< d e d f d\f |
  \time 9/16
  \cricket
  c8.^\mf c c |
  \saNormal
  \time 3/4
  d'2.^\mf^\markup { \italic \column { "rapidly fluttering hand against" "mouth to create the sound" "of a power generator" } } |
  r8 c8^\mp^\< b a g\mf c^\mp^\< b a |
  g\mf c^\mp^\< b a g\mf c^\mp b r |
  e,4^\mf r8 d e e r8 d |
  e e r8 d e4 r |
  d'8 \repeat unfold 15 d
  e,4 r8 d e e r8 d |
  e e r8 d e4 r |
  d'8 \repeat unfold 15 d
  r8 d^\mp^\< b d a fis g gis |
  a\f^\> g fis e\p |
  $(skip-of-length acte)
  d'8^\p cis c d cis a^\< ais b |
  c e fis g\f^\> fis f\! |
  \cricket
  s1*3/4
  c,16^\mp^\markup { \italic "high chirp sounds" } c c %{\bar ""%} s1*1/2 %{\bar ""%}
  s16 c16 c c %{\bar ""%} s1*1/2 %{\bar ""%}
  s16 c16 c c %{\bar ""%} s1*1/2 %{\bar ""%}
  s16 c16 c c %{\bar ""%} s1*1/2 \bar ""
  s16 c16 c16
  \saNormal
  bes'2..^\fpp c16^\< d |
  ees4-.\p ees4-. ees4-. ees4-. |
  \unset melismaBusyProperties
  ees4-. ees4-. ees4-. ees4-. |
  ees4-. ees4-. ees4-. ees4-. |
  ees4-. r4 r2 |
  R1 |
  R1 |
  R1 |
  R1 |
  \monologue
  s4*12/13^\markup { \italic "mit Wunder" }
  \FatText
  \MonoShift
  \override TextScript #'extra-spacing-width = #'(-0.5 . 0.5)
  s8*12/13-\markup { \whiteout "Il" } s8*12/13-\markup { \whiteout "fait" } s8*12/13-\markup { \whiteout "beaucoup" } s8*12/13-\markup { \whiteout "de" } s8*12/13-\markup { \whiteout "rythmes" } s8*12/13-\markup { \whiteout "maintenant" } s8*12/13-\markup { \whiteout "avec" } s8*12/13-\markup { \whiteout "beaucoup" } s8*12/13-\markup { \whiteout "de" } s8*12/13-\markup { \whiteout "nuances" } s8*12/13-\markup { \whiteout "et" }
  \revert TextScript #'extra-spacing-width
  \unFatText
  \unMonoShift
  \cricket
  \cadenzaOn
  \unHideNotes
  \normalG
  c,1^\mf \bendAfter #-3 \bar "" r2 \bar "" g1\glissando
  \cadenzaOff
  \time 7/8
  \saNormal
  d''8^\< e, fis a^\> g fis e
  \time 3/8
  d'^\mf d d |
  \time 7/8
  \cricket
  r8. c,16^\p^\markup { \italic \column { "high" "squeak" }} r8 r4 r4 |
  \time 2/4
  \saNormal
  bes''2 |
  \times 2/3 { bes,2^\p^\< ( g4-_^\f ) }
  \times 2/3 { bes2^\p \cricket \once \override Stem #'transparent = ##t \slash \sustainG c,4^\markup { \italic "bravo, applaudissements" } \glissando } |
  s4 s8 \saNormal \normalG \hideNotes \grace { b' } \unHideNotes fis8^\< |
  \time 3/4
  \grace { s8 }
  g gis a^\> g fis e |
  cis' b a\p d4 cis8^\< |
  b a g\f^\> a b cis |
  a4. a4^\p^\< \glissando f'8^\f |
  \time 4/4
  d f c ais b bis b'!4^\p ~ |
  \time 3/4
  b2 ~ b8 r8 |
  \time 3/8
  b4 r8 |
  \time 3/4
  b b b b b r |
  r4 fis,^\mp^\espressivo r |
  \once \override Score . TimeSignature #'stencil = ##f
  \time 4/4
  c'^\ff \bar "" \noBreak
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(endhack)
  \once \override Staff . BarLine #'my-name = #'ehsoppy
  \once \override Staff . BarLine #'stencil = #(royal-hack 'endhack)
  \startStaff
  \hideNotes c8 c8 c2
  \once \override Score . BarLine #'stencil = ##f
}

sopranoWords = \lyricmode {
  ô \repeat unfold 20 " "
  Lo -- rem ip -- sum
  Lo -- rem ip -- sum
  Lo -- rem ip -- sum do -- lor sit a -- met, con -- sec -- te -- tur a -- di -- pi
  Lo -- rem ip -- sum do -- lor sit
  \repeat unfold 3 " "
  Ich wet -- te ei -- ne Mark dass Wup -- per -- tal wird für die näch -- sten hun -- dert Jah -- re stark! Hai!
  ni ni ni
  \repeat unfold 2 " "
  you
  Schloß! Schloß! Schloß! Schloß!
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf "(Rausch)"
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf
  Er hat mehr Torf als ei -- ne
  gna gna gna gna
  gna gna gna
  \repeat unfold 2 " "
  ô
  Hush lit -- tle Su -- zy -- kins
  No don't you cry
  Your dad -- dy's gone to sing sing
  Your mo -- ther's pu -- shing pie so don't
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf
  Hai!
  ni " " ni " " " " " " ni " " " "  ni ni ni " " " " " " ni ni ni " "  " "  ni ni ni ni " "  " "  ni ni ni
  ni ni ni
  ni ni ni
  Er hat mehr Torf als ei -- ne
  \once \override LyricText #'cross-staff = ##f
  \once \override LyricText #'extra-offset = #'(-2 . 0)
  "NON !"
  " " ni ni ni ni
  ô
  there's no -- thing be -- tween us but
  and I go sail -- ing you and I go " "
  Ham -- mer time
  you told me that you was -- n't a -- round, bitch,
  i told you that this nig -- ga go -- in' cra -- zy call back,
  you know it
  Resz -- ket a bo -- kor, mert Ma -- dár -- ka szál -- lott rá.
  Resz -- ket a lel -- kem, mert Es -- zem -- be ju -- tot -- tál,
  Es -- zem -- be ju -- tot -- tál, Kic -- siny kis le -- ány -- ka,
  Te a nagy vi -- lág -- nak Leg -- nagy -- obb gyé -- mánt -- "ja !"
  Te -- li van a Du -- na, Tán még ki is sza -- lad.
  Es -- zem -- be ju -- tot -- tál
  Es -- zem -- be ju
  ô
  ac -- cord
  ba -- by
  ba -- by
  pois -- son
  \repeat unfold 14 { pois -- son }
  shit, you know it
  mom -- my made me eat it
  mom -- my made me eat it
  mom -- my made me eat it
  bang bang bang
  mom -- my made me eat it
  bang bang bang
  ô
  t'es un che -- vesne t'es un che -- vesne
  t'es un che -- vesne t'es un
  Ich muß ar -- beit -- en
  ar -- beit -- en nein
  spiel -- en spiel -- en spiel -- en spiel -- en 
  spiel -- en spiel -- en spiel -- en spiel -- en 
  Ich muß ar -- beit -- en
  ar -- beit -- en nein
  spiel -- en spiel -- en spiel -- en spiel -- en 
  spiel -- en spiel -- en spiel -- en spiel -- en 
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel
  Lo -- rem ip -- sum do -- lor sit a -- met, con -- sec -- te -- tur a
  \repeat unfold 14 ni
  I am a
  \repeat unfold 13 you
  tout
  up
  Torf ei -- ne Kuh von Düs -- sel -- dorf dorf dorf
  ô
  ah " "
  ah
  \repeat unfold 2 " "
  dass ein -- e Kuh von Düs -- sel
  ket a bo -- kor, mert Ma -- dár -- ka szál -- lott rá.
  Rez -- ket
  Er hat mehr Torf als ei -- ne Kuh
  Kuh
  Er hat mehr Torf als
  ô
  Schloß
}

alto = \relative c' { \autoBeamOff
  \time 8/4 \once \override Staff . TimeSignature #'stencil = ##f
  d4^\mp^\espressivo
  \hideNotes
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(pleasework)
  \once \override Staff . BarLine #'my-name = #'alty
  \once \override Staff . BarLine #'stencil = #(royal-hack 'pleasework)
  \startStaff
  \bar ""
  s2. s1
  \unHideNotes
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(reverse)
  \once \override Staff . BarLine #'my-name = #'gagaga
  \once \override Staff . BarLine #'stencil = #(royal-hack 'reverse)
  \startStaff
  \bar ""
  \time 2/2
  a'4.->^\ff a4.-> a4-> ~ |
  a8 a4.-> a4-- a-- |
  a-- a-- a8-. a-. a-. a-. |
  a-. a-. a-. a-. a-. a-. gis4---> ~ |
  gis4. gis8---> ~ gis2 |
  gis2..---> gis8---> ~ |
  gis4. gis8---> ~ gis4. gis8-. |
  gis4-- gis-- gis-- gis-- |
  gis8-. b'16-. b-. b-. b-. gis,8-. gis-. gis-.
  \sustainG
  \speaking
  \override NoteHead #'style = #'slash
  \override Stem #'transparent = ##t
  c,4^\mp^\markup { \italic "and saying \"bravo!\"" }^\markup { \italic "giggly laughter, applauding"}  \glissando |
  \time 6/4
  s1 s4.. \hideNotes c16 \unHideNotes
  \revert Stem #'transparent
  \time 2/2 \saNormal  \normalG
  r8 d^\f ~ \times 2/3 { d fis a } d4-. e \glissando |
  e,2^\> dis |
  fis8^\mp^\< e e cis d b c cis |
  d c b a g4-.^\f \cricket c-. |
  R1 |
  R1 |
  \saNormal
  r4. a'8^\p ~ a2 ~ |
  a4. r8 r4 a4 ~ |
  a2.. r8 |
  r4. a8 ~ a2 ~ |
  a4. r8 r4. a8 ~ |
  a2 r8 a4. |
  \time 2/4
  r4\fermata ees^\mp^\espressivo |
  R1 |
  R1 |
  r4. e8^\ff ~ e4 r4 |
  R1 |
  r2 e4 r4 |
  r8 e4. ~ e8 r8 e4 |
  r8 fis^\f e f fis b,^\subPd c cis |
  d c b a g4-. r^\fermata |
  r8 fis'^\mp^\< e f fis d e eis |
  fis e d cis d4-.^\f d-.^\p |
  R1^\longFermataMarkup |
  r8 fis^\mp^\< e f fis d e eis |
  fis e d cis d4-.^\f r^\longfermata |
  r8 fis^\mp e f fis d \bedlem \stemUp \times 2/3 { c4^\ff^\markup { \italic \column { "scary clown laughter" } } c c } r4
  \times 4/5 { r8 c c c c }
  r8 \stemTrans \sustainG c8^\markup { \column { \italic "in the style of Peking Opera" \line { 不盡長江滾滾來 
 (bú jìn cháng jiāng gŭn gŭn lái) }} } \glissando s2. |
% http://www.chinese-poems.com/d03t.html
  s2 s8 \hideNotes c8 \unHideNotes \cricket c4 |
  c c c c |
  c c \saNormal r4 d^\mp^\espressivo |
 %\markup { \column { 不 bú }} \markup { \column { 盡 jìn }} \markup { \column { 長 cháng }} \markup { \column {江 jiāng }} \markup { \column { 滾 gŭn }} \markup { \column { 滾 gŭn }} \markup { \column { 來 lái }}
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(tagueule)
  \once \override Staff . BarLine #'my-name = #'tgalty
  \once \override Staff . BarLine #'stencil = #(royal-hack 'tagueule)
  \startStaff
  s1 s1 |
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(tagueuleback)
  \once \override Staff . BarLine #'my-name = #'tgaltyback
  \once \override Staff . BarLine #'stencil = #(royal-hack 'tagueuleback)
  \startStaff
  \tempo "ein jazztempo" 4=50
  d4^\mf ~ \times 2/3 { d8 cis d } \times 2/3 { c b a ~ } a8 \times 2/3 { r8 d16 ~ } |
  d4 ~ \times 2/3 { d8 cis d } r8 ges4^\mp^\< ges8 |
  f^\f cis d dis a'^\> gis4 g8 |
  \time 5/4
  fis8^\mp^\< cis c d^\> ~ d fis4.^\mp e4 |
  \time 4/4
  r8 fis^\f e f fis d e eis |
  fis e d cis d8 r\fermata d^\pp r\fermata |
  $(skip-of-length chirpFest) |
  \once \override Score . TimeSignature #'stencil = ##f
  \time 11/16
  \saNormal
  r4\fermata a16-^^\mf a-^ a-^ r4\fermata |
  \once \override Score . TimeSignature #'stencil = ##f
  \time 15/16
  r4\fermata a16-^^\mf a-^ a-^ r2^\fermata |
  r8 d'^\mp^\< b d a b, c cis %\once \override Staff . BarLine #'stencil = ##f | \noBreak
  \once \override Score . TimeSignature #'stencil = ##f
  \time 8/4
  d8 \stopStaff
%  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(pasaccord)
  \once \override Staff . BarLine #'my-name = #'paalty
  \once \override Staff . BarLine #'stencil = #(royal-hack 'pasaccord)
  \startStaff \noBreak
  \bar "" c b a\!
  \stopStaff
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . StaffSymbol #'line-count = #1
  \startStaff
  s2 s1 |
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(pasaccordback)
  \once \override Staff . BarLine #'my-name = #'paaltyback
  \once \override Staff . BarLine #'stencil = #(royal-hack 'pasaccordback)
  \once \override Score . TimeSignature #'stencil = ##f
  \startStaff
  \time 1/4
  e'1*1/4^\ff |
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(siaccord)
  \once \override Staff . BarLine #'my-name = #'saalty
  \once \override Staff . BarLine #'stencil = #(royal-hack 'siaccord)
  \startStaff
  \time 4/4
  s1 |
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(siaccordback)
  \once \override Staff . BarLine #'my-name = #'saaltyback
  \once \override Staff . BarLine #'stencil = #(royal-hack 'siaccordback)
  \startStaff
%  \cadenzaOn
  \bar ""
  s4 s16 \bar ""
  s2 \bar ""
  d4^\mp^\espressivo
  \bar ""
  \monologue
  \fatText
  \monoShift
  s4.^\markup { \whiteout { Comment "dire ?" } } \bar ""
  \saNormal
%  \cadenzaOff
  \bar ""
  \time 4/4
  R1 |
  R1 | % KLUDGE
  r4. \tempo 4=42 f8^\mf^\< |
  \times 2/3 { d f g } \times 2/3 { aes^\> g f } \times 2/3 { c^\< f e } \times 2/3 { f e d } |
  d4.^\mp f8 e4 ees |
  a4. \times 2/3 { aes4 g8 } r4. |
  d8^\mf d8 b \cricket \stemUp c16^\p | 
  \time 4/4
  c c c c c c c c r c r c c c c c |
  \time 7/8
  c c c c c c c c r c c c r8 |
  \time 3/4
  \saNormal
  d'4^\f d cis16 [ b ] a8 |
  \time 2/4
  \acciaccatura { cis8 } d4 cis16 [ b a8 ] |
  \time 5/8
  g a b cis a |
  \time 2/4
  \acciaccatura { cis8 } d4 cis16 [ b ] a8 |
  \acciaccatura { cis8 } d8 cis16 [ b ] a8 fis |
  \time 2/4
  gis a b cis |
  \time 5/8
  b a gis fis f |
  \time 3/4
  \acciaccatura { dis } e4 e dis16 [ cis b8 ] |
  \time 2/4
  \acciaccatura { fisis'8 } gis4 fis16 [ e ] dis8 |
  \time 5/8
  e fis gis ais a |
  \time 2/4
  \acciaccatura { gis8 } a2 |
  \acciaccatura { gis8 } a4 a8 cis8 ~ |
  \time 6/8
  cis4. b8 cis a |
  \time 2/4
  \acciaccatura { cis8 } d4 cis16 [ b a8 ] |
  b8 cis dis e |
  \time 6/8
  d cis b a cis a |
  d4 cis16 [ b a8 ] d e |
  \time 2/4
  r4 d,^\mp^\espressivo |
  \cricket \stemUp
  r8. c16^\mf c8 r |
  r4 c8 c |
  r4 c8 c |
  \times 2/3 { r4 c8 } c4 |
  R2 |
  \saNormal
  a'4--^\ff a-- a-- a-- |
  a-- a-- a-- a-- |
  gis4.-> gis8-> ~ gis4 gis4-> ~ |
  gis8 gis4.-> gis4-- gis-- | % a changer...pas très intéressant...
  gis-- gis-- gis8-. gis-. a-. a-. |
  a-. a-. a-. a-. a-. a-. a-. a-. |
  a4-- a-- a-- |
  \time 3/8
  a a8 ~
  \time 3/4
  a8 a4 a a8 ~
  a4. d,8^\p^\< f d\f
  e8^\p^\< d e d f d^\f |
  \time 9/16
  \cricket
  c8.^\mf c c
  \saNormal
  e8^\p^\< d e d f d^\f |
  \cricket
  c8.^\mf c c |
  \saNormal
  r16 aes'8^\mf aes32 aes
  aes aes aes16 ~ aes16. aes32
  aes aes aes8 aes32 aes |
  r8 f^\mp^\< e d c\mf f^\mp^\< e d |
  c^\mf f^\mp^\< e d c\mf f^\mp e r |
  \tempo "techno" 2=110
  e4^\mf r8 d e e r8 d |
  e e r8 d e4 r |
  e8 e e e e e e e |
  e e e e e e e e |  
  \cricket
  a,4->^\mf^\markup { \italic "cloches numériques" } c-> e-> g-> |
  b-> g-> e-> c-> |
  \saNormal
  e8 e e e e e e e |
  e e e e e e e e |
  r fis^\mp^\< e eis fis d e eis |
  \mark \markup { \italic "molto rit." }
  fis^\f^\> e d cis^\p |
  \monologue
  \FatText
  \MonoShift
  %%%%%%%%%%%%%%%%%
  \break
  %%%%%%%%%%%%%%%%%
  s4-\markup { \whiteout "Acte" } \bar "" s4-\markup { \whiteout "deux" } \bar "" s4-\markup { \whiteout "où" } \bar "" s4-\markup { \whiteout "le" } \bar "" s4-\markup { \whiteout "singe," } \bar "" s4-\markup { \whiteout "tout" } \bar "" s4-\markup { \whiteout "en" } \bar "" s4-\markup { \whiteout "sachant" } \bar "" s4-\markup { \whiteout "qu'il" } \bar "" s4-\markup { \whiteout "sera" } \bar "" s4-\markup { \whiteout "puni," } \bar "" s4-\markup { \whiteout "lance" } \bar "" s4-\markup { \whiteout "sa" } \bar "" s4-\markup { \whiteout "merde" } \bar "" s4-\markup { \whiteout "vers" } \bar ""
  s4-\markup { \whiteout "le" } \bar "" s4-\markup { \whiteout "gardien" } \bar "" s4-\markup { \whiteout "de" } \bar "" s4-\markup { \whiteout "zoo." } \bar "" s4-\markup { \whiteout "" } \bar "" s4-\markup { \whiteout "Assistons" } \bar "" s4-\markup { \whiteout "à" } \bar "" s4-\markup { \whiteout "la" } \bar "" s4-\markup { \whiteout "scène." } \bar ""
  %c4 \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar "" c \bar ""
  \unFatText
  \unMonoShift
  \saNormal
  \tempo "misterioso" 4=44
  c'8^\pp b bes a^\< bes b c cis^\f^\> |
  c b bes a^\pp bes b |
  $(skip-of-length sopbass)
  R1^\fermataMarkup % why does barcheck fail here ?
  g4-.^\p g-. g-. g-. |
  g-. g-. g-. g-. |
  g-. g-. g-. g-. |
  g-. r4 r2 |
  \time 4/4
  \tempo 4=70
  r4 a4^\mp ~ a4. r8 |
  R1 |
  r4 a4 ~ a2 ~ |
  a8 r8 a2. |  
  R1 |
  R2 |
  \normalG
  \cricket
  c,1^\mf \bendAfter #-3 \bar "" r2 \bar "" g1\glissando
  \tempo 4=100
  s1*7/8 |
  g'16 g,4 \glissando g'16 |
  % shh lorem ipsum
  \tempo 4=60
  \times 4/5 { c,8.^\f c16 c } \times 4/5 { c c c8.^\markup { \italic \column { "hand covering mouth" "making white noise sound" } } ~ } c4. |
  \tempo 4=100
  R2 |
  % hush lit
  \saNormal
  \times 2/3 { f2^\p^\< e4^\f } |
  \times 2/3 { bes'2^\p^\< ( g4-.\f ) } |
  \override Glissando #'bound-details #'right #'Y = #0
  \cricket \sustainG \once \override Stem #'transparent = ##t \slash c,4*2^\p^\markup { \italic "bravo, applaudissements" } \glissando |
  \saNormal
  \override Glissando #'bound-details #'right #'Y = ##f
  \grace { \hideNotes c8 \unHideNotes } d'8^\< b d a fis g |
  a\f^\> g f d\p^\< f g |
  aes^\> g f16-.\p aes8^\f^\> g fis16-.\p aes8^\p^\> |
  \times 2/3 { g f c^\< } \times 2/3 { f g a^\f^\> } g16 f bes, d' |
  bes g\pp \cricket c,2..^\mf %{fake%} |
  R2. |
  R4. |
  \stemTrans
  r8 \sustainG \slash c4*2^\pp^\markup { \italic "sing the entire work backwards" } \glissando \hideNotes \grace { c8 } \unHideNotes \normalG r8 |
  \saNormal
  \unStemTrans
  %{assistons%}
  r4 d^\mp^\espressivo \monologue \fatText \monoShift s-\markup { \whiteout assistons } \saNormal |
  \time 4/4
  e4^\ff \bar "" \noBreak
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(endhack)
  \once \override Staff . BarLine #'my-name = #'ehalty
  \once \override Staff . BarLine #'stencil = #(royal-hack 'endhack)
  \startStaff
  s2.
}

altoWords = \lyricmode {
  ô
  Lo -- rem ip -- sum
  Lo -- rem ip -- sum
  Lo -- rem ip -- sum do -- lor sit a -- met, con
  Lo -- rem ip -- sum do -- lor
  Lo -- rem ip -- sum
  Lo  Lo -- rem ip -- sum Lo -- rem ip
  \repeat unfold 2 " "
  Ich wet -- te ei -- ne Mark dass Wup -- per -- tal wird für die näch -- sten hun -- dert Jah -- re stark! Hai!
  Ky -- rie -- e e -- lai
  you
  Schloß! Schloß! Schloß! Schloß!
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf "(Rausch)"
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf
  Er hat mehr Torf als ha ha ha
  ha ha ha ha
  \repeat unfold 2 " "
  five
  five five five five
  five five
  ô
  Hush lit -- tle Su -- zy -- kins
  No don't you cry
  Your dad -- dy's gone to sing sing
  Your mo -- ther's pu -- shing pie so
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf
  Hai!
  ni ni ni
  ni ni ni
  Er hat mehr Torf als ei -- ne Kuh von
  \override LyricText #'whiteout = ##f
  Düs -- sel
  \override LyricText #'whiteout = ##t
  "NON !"
  ô
  I think they have seen us,
  there's no -- thing be -- tween us but
  you and I go sai -- ling down
  Ham -- mer time
  you told me that you was -- n't a -- round, bitch,
  i told you that this nig -- ga go -- in' cra -- zy call back,
  you know it
  Resz -- ket a bo -- kor, mert Ma -- dár -- ka szál -- lott rá.
  Resz -- ket a lel -- kem, mert Es -- zem -- be ju -- tot -- tál,
  Es -- zem -- be ju -- tot -- tál, Kic -- siny kis le -- ány -- ka,
  Te a nagy világ -- nak
  Te -- li van a Du -- na, Tán még ki is sza -- lad.
  Es -- zem -- be ju -- tot -- tál
  Es -- zem
  ô
  ac -- cord
  ba -- by
  ba -- by
  pois -- son
  \repeat unfold 15 { pois -- son }
  pois -- son
  pois -- son
  pois -- son
  me eat it
  mom -- my made me eat it
  bang bang bang
  mom -- my made me eat it
  bang bang bang
  Lux æ -- ter -- na lu -- ce -- at e -- is, Do -- mi -- ne
  t'es un che -- vesne t'es un che -- vesne
  t'es un che -- vesne t'es un
  Ich muß ar -- beit -- en ar -- beit -- en
  nein
  \repeat unfold 8 { speil -- en }
  \repeat unfold 8 " "
  \repeat unfold 8 { speil -- en }
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel
  Lo -- rem ip -- sum do -- lor sit a -- met, con -- sec -- te -- tur a
  \repeat unfold 13 you
  pois pois -- son
  tout
  up " "
  up " "
  shhh lo -- rem ip -- sum
  shhh
  hush lit
  ah " "
  " "
  Er hat mehr Torf als ei -- ne Kuh von
  no -- thing bet -- ween us there's
  tween us there's
  tween us there's
  no -- thing bet -- ween us and you and I go fake
  " "
  ô
  Schloß
}

tenor = \relative c' { \autoBeamOff
  \clef "treble_8"
  \time 8/4 \once \override Staff . TimeSignature #'stencil = ##f
  d4^\mp^\espressivo
  \hideNotes
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(pleasework)
  \once \override Staff . BarLine #'my-name = #'tenny
  \once \override Staff . BarLine #'stencil = #(royal-hack 'pleasework)
  \startStaff
  \bar ""
  s2. s1
  \unHideNotes
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(reverse)
  \once \override Staff . BarLine #'my-name = #'alto2
  \once \override Staff . BarLine #'stencil = #(royal-hack 'reverse)
  \startStaff
  \bar ""
  \time 2/2
  a4.->^\ff a4.-> a4-- |
  a-- a-- a-- a8-. a-. |
  a8-. a-. a-. a-. a-. a-. a-. a-. |
  a4.-> a8-> ~ a4 a4-> ~ |
  a8 a4.-> a4-- a4-- |
  a-- a-- a8-. a-. a-. a-. |
  a-. a-. a-. a-. a-. a-. a-. a-. |
  a-. a4.-> a4.-> a8-> ~ |
  a4 a4.-> a8-.
  \speaking \sustainG
  \override NoteHead #'style = #'slash
  \override Stem #'transparent = ##t
  c4^\mp^\markup { \italic "and saying \"bravo!\"" }^\markup { \italic "giggly laughter, applauding"}  \glissando |
  \time 6/4
  s1 s4.. \hideNotes c16 \unHideNotes
  \revert Stem #'transparent
  \time 2/2 \tNormal \normalG
  r8 d,^\f ~ \times 2/3 { d fis a } d4-. e \glissando |
  e,2.^\> fis4 |
  b8^\mp^\< b ais ais a gis g fis |
  b e, a fis g4-.^\f \cricket c-. |
  \stemUp
  \fatText
  \monoShift
  s2*2/3^\markup { \whiteout { shhh } } 
  \fatText
  \monoShift
  s2*2/3^\markup { \whiteout { baby's } } 
  \fatText
  \monoShift
  s2*2/3^\markup { \whiteout { sleeping } } 
  \stemNeutral
  \revert Stem #'stencil
  \unHideNotes
  R1 |
  \stemUp
  r8 c2.. ~ |
  c2 ~ c8 r4. |
  r4. c8 ~ c2 ~ |
  c4. r8 r2 |
  r8 c2..^\markup { \italic "sneeze" } |
  r4 c2. |
  \tNormal
  r4^\fermata des4^\mp^\espressivo
  \time 4/4
  \tictoc
  e8^\mf^\markup { \italic \column { "tick tock" "clacking sound" } } [ a, ] e' [ a, ] e' [ a, ] e' [ a, ] |
  e' [ a, ] e' [ a, ] e' [ a, ] e' [ a, ] |
  e' [ a, ] e' \tNormal g,8^\ff ~ g4 \tictoc e'8^\mf [ a, ] |
  e' [ a, ] e' [ a, ] e' [ a, ] e' [ a, ] |
  e' [ a, ] e' [ a, ]
  \tNormal g4^\ff \tictoc e'8^\mf [ a, ] |
  e'8 \tNormal g,4.^\ff ~ g8 \tictoc a^\mf \tNormal g4^\ff |
  r8 d'^\f d d d b^\subPd bes bes |
  b a a a g4-. r |
  r8 d'^\mp^\< d d d d d d |
  d d a a a4-.^\f a-.^\p |
  R1^\longFermataMarkup
  r8 d^\mp^\< d d d d d d |
  d d a a a4-.^\f r^\longfermata |
  r8 d^\mp^\< d d d d4 d8 ~ |
  d d4^\f \cricket c8^\markup { \italic "speaking in tongues" } ~ c4. \tNormal r8 |
  \acciaccatura { d16 } cis2 ~ cis8 \cricket cis4.^\markup { \italic tongues } \tNormal |
  \tNormal r8 bes4 bes8 bes8 bes16 bes bes bes bes8 ~ |
  bes16 bes bes bes \times 2/3 { bes8 bes bes } \times 4/5 { bes8 bes16 bes bes } \times 4/5 { bes bes bes bes bes ~ } |
  bes8 bes bes16 bes bes bes r4 b^\mp^\espressivo |
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(tagueule)
  \once \override Staff . BarLine #'my-name = #'tgtenny
  \once \override Staff . BarLine #'stencil = #(royal-hack 'tagueule)
  \startStaff
  s1 s1 |
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(tagueuleback)
  \once \override Staff . BarLine #'my-name = #'tgtennyback
  \once \override Staff . BarLine #'stencil = #(royal-hack 'tagueuleback)
  \startStaff
  c4^\mf ~ \times 2/3 { c8 b c } \times 2/3 { a aes g ~ } g8 \times 2/3 { r16 c8 ~ } |
  c4 ~ \times 2/3 { c8 b c } r8 ees4^\mp^\< ees8 |
  d^\f b c cis fis^\> f4 e8 |
  \time 5/4
  dis8^\mp^\< b c bes a4^\> b2^\mp |
  \time 4/4
  r8 d^\f d d d d d d |
  d d a a a r\fermata a^\pp r\fermata |
  $(skip-of-length chirpFest) \bar "|" |
  \once \override Score . TimeSignature #'stencil = ##f
  \time 11/16
  r4\fermata a16-^^\mf a-^ a-^ r4\fermata |
  \once \override Score . TimeSignature #'stencil = ##f
  \time 15/16
  r4\fermata a16-^^\mf a-^ a-^ r2^\fermata |
  r8 d^\mp^\< d d d d 
  \once \override TextScript #'cross-staff = ##t
  \once \override TextScript #'outside-staff-priority = ##f
  \once \override TextScript #'Y-offset = #-5
  \once \override TextScript #'font-size = #1
  d\!_\markup { \pleaseworktwo #'(" " "Ce" "n'était" "pas" "un" "accord.") #'(30 . 5.4) #'(0.5 0.0 0.5 1.0 1.0 1.0) #'(0 0.07 0.22 0.6 0.82 0.99) } \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(pasaccord)
  \once \override Staff . BarLine #'my-name = #'patenny
  \once \override Staff . BarLine #'stencil = #(royal-hack 'pasaccord)
  \startStaff \noBreak
  \bar "" s8 \once \override Staff . BarLine #'stencil = ##f |
  \once \override Score . TimeSignature #'stencil = ##f
  \time 8/4
  s1 s1 |
  \bar ""
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(pasaccordback)
  \once \override Staff . BarLine #'my-name = #'patennyback
  \once \override Staff . BarLine #'stencil = #(royal-hack 'pasaccordback)
  \once \override Score . TimeSignature #'stencil = ##f
  \startStaff
  gis,1*1/4^\ff |
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(siaccord)
  \once \override Staff . BarLine #'my-name = #'satenny
  \once \override Staff . BarLine #'stencil = #(royal-hack 'siaccord)
  \startStaff
  \time 4/4
  s1 |
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(siaccordback)
  \once \override Staff . BarLine #'my-name = #'satenorback
  \once \override Staff . BarLine #'stencil = #(royal-hack-single 'siaccordback)
  \startStaff
%  \cadenzaOn
  \clef percussion
  \bar ""
  s4 s16 \bar ""
  \stemUp
  \FatText \MonoShift
  \override TextScript #'extra-spacing-width = #'(-0.3 . 0.3)
  \hideNotes s4*2/3-\markup { \whiteout shhh } s4*2/3-\markup { \whiteout baby's } s4*2/3-\markup { \whiteout sleeping } \bar "" \unHideNotes
  \revert TextScript #'extra-spacing-width
  \unFatText \unMonoShift
  \tNormal
  b4^\mp^\espressivo \bar ""
  s4.
%  \cadenzaOff
  \time 4/4
  \tictoc
  e8^\mf^\markup { \italic \column { "tick tock" "clacking sound" } } [ a, ] e' [ a, ] e' [ a, ] e' [ a, ] | 
  e' [ a, ] e' [ a, ] e' [ a, ] e' [ a, ] |
  e' [ a, ] e' r |
  \tNormal
  %\time 4/4
  \times 2/3 { d8^\< d d } \times 2/3 { des^\> des des } \times 2/3 { c^\< c c } \times 2/3 { b^\> b b } |
  bes2^\p^\< c |
  e2^\> ~ e8\p \monologue
  \fatText \monoShift
  s4.-\markup { \whiteout stop } |
  \tNormal
  \time 7/16
  g,8^\mf g e \cricket \stemUp c'16^\p |
  \time 4/4
  c c c c c c c c r c r c c c c c |
  \time 7/8
  c c c c c c c c r c c c \monologue \fatText \monoShift s8-\markup { \whiteout rewind } |
  \tNormal
  d2.->^\f ~ |
  d2 ~ |
  d4. ~ d4 ~ |
  d4 d4-> ~ |
  d2 ~ |
  d4 dis4-> ~ |
  dis4. ~ dis4 ~ |
  dis e2-> |
  fis2-> ~ |
  fis8 fis fis fis f |
  e4 dis16 cis b8 |
  e4. fis8 |
  g a g fis e fis |
  d e fis d |
  e fis d e |
  fis d e fis d e |
  fis d e fis e fis | 
  \time 2/4
  r4 b,^\mp^\espressivo |
  \cricket \stemUp
  r8. c16^\mf c8 r |
  r4 c8 c |
  r4 c8 c |
  \times 2/3 { r4 c8 } c4 |
  R2 |
  \tNormal
  a4--^\ff a-- a-- a-- |
  \repeat unfold 24 a8-.
  \monologue
  \FatText
  \MonoShift
  s2*2/3-\markup { \whiteout I } s2*2/3-\markup { \whiteout BE } s2*2/3-\markup { \whiteout YOUR } s4.-\markup { \whiteout "FISH !!!" }
  \unFatText
  \unMonoShift
  \bNormal a8-> ~ a4 a4-> ~ |
  a8 a4.-> a4-- |
  \time 3/8
  \cricket
  r16 c^\mf r c c c |
  \tNormal
  g2^\p^\< ~ g8\f r |
  g2^\p^\< ~ g8\f r |
  g2^\p^\< ~ g8\f r |
  \cricket
  c8.^\mf c c |
  \time 3/4
  \tNormal
  g2^\p^\< ~ g8\f r |
  \cricket
  c8.^\mf c c |
  \tNormal
  r2 b4^\mp^\espressivo |
  r8 c^\mp^\< b a g^\mf c^\mp^\< b a |
  g^\mf c^\mp^\< b a g^\mf c^\mp b r |
  R1 |
  R1 |
  R1 |
  R1 |
  \cricket
  a4^\f^\markup { \italic \column { "rimshot" "snare" "cymbal" } } c4:32 e8 e e a, ~ |
  a c:32 c c e e e e |
  \times 2/3 { a,8^\mf^\markup { \italic "bass drum" } a a } \times 2/3 { a a a } a4:8^\markup { \italic "sim." } a: |
  a: a: a: a: |
  \tNormal
  r8 d^\mp^\< d d d d d d |
  d^\f^\> d d d^\p |
  $(skip-of-length acte)
  a'8^\pp^\markup { \italic "(falsetto)" } aes g ges f^\< fis g gis |
  a^\f^\> gis^\< c b d^\f^\> cis\! |
  $(skip-of-length sopbass)
  R1^\fermataMarkup
  ees,4-.^\p ees-. ees-. ees-. |
  ees-. ees-. ees-. ees-. |
  ees-. r4 r2 |
  \FatText
  \MonoShift
  \override TextScript #'extra-spacing-width = #'(-0.3 . 0.3)
  r4 \monologue s4-\markup { \whiteout shhh } s4-\markup { \whiteout baby's } s4-\markup { \whiteout you } |
  \revert TextScript #'extra-spacing-width
  \unFatText
  \unMonoShift
  R1 |
  R1 |
  \tictoc
  \times 2/3 { e8^\mf^\markup { \italic \column { "tick tock" "clacking sound" } } [ a, ] e' [ a, ] e' [ a, ] }
  \times 2/3 { e' [ a, ] e' [ a, ] e' [ a, ] }
  \times 2/3 { e' [ a, ] e' [ a, ] e' [ a, ] }
  \times 2/3 { e' [ a, ] e' [ a, ] e' [ a, ] }
  \times 2/3 { e' [ a, ] e' [ a, ] e' [ a, ] }
  \times 2/3 { e' [ a, ] e' [ a, ] e' [ a, ] }
  \time 2/4
  \times 2/3 { e' [ a, ] e' [ a, ] e' [ a, ] } |
  s1*5/2
  \tNormal
  r8 cis^\mp^\< d fis^\> e d cis |
  c8.\mp \glissando b'8. |
  \cricket
  %{ k d s  t  t t p tz ...  d d %}
  c,32^\f c c8. ~ \times 4/5 { c16 c r c c } c16 c8. \bendAfter #-3 c16 c
  R2 |
  R2 |
  \tNormal
  \times 2/3 { bes'2^\p^\< ( g4-.\f ) } |
  R2 |
  \grace { s8 }
  R2. |
  R2. |
  R2. |
  R2. |
  R1 |
  R2. |
  R4. |
  R2. |
  r2 r8 b,^\mp^\espressivo |
  r4
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(endhack)
  \once \override Staff . BarLine #'my-name = #'ehtenfuls
  \once \override Staff . BarLine #'stencil = #(royal-hack 'endhack)
  \startStaff
  s2.
}

tenorWords = \lyricmode {
  ô
  Lo -- rem
  Lo -- rem ip -- sum
  Lo -- rem ip -- sum do -- lor sit a -- met, con
  Lo -- rem ip -- sum
  Lo -- rem ip -- sum
  Lo -- rem ip -- sum do -- lor sit a -- met, con -- sec -- te -- tur
  Lo -- rem ip -- sum
  Lo
  \repeat unfold 2 " "
  Ich wet -- te ei -- ne Mark dass Wup -- per -- tal wird für die näch -- sten hun -- dert Jah -- re stark! Hai!
  shhh shhh chhh shhh
  you
  \repeat unfold 19 " "
  Schloß!
  \repeat unfold 14 " "
  Schloß!
  \override LyricText #'transparent = ##t "."
  \revert LyricText #'transparent
  \repeat unfold 2 " "
  Schloß!
  \repeat unfold 1 " "
  Schloß!
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf "(Rausch)"
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf
  Er hat mehr Torf als ei -- ne
  " "
  gna " "
  Dieu, c'est Dieu, le mag -- ni -- fique Dieu, qui est des -- cen -- du du ciel
  pour sau -- ver l'é -- co -- no -- mie greque
  d'An -- ge -- la Mer -- kel
  ô
  Hush lit -- tle Su -- zy -- kins
  No don't you cry
  Your dad -- dy's gone to sing sing
  Your mo -- ther's pu -- shing pie so
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf
  Hai!
  ni ni ni
  ni ni ni
  Er hat mehr Torf als ei
  "NON !"
  ô
  \repeat unfold 19 " "
  think they have seen us,
  there's no -- thing be -- tween us but
  you and I
  Ham -- mer time
  you told me that you was -- n't a -- round, bitch,
  i told you that this nig -- ga go -- in' cra -- zy call back,
  you know it
  Resz -- ket
  Resz -- ket
  Ma -- dár -- ka szál -- lott rá.
  vi -- lág -- nak Leg -- nagy -- obb gyé -- mánt -- "ja !"
  Te -- li van a Du -- na, Tán még ki is sza -- lad.
  Es -- zem -- be ju -- tot -- tál
  Es -- zem -- be ju
  ô
  ac -- cord
  ba -- by
  ba -- by
  pois -- son
  \repeat unfold 14 { pois -- son }
  \repeat unfold 2 { pois -- son }
  shit, you know it
  ô
  ô
  ô
  bang bang bang
  ô
  bang bang bang
  â
  t'es un che -- vesne t'es un che -- vesne
  t'es un che -- vesne t'es un
  \repeat unfold 25 " "
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel
  Lo -- rem ip -- sum do -- lor sit a -- met, con -- sec -- te -- tur a
  \repeat unfold 9 you
  \repeat unfold 42 " "
  ei -- ne Kuh von Düs -- sel -- dorf __ _
  k d s  t  t t p tz  d d
  ah " "
  ô  
}

bass = \relative c' { \autoBeamOff
  \time 8/4 \once \override Staff . TimeSignature #'stencil = ##f
  \clef bass
  a4^\mp^\espressivo
  \hideNotes
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(pleasework)
  \once \override Staff . BarLine #'my-name = #'bassy
  \once \override Staff . BarLine #'stencil = #(royal-hack 'pleasework)
  \startStaff
  \bar ""
  s1 s4 s4 s4
  \unHideNotes
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(reverse)
  \once \override Staff . BarLine #'my-name = #'bass2
  \once \override Staff . BarLine #'stencil = #(royal-hack 'reverse)
  \startStaff
  \bar ""
  \time 2/2
  a4.->^\ff a4.-> a4-- | %\break
  a-- a-- a-- a8-. a-. |
  a8-. a-. a-. a-. a-. a-. a-. a-. |
  a4.-> a8---> ~ a2 ~ |
  a4. gis8---> ~ gis2 ~ |
  gis2 gis,---> ~ |
  gis2 ~ gis8 gis-. gis-. gis-. |
  gis8-. gis-. gis-. gis-. gis8-. gis-. gis-. gis-. |
  gis8-. gis-. gis-.
  \speaking \sustainG
  \override NoteHead #'style = #'slash
  \override Stem #'transparent = ##t
  c'4^\mp^\markup { \italic "and saying \"bravo!\"" }^\markup { \italic "giggly laughter, applauding"}  \glissando s8 s4 |
  \time 6/4
  s1 s4.. \hideNotes c16 \unHideNotes
  \revert Stem #'transparent
  \time 2/2 \bNormal \normalG
  r8 d,^\f ~ \times 2/3 { d fis a } d4-. e \glissando |
  e,2^\> dis |
  d!8^\mp^\< d cis cis c b bes a |
  a a d d g,4-.^\f \cricket c'4-. |
  R1 |
  R1 |
  \bNormal
  r4. bes8^\p ~ bes2 ~ |
  bes4. r8 r4 bes4 ~ |
  bes2.. r8 |
  r4. bes8 ~ bes2 ~ |
  bes4. r8 r4. bes8 ~ |
  bes2 r8 bes4. |
  \time 2/4
  r4\fermata bes4^\espressivo^\mp |
  \monologue
  \FatText \MonoShift
  \override TextScript #'extra-spacing-width = #'(-0.2 . 0.2)
  s2. s4-\markup { \whiteout Bon, } |
  s4*2/3-\markup { \whiteout voilà, } s4*2/3-\markup { \whiteout ça } s4*2/3-\markup { \whiteout fait } s4*2/3-\markup { \whiteout deux } s4*2/3-\markup { \whiteout ans } s4*2/3-\markup { \whiteout maintenant } |
  s8.-\markup { \whiteout que } s8.-\markup { \whiteout je } \bNormal c,8^\ff ~ c4 \monologue s4-\markup { \whiteout à } |
  s4*4/7-\markup { \whiteout chaque } s4*4/7-\markup { \whiteout fois } s4*4/7-\markup { \whiteout que } s4*4/7-\markup { \whiteout je } s4*4/7-\markup { \whiteout me } s4*4/7-\markup { \whiteout lève. } s4*4/7-\markup { \whiteout C'est } |
  s4*2/3-\markup { \whiteout dur } s4*2/3-\markup { \whiteout parce } s4*2/3-\markup { \whiteout que } \bNormal c4^\ff \monologue s8-\markup { \whiteout et } s-\markup { \whiteout mes } |
  s-\markup { \whiteout amis } \bNormal c4.^\ff ~ c8 \monologue s8-\markup { \whiteout enfin } \bNormal c4^\ff |
  \revert TextScript #'extra-spacing-width
  \unFatText \unMonoShift
  r8 b'^\f b bes a a^\subPd gis gis |
  a g fis d g4-. r |
  g,8^\mp^\< g gis gis a ais b g |
  e e' a, a d4-.^\f d^\p  |
  R1^\longFermataMarkup |
  r8 g,^\mp^\< gis gis a ais b g |
  e e' a, a d4-.^\f r^\longfermata |
  r8 g,^\mp^\< gis gis a ais b b^\ff |
  r4 \acciaccatura { bes'16 } a4 ~ a8 a a a |
  r gis gis gis \times 2/3 { gis gis gis } \times 2/3 { gis r4 }
  \times 2/3 { r4 gis2 ~ } gis2 |
  \times 2/3 { gis4 gis gis } \times 2/3 { r a a }
  r8 a,4 a8 r4 a'^\espressivo^\mp |
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(tagueule)
  \once \override Staff . BarLine #'my-name = #'tgbassy
  \once \override Staff . BarLine #'stencil = #(royal-hack 'tagueule)
  \startStaff
  s1 s1 |
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(tagueuleback)
  \once \override Staff . BarLine #'my-name = #'tgbassyback
  \once \override Staff . BarLine #'stencil = #(royal-hack 'tagueuleback)
  \startStaff
  a4^\mf ~ \times 2/3 { a8 gis a } \times 2/3 { f e ees ~ } ees8 a ~ |
  a8 d, \times 2/3 { cis f g } r8 cis4^\mp^\< c8 |
  b^\f a gis a e'^\> d4 cis8 |
  \time 5/4
  c8^\mp^\< e, fis a^\> ~ a g8^\mp c8. c16 g8 a |
  r8 g,^\f gis gis a ais b b |
  e e a, a d8 r\fermata d r\fermata |
  \cricket
  \cadenzaOn
  \override Staff . BarLine #'stencil = ##f
  s2 %c'4 \bar "" \hideNotes c \unHideNotes \bar ""
  s1 %c'4 \bar "" \hideNotes c c c \unHideNotes \bar ""
  s2. %c'4 \bar "" \hideNotes c c \unHideNotes \bar ""
  \sustainG
  \once \override Glissando #'bound-details #'left #'padding = #1.5
  s8. \bar "" c'1*3/4^\mf^\markup { \italic "low vocal fry" } \glissando \bar ""
  \hideNotes c16 \unHideNotes \noLed s8 \bar "" c1*1/2 \glissando \bar ""
  \hideNotes c16 \unHideNotes \noLed s8. \bar "" c1*1/2 \glissando \bar ""
  \hideNotes c16 \unHideNotes \noLed s8
  \normalG
  \once \override Score . TimeSignature #'stencil = ##f
  \revert Staff . BarLine #'stencil
  \time 11/16
  \bNormal
  r4\fermata a,16-^^\mf a-^ a-^ r4\fermata |
  \once \override Score . TimeSignature #'stencil = ##f
  \time 15/16
  r4\fermata a16-^^\mf a-^ a-^ r2^\fermata |
  r8 b'^\mp^\< b bes a aes g fis %\once \override Staff . BarLine #'stencil = ##f |
  %\time 8/4
  gis, gis\!
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(pasaccord)
  \once \override Staff . BarLine #'my-name = #'pabassy
  \once \override Staff . BarLine #'stencil = #(royal-hack 'pasaccord)
  \startStaff \noBreak 
  \bar "" s2. s1
  \bar ""
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(pasaccordback)
  \once \override Staff . BarLine #'my-name = #'pabassyback
  \once \override Staff . BarLine #'stencil = #(royal-hack 'pasaccordback)
  \once \override Score . TimeSignature #'stencil = ##f
  \startStaff
  \time 1/4
  cis1*1/4^\ff |
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(siaccord)
  \once \override Staff . BarLine #'my-name = #'sabassy
  \once \override Staff . BarLine #'stencil = #(royal-hack 'siaccord)
  \startStaff
  \time 4/4
  s1 |
  \stopStaff
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(siaccordback)
  \once \override Staff . BarLine #'my-name = #'sabassback
  \once \override Staff . BarLine #'stencil = #(royal-hack 'siaccordback)
  \startStaff
%  \cadenzaOn
  \bar ""
  s4 s16 \bar ""
  s2 \bar ""
  a'4^\mp^\espressivo \bar ""
  s4.
%  \cadenzaOff
  \time 4/4
  R1 |
  R1 |
  R2 |
  R1 |
  r4 bes,^\mp g c |
  b8. f16 bes8 a aes8 r4. |
  g'8^\mf g e \cricket \stemUp c'16^\p | 
  \time 4/4
  c c c c c c c c r c r c c c c c |
  \time 7/8
  c c c c c c c c r c c c r8 |
  \bNormal
  g2.->^\f ~ |
  g2 ~ |
  g4. ~ g4 ~ |
  g4 g4-> ~ |
  g2 ~ |
  g4 g4-> ~ |
  g4. ~ g4 ~ |
  g g2-> ~ |
  g2 ~ |
  g4. ~ g4 ~ |
  g4 g4-> ~ |
  g4 g,4-> ~ |
  g2. ~ |
  g2 ~ |
  g4 g4-> ~ |
  g4. ~ g4 g'8-> ~ |
  g8 g4-> g4-> g8-. |
  \time 2/4
  r4 a,^\espressivo^\mp |
  \cricket \stemUp
  r8. c'16^\mf c8 r |
  r4 c8 c |
  r4 c8 c |
  \times 2/3 { r4 c8 } c4 |
  \monologue
  c2 |
  \bNormal
  \time 2/2
  \tempo 2=110
  r2 a4--^\ff a-- |
  a8-. a-. a,-. a-. a-. a-. a-. a-. |
  a-. a-. a-. a-. a-. a-. a-. a-. |
  a-. a-. gis'4-> ~ gis8 gis4.-> |
  gis4.-> gis8-> ~ gis4 gis8-. gis-. |
  gis-. gis-. gis-. a-. a-. a-. a,-. a-. |
  \time 3/4
  a-. a-. a-. a-. a-. a-. |
  \time 3/8
  \cricket
  r16 c'^\mf r c c c |
  \time 3/4
  \bNormal
  g,2^\p^\< ~ g8\f r |
  g2^\p^\< ~ g8\f r |
  g2^\p^\< ~ g8\f r |
  \time 9/16
  \cricket
  c'8.^\mf c c |
  \time 3/4
  \bNormal
  g,2^\p^\< ~ g8\f r |
  \time 9/16
  \cricket
  c'8.^\mf c c |
  \time 3/4
  \bNormal
  aes,2.^\mf^\markup { \italic \column { "rapidly fluttering hand against" "mouth to create the sound" "of a power generator" } }
  \time 2/2
  e8-.^\mp r b''^\< a g\mf r b,^\mp^\< a |
  g\mf c^\mp^\< b a g\mf c^\mp b r |
  R1 |
  R1 |
  f'4-_^\mf f-_ f-_ f-_ |
  f-_ f-_ r2 |
  a,4 r a r |
  a r a r |
  f'-_ f-_ f-_ f-_ |
  f-_ f-_ f-_ f-_ |
  r8 g,^\mp^\< gis gis a ais b g |
  \time 2/4
  e\f^\> e' ees d\p |
  \cadenzaOn
  $(skip-of-length acte)
  \cadenzaOff
  \time 4/4
  R1 |
  \time 3/4
  R2. |
  \cadenzaOn
  \sustainG
  \override Glissando #'bound-details #'left #'padding = #1.5
  \unHideNotes
  \cricket
  c'1*3/4^\mf^\markup { \italic "low vocal fry" } \glissando %{\bar ""%}
  \hideNotes c16 \unHideNotes \noLed s8 %{\bar ""%} c1*1/2 \glissando %{\bar ""%}
  \hideNotes c16 \unHideNotes \noLed s8. %{\bar ""%} c1*1/2 \glissando %{\bar ""%}
  \hideNotes c16 \unHideNotes \noLed s8. %{\bar ""%} c1*1/2 \glissando %{\bar ""%}
  \hideNotes c16 \unHideNotes \noLed s8. %{\bar ""%} c1*1/2 \glissando \bar ""
  \hideNotes c16 \unHideNotes \noLed s8
  \normalG
  \revert Glissando #'bound-details #'left #'padding
  \cadenzaOff
  \bar ""
  \time 2/2
  \bNormal
  R1^\fermataMarkup |
  r8 bes,^\p r bes r bes r bes |
  r bes r bes r bes r bes |
  r bes r bes r bes r ees |
  R1 |
  \time 4/4
  r4 bes'4^\mp ~ bes4. r8 |
  r8 bes4. ~ bes4 r4 |
  r4 bes4 ~ bes2 ~ |
  bes8 r8 bes2. |
  R1 |
  R2 |
  \cricket
  c1^\mf \bendAfter #-3 \bar "" r2 \bar "" g1\glissando
  \bNormal
  a8^\< ais b c^\> b bes a |
  \speaking \sustainG
  \override NoteHead #'style = #'slash
  \override Stem #'transparent = ##t
  \once \override Dots #'transparent = ##t
  c4.^\mp^\markup { \italic "giggly laughter" }  \glissando |
  s16 \hideNotes c16 \unHideNotes %\override NoteHead #'style = #'diamond
  \revert Stem #'transparent
  \cricket
  r8
  c8^\mf^\<^\markup { \italic \column { "\"r\" roulé en" "se raclant la gorge" }} ~ c8^\>
  c16.^\subFdynamic %{k k k k%} c c c |
  R2 |
  R2 |
  \bNormal
  \times 2/3 { bes'^\p^\< ( g4-_\f ) } |
  r8 \once \override Dots #'transparent = ##t \cricket \once \override Stem #'transparent = ##t \slash c,4.^\p^\markup { \italic "bravo, applaudissements" } \glissando |
  \stemTrans
  \mark \markup { \italic "accel." }
  \grace { s8 } \afterGrace s8 { \hideNotes c8 \unHideNotes } \bNormal d^\mf b d a fis^\mp^\< |
  \mark \markup { \italic "rall." }
  g gis a^\> g fis e |
  \cricket
  %{ accord %}
  \mark \markup { \italic "stable" }
  \times 2/3 { c'8^\mf c r8 } \times 2/3 { r8 c c } \times 2/3 { r4 c8 } |
  \times 2/3 { c8 r4 } r8 c c c |
  \bNormal
  \mark \markup { \italic "accel." }
  d^\f f c ais b bis cis b |
  ais \cricket \times 2/3 { c c r } r r4 |
  R4. |
  r8 \stemTrans \sustainG \slash c4*2^\pp^\markup { \italic "sing the entire work backwards" } \glissando \hideNotes \grace { c8 } \unHideNotes \normalG \unStemTrans r8 |
  \bNormal
  r4 a^\mp^\espressivo r |
  c,^\ff
  \stopStaff
  \once \override Staff . StaffSymbol #'line-count = #1
  \once \override Staff . StaffSymbol #'transparent = ##t
  \once \override Staff . BarLine #'Y-extent = #'(-0.1 . 0.1)
  \once \override Staff . BarLine #'X-extent = #'(0 . 0)
  \once \override Staff . BarLine #'searching = #'(endhack)
  \once \override Staff . BarLine #'my-name = #'ehtenny
  \once \override Staff . BarLine #'stencil = #(royal-hack 'endhack)
  \startStaff
  s2.
}

bassWords = \lyricmode {
  ô
  Lo -- rem
  Lo -- rem ip -- sum
  Lo -- rem ip -- sum do -- lor sit a -- met, con
  Lo -- rem ip -- sum do -- lor sit a -- met, con -- sec -- te -- tur a -- di -- pi -- si -- cing 
  \repeat unfold 2 " "
  Ich wet -- te ei -- ne Mark dass Wup -- per -- tal wird für die näch -- sten hun -- dert Jah -- re stark! Hai!
  Ky -- rie -- e e -- lai
  you
  Schloß!
  Schloß!
  Schloß!
  Schloß!
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf
  Herr, er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf "(Rausch)"
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf
  Er hat mehr Torf als ei -- ne
  gna gna gna gna
  gna gna gna gna
  gna gna gna gna
  gna gna gna gna
  gna gna gna
  ô
  Hush lit -- tle Su -- zy -- kins
  No No No don't you cry
  Your dad -- dy's gone to sing sing
  Your mo -- ther's pu -- shing da dum da dum dum
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel -- dorf
  Hai!
  \repeat unfold 6 " "
  ni ni ni
  ni ni ni
  Er hat mehr Torf als ei -- ne Kuh von
  "NON !"
  ô
  and I go sail, ba dum dum dum
  Ham -- mer time
  you told me that you was -- n't a -- round, bitch,
  i told you that this nig -- ga go -- in' cra -- zy call back,
  you know it
  Resz -- ket
  Resz -- ket a bo -- kar
  Es -- zem -- be ju
  ô
  ac -- cord
  ba -- by
  ba -- by
  pois -- son
  \lyricsUp #4.5
  attend
  \lyricsNormal
  \repeat unfold 20 { pois -- son }
  shit, you know it
  \repeat unfold 3 { ô }
  bang bang bang
  ô
  bang bang bang
  ou
  t'es un che -- vesne un che -- vesne 
  t'es un che -- vesne t'es un
  \repeat unfold 6 { nein }
  \repeat unfold 4 { ja }
  \repeat unfold 8 { nein }
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel
  \repeat unfold 10 " "
  \repeat unfold 12 dum
  pois -- son pois -- son
  tout
  up
  Torf ei -- ne Kuh von Dü -- sel
  \repeat unfold 2 " "
  r
  k k k k
  ah
  \repeat unfold 2 " "
  Er hat mehr Torf als ei -- ne Kuh von Düs -- sel
  ac -- cord
  ac -- cord
  ac -- cord
  bang bang bang
  hat mehr Torf als ei -- ne Kuh von Dü
  Clif -- ton
  " "
  ô
  Schloß
}

middle = {
  \override Staff . BarLine #'transparent = ##t
  \override Staff . TimeSignature #'stencil = ##f
  \override Staff . Clef #'stencil = ##f
  \barStub
  \stopStaff
  \override Staff . StaffSymbol #'line-count = #0
  \startStaff
  s4 s4
  \stopStaff
  \once \override Staff . BarLine #'my-name = #'pleasework
  \override Staff . StaffSymbol #'line-count = #1
  \startStaff
  \bar ""
  \fatText
  s4^\markup { \whiteout \box \override #'(baseline-skip . 3) \column { "On vient de chanter un accord !" ". . . C'était un accord, ça, ouais." } } 
  s1
  \stopStaff
  \once \override Staff . BarLine #'my-name = #'reverse
  \override Staff . StaffSymbol #'line-count = #0
  \startStaff
  \bar ""
  s4
  \time 2/2
  s4 \unBarStub s2.
  s1*8
  \time 6/4
  s1. |
  \time 2/2
  s1*12 |
  \time 2/4
  s2 |
  \time 4/4
  s1*19 |
  \once \override Score . TimeSignature #'stencil = ##f
  \noBreak
  \time 8/4
  s4
  \stopStaff
  \once \override Staff . BarLine #'my-name = #'tagueule
  \override Staff . StaffSymbol #'line-count = #1
  \startStaff
  \bar "" \noBreak
  \fatText
  %\once \override TextScript #'Y-offset = #1.5
  s4^\markup { \whiteout \box \override #'(baseline-skip . 2)
    \column { %\general-align #X #CENTER
"    Putain, c'était un accord, ça !"
%\general-align #X #CENTER
"Ouais, on vient de chanter un putain d'accord !"
%\general-align #X #RIGHT
"                                                       Ta gueule." } }
  s2 \barStub s2.
  \stopStaff
  \once \override Staff . BarLine #'my-name = #'tagueuleback
  \override Staff . StaffSymbol #'line-count = #0
  \startStaff
  \bar "" \noBreak 
  s4 | %\noBreak % no break is too much here :(
  \once \override Score . TimeSignature #'stencil = ##f  
  \time 4/4
  s4 \unBarStub s2. | s1 | s1 |
  \time 5/4
  s1*5/4 |
  \time 4/4
  s1 |
  s1 |
  $(skip-of-length chirpFest) |
  s4 s8. s4 |
  s4 s8. s4 s4 |
  s1 |
  \override Staff . BarLine #'transparent = ##t
  s4 \noBreak s4 \noBreak s4 \noBreak
  \stopStaff
  \once \override Staff . BarLine #'my-name = #'pasaccord
  \override Staff . StaffSymbol #'line-count = #1
  \startStaff
  \bar "" \noBreak
  \fatText
  %\once \override TextScript #'Y-offset = #0.5
  %\once \override TextScript #'Y-extent = #'(-0.1 . 0.1)
  s4^\markup { \whiteout \override #'(box-padding . 0.5) \box \override #'(baseline-skip . 3) \center-column { "CE N'ÉTAIT PAS" "UN ACCORD !" }} s2.
  \stopStaff
  \once \override Staff . BarLine #'my-name = #'pasaccordback
  \override Staff . StaffSymbol #'line-count = #0
  \startStaff
  \bar "" \noBreak
  s4 | \noBreak
  \barStub
  % try to crete an interior bar to have bleed over...
  s16 \bar "" \noBreak s8 s16
  \once \override Score . TimeSignature #'stencil = ##f
  \unBarStub
  s4
  \stopStaff
  \once \override Staff . BarLine #'my-name = #'siaccord
  \override Staff . StaffSymbol #'line-count = #1
  \startStaff
  %\once \override TextScript #'Y-offset = #0
  \bar "" \hideNotes c32 \bar "" \unHideNotes \break
  \fatText
  \barStub
  s4...^\markup { \whiteout \box \center-column { "Ça, par contre," "c'était un accord." } }
  \stopStaff
  \once \override Staff . BarLine #'my-name = #'siaccordback
  \override Staff . StaffSymbol #'line-count = #0
  \startStaff
  \bar "" \unBarStub s4 |
  % bordel
  s1
  s1
  s1
  s1
  s2
  s4..
  % end bordel, you and i go sailing
  s2
  s2
  s2
  s2
  s16*7
  s1
  s1*7/8
  s2.
  s2
  s1*5/8
  s2
  s2
  s2
  s1*5/8
  s2.
  s2
  s1*5/8
  s2
  s2
  s2.
  s2
  s2
  s2.
  s2.
  s2
  s2
  s2
  s2
  s2
  s2
  s1*6
  s2.
  s4.
  s2.*3
  s8.*3
  s2.
  s8.*3
  s2.
  s1*11
  s2
  $(skip-of-length acte)
  s1
  s2.
  $(skip-of-length sopbass)
  s1*5
  s1*4
  s2*2
  s1*7/8
  s4.
  s1*7/8
  s2*4
  s2.*4
  s1
  s2.
  s4.
  s2.
  s2.
  % make up - sad
  s4.
  s2.
  s4.
  s2.
  s2.
  %%% HERE %%%
  s4 s8
  \bar ""
  \stopStaff
  \once \override Staff . BarLine #'my-name = #'endhack
  \override Staff . StaffSymbol #'line-count = #1
  \startStaff
  s4
  \stopStaff
  \override Staff . StaffSymbol #'stencil = #(lambda (grob) (make-connected-path-stencil '((5.0 0.0 15.0 0.0 15.0 -42.9)) 0.1 0.5 1.0 #f #f))
  \startStaff
  s4

}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { \numericTimeSignature #(set-accidental-style 'neo-modern) \soprano }
      \lyricsto "soprano" \new Lyrics { \sopranoWords }
    >>
    \new Staff \with { \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 1))
       instrumentName = #"Elsa" %shortInstrumentName = #"" %\markup { \concat { E \super l .} } 
} <<
      \new Voice = "alto" { \numericTimeSignature #(set-accidental-style 'neo-modern) \alto }
      \lyricsto "alto" \new Lyrics { \altoWords }
    >>
    \new Staff \with { \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 1)) }
      { \middle }
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature #(set-accidental-style 'neo-modern) \tenor }
      \lyricsto "tenor" \new Lyrics { \tenorWords }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature #(set-accidental-style 'neo-modern) \bass }
      \lyricsto "bass" \new Lyrics { \bassWords }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override TextScript #'layer = #6
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
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
      \consists \buddyEngraver
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
}

\mantra