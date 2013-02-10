\version "2.14.0"
% Er hat mehr Torf als eine Kuh von Düsseldorf
% Ich wette eine Mark
% dass Düsseldorf wird für die nächsten 100 Jahre stark
%\include "defs.ly"
\include "defs-devel.ly"

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
}

\header {
  title = "norman (age 29) wakes up"
}

marksHolyShit = {
  \time 2/4
  \tempo "holy shit, mom!"
  \repeat unfold 2 \unfoldSwing #84 |
  \time 4/4
  \repeat unfold 4 \unfoldSwing #84 |
  \set Score.tempoWholesPerMinute = #(ly:make-moment 84 4 0 1)
  s1 |
  \time 2/4
  \repeat unfold 2 \unfoldSwing #84 |
  \time 4/4
  \repeat unfold 4 \unfoldSwing #84 |
  \time 2/4
  \repeat unfold 1 \unfoldSwing #84
  \set Score.tempoWholesPerMinute = #(ly:make-moment 84 4 0 1)
  s4 |
  \time 4/4
  s1
  \repeat unfold 8 \unfoldSwing #84 |
  \tempo "the cat's meow" 4=152
  s1 | s1 | s2 \tempo "in the pocket" 4=134 s2 |
  \repeat unfold 8 \unfoldSwing #134 |
  \tempo "very fast" 4=160
  s1 | s1 |
  \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \mark \markup \italic "rit."
  \unfoldChange #160 #130 #6
  \set Score.tempoWholesPerMinute = #(ly:make-moment 80 4 0 1) s4
  \time 2/4
  \tempo "walking" 4=108
  s2 | s2 | s2 | s2 | s2 |
  \time 3/4
  \once \override Score . RehearsalMark #'self-alignment-X = #CENTER
  \mark \markup \fontsize #-2 { \note #"2" #UP = \note #"2." #UP }
  \repeat unfold 12 \unfoldSwing #162 |
  \set Score.tempoWholesPerMinute = #(ly:make-moment 108 4 0 1)
  \time 2/4
  s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
  \unset Score.tempoHideNote
  \time 2/6
  s2*2/3 |
}

sopranoHolyShit = \relative c' {
  %4/4
%  \key b\major
  e8^\mf\< fis4 gis8^.^\f |
  r8 b4^> b8 ~ b ais a gis ~ |
  gis^. gis^\> ~ \times 2/3 { gis g fis } e4\mp ~ e8 fisis^\<( |
  %2/4
  gis) b4 cis8^.^\f |
  %4/4
  r8 \noTr e4\startTrillSpan e8\stopTrillSpan ~ e dis d cis |
  %2/4
  r cis^\> ~ \times 2/3 { cis c ais } |
  %4/4
  \times 2/3 { b^\p\< b b } \times 2/3 { b b b } \times 2/3 { b b b } \times 2/3 { b b b } |
  b8 a( b) cis^.^\f r e4. |
  r8 gis4 fis8 e8 cis4 b8^\subP ~ |
  b b^. bes^. bes^. a^. a^. gis^. gis^. |
  g^.^\< g^. fis^. fis^. eis^. eis^. cis^. cis^. |
  r8\! e'4^\f cis8^. e cis,^\mp^\< \times 2/3 { eis gis ais } |
  cis^\mf ais-. r b ~ \times 2/3 { b cis b } ais fisis |
  gis eis r d' ~ d d4. |
  r8 e,^\mp e e r e e e |
  r8 gis^\< gis fis eis cis^\mf r4 |
  r8 fis fis r8 r4 a^\fermata |
  \times 2/3 { r8 gis4^\mp^\espressivo } ais8^\mf fisis |
  \repeat unfold 4 R2 |
  g4. fis8 e d |
  cis4. b' |
  a2. ~ |
  a2. |
  \times 2/3 { r8 gis4^\mp^\espressivo } ais8^\mf fisis |
  \repeat unfold 5 R2 |
  \times 2/3 { r4 a4 ais } |
  \times 2/3 { b c cis } |
  \times 2/3 { d dis e } |
  \times 2/3 { f fis r4 } |
  R2 |
  R2*2/3 |
}

sopranoWordsHolyShit = \lyricmode {
  Ho -- ly shit mom, I met a girl, her name is me.
  Ho -- ly shit mom, I met a girl, her name is
  N O R M A N R O S E N B L A T T
  Yeah you show it
  Don't you know it
  Don't you blow it
  Grab it, grow it, ram it, row it.
  Ro -- sen -- blatt.  
  He was -- n't a wri -- ter.
  Pul -- lin' a fast all nigh -- ter.
  Nor -- man.
  he was -- n't he does -- n't
  his cous -- in fuzz -- 'n'
  don't care bear.
  yes Nor -- man
  Have you e -- ver heard my name.
  you Nor -- man
  Nor -- man Ros -- en -- blatt likes when it's sun -- ny.
}

altoHolyShit = \relative c' { \autoBeamOff
  %4/4
%  \key b\major
  cis8^\mf\< cis4 e8^.^\f |
  r8 e4^> g8 ~ g fis f e ~ |
  e^. dis^\> ~ \times 2/3 { dis d cis } cis4\mp ~ cis8 dis^\<( |
  %2/4
  e) gis4 g8^.^\f |
  %4/4
  r8 \noTr fis4\startTrillSpan gis8\stopTrillSpan ~ gis g fis e |
  %2/4
  r g^\> ~ \times 2/3 { g fis dis } |
  %4/4
  \times 2/3 { e^\p\< e e } \times 2/3 { e e e } \times 2/3 { e fis g } \times 2/3 { gis gis gis } |
  g8 fis( f) e^.^\f r g4. |
  fis2 g8 g4 e8^\subP ~ |
  e e^. ees^. ees^. d^. d^. cis^. cis^. |
  c^.^\< c^. b^. b^. b^. b^. gis^. gis^. |
  r8\! cis'4^\f a8^. cis cis,^\mp\< \times 2/3 { eis e dis } |
  cis^\mf gis'-. r dis8 ~ dis4 disis |
  eis8 cis8 r b'8 ~ b b4. |
  r8 cis,^\mp cis cis r cis cis cis |
  r2. b8^\mf gis |
  r4. e'8 dis r8 fis4^\fermata |
  \times 2/3 { r8 dis4^\mp^\espressivo } r4 |
  \times 2/3 { r4 b^\p\< c } |
  \times 2/3 { cis d dis } |
  \times 2/3 { e f fis }
  \times 2/3 { g gis^\mf r } |
  d4. cis8 b a |
  g4. fis'4. |
  r8 e4 r8 dis4 |
  r8 d4 r8 cis4 |
  \times 2/3 { r8 dis4^\mp^\espressivo } r4 |
  \times 2/3 { r4 b^\p\< c } |
  \times 2/3 { cis d dis } |
  \times 2/3 { e f fis }
  \times 2/3 { g gis^\mf r } |
  R2 |
  R2 | R2 | R2 | R2 |
  \times 2/3 { r4 g4 gis } |
  \times 2/3 { a ais } |
}

altoWordsHolyShit = \lyricmode {
  Ho -- ly shit mom, I met a girl, her name is me.
  Ho -- ly shit mom, I met a girl, her name is
  N O R M A N R O S E N B L A T T
  Yeah show it
  Don't you know it
  Don't you blow it
  Grab it, grow it, ram it, row it.
  Ro -- sen -- blatt.  
  He was -- n't a wri -- ter.
  Pull all nigh -- ter Nor -- man
  he was -- n't he does -- n't
  was -- n't
  it's Nor bear.
  yes
  Nor -- man Ro -- sen -- blatt sold me this toas -- ter
  Have you e -- ver heard my, have you heard my?
  you
  Nor -- man Ro -- sen -- blatt won't touch the To -- rah.
  Nor -- man Ro -- sen
}

tenorHolyShit = \relative c' { \autoBeamOff
  %4/4
%  \key b\major
  \clef "treble_8"
  b8^\mf\< a4 b8^.^\f |
  r8 cis4^> d8 ~ d cis d cis ~ |
  cis^. a^\> ~ \times 2/3 { a b a } b8\mp^\straight bes16 a gis8^\swung c^\<( |
  %2/4
  d) f4 e8^.^\f |
  %4/4
  r8 \noTr d4\startTrillSpan cis8\stopTrillSpan ~ cis d dis d |
  %2/4
  r e^\> ~ \times 2/3 { e dis c } |
  %4/4
  \times 2/3 { d^\p\< d d } \times 2/3 { cis cis cis } \times 2/3 { c c c } \times 2/3 { d d d } |
  cis8 c( a) ais^.^\f r cis4. |
  c2 cis8 cis4 d8^\subP ~ |
  d d^. des^. des^. cis^. cis^. b^. b^. |
  bes^.^\< bes^. a^. a^. gis^. gis^. eis^. eis^. |
  a4.^\f a8 a gis^\mp\< \times 2/3 { gis g fis } |
  eis^\mf eis r4 r cis' |
  cis8 cis r gis' ~ gis8 gis4. |
  r8 a,^\mp a a r g g g |
  r8 b^\< b a gis^\mf r8 r4 |
  fis8 r r4 r8 b dis4^\fermata |
  \times 2/3 { r8 cis4^\mp^\espressivo } r4 |
  \repeat unfold 4 R2 |
  b4. a8 g fis |
  e4. d'4. |
  r8 cis4 r8 c4 |
  r8 b4 r8 ais4 |
  \times 2/3 { r8 cis4^\mp^\espressivo } r4 |
  \repeat unfold 5 R2 |
  \repeat unfold 4 R2 |
  R2 |
  R2*2/3 |
}

tenorWordsHolyShit = \lyricmode {
  Ho -- ly shit mom, I met a girl, her name is me. "(name" is me)
  Ho -- ly shit mom, I met a girl, her name is
  N O R M A N R O S E N B L A T T
  Yeah show it
  Don't you know it
  Don't you blow it
  Grab it, grow it, ram it, row it.
  Ro -- sen -- blatt.
  He was -- n't a wri -- ter.
  All nigh -- ter Nor -- man
  he was -- n't he does -- n't
  his cous -- in fuzz
  there man bear.
  yes
  Have you e -- ver heard my, have you heard my?
  you  
}

bassHolyShit = \relative c' {
  %4/4
%  \key b\major
  \clef bass
  gis8^\mf\< dis4 d8^.^\f |
  r8 fisis4^> gis8 ~ gis a ais b ~ |
  b^. b,^\> ~ \times 2/3 { b cis dis } gis16\mp^\straight e g fis e8^\swung a^\<( |
  %2/4
  gis) e4 bes8^.^\f |
  %4/4
  r8 \noTr a4 %{\startTrillSpan%} f'8%{\stopTrillSpan%} ~ f fis g gis |
  %2/4
  r b^\> ~ \times 2/3 { b bes a } |
  %4/4
  \times 2/3 { gis^\p\< gis gis } \times 2/3 { g g g } \times 2/3 { fis fis fis } \times 2/3 { f d bes } |
  a8 ees'( d) cis^.^\f r bes4. |
  a2 ais8 ais4 gis'8^\subP ~ |
  gis gis^. g^. g^. fis^. fis^. eis^. eis^. |
  e^.^\< e^. dis^. dis^. d^. d^. cis^. cis^. |
  fis,4.^\f cis'8 fis r r4 |
  cis4^\mf eis fis fisis |
  gis8 cis r eis ~ eis cis,4 cis8 |
  a^\mp r8 r4 ais8 r8 r4 |
  b8 r4 bis8^\< cis^\mf r r4 |
  fis,8 r gis ais b r b'4^\fermata |  
  \times 2/3 { r8 ais4^\mp^\espressivo } r4 |
  f,2 |
  fis |
  g |
  R2 |
  r8 e'4. e4 |
  r8 a,4. a4 |
  d4 r8 d4 r8 |
  g,4 r8 g4 r8 |
  \times 2/3 { r8 ais'4^\mp^\espressivo } r4 |
  f,2 |
  fis |
  g |
  gis |
  R2 |
  a2 |
  ais |
  b |
  c |
  cis |
  \times 2/3 { d2 } |
}

bassWordsHolyShit = \lyricmode {
  Ho -- ly shit mom, I met a girl, her name is me. "(her" name is me)
  Ho -- ly shit mom, I met a girl, her name is
  N O R M A N R O S E N B L A T T
  Yeah show it
  Don't you know it
  Don't you blow it
  Grab it, grow it, ram it, row it.
  Ro -- sen -- blatt. 
  wri -- ter pull all nigh -- ter
  Nor, Nor -- man.
  No, No,
  No, sin fuzz
  There care it's Nor bear.
  yes
  Ro -- sen -- blatt
  Have you,
  have you,
  have you heard my.
  you
  Ro -- sen -- blatt was
  Coun -- ting card -- inals
  In the
}

marksUbiquitous = {
  \time 2/4
  \tempo "slow" 4=64
  s8 \set Score.tempoWholesPerMinute = #(ly:make-moment 36 4 0 1) s4 \set Score.tempoWholesPerMinute = #(ly:make-moment 64 4 0 1) s8 |
  \override TextSpanner #'bound-details #'left #'text = #(markup #:fontsize 3 "accel.")
  \override TextSpanner #'bound-details #'left-broken #'text = #(markup #:fontsize 3 "(accel.)")
  \time 4/4
  << {
  s1 |
  s1\startTextSpan |
  s1 |
  s1 |
  \tempo "really fast" 2=110
  \time 2/2
  s1\stopTextSpan |
  } { \repeat unfold 4 \unfoldSwing #64 \unfoldSwingChange #64 #220 #24 \repeat unfold 4 \unfoldSwing #220 }
  >>
  \repeat unfold 8 \unfoldSwing #220 
  << {
  s2. s4\startTextSpan |
  s1 |
  \tempo "really really fast" 2=130
  s1\stopTextSpan } { \repeat unfold 3 \unfoldSwing #220 \unfoldSwingChange #220 #260 #10 \repeat unfold 12 \unfoldSwing #260  } >> |
  \set Score.tempoWholesPerMinute = #(ly:make-moment 130 2 0 1)
  s1 |
  \time 3/4
  s2. | s2. |
  \time 2/2
  \tempo "walking" 2=58
  s1 | s1 |
  \time 3/4
  s2. |
  \time 4/4
  s1 | s1 |
  \tempo "Schloß!" 2=60
  s1 | s1 |
  s1 |
  \time 3/4
  \mark \markup \italic "accel." s2. | \tempo "the bees knee's" 2=86
  \time 4/4
  \repeat unfold 8 \unfoldSwing #172
  \time 4/4
  \tempo "blues" 4=120
  \repeat unfold 4 \unfoldSwing #120
  \time 2/4
  \repeat unfold 2 \unfoldSwing #120
  \time 4/4
  \tempo "turquoises" 4=150
  s1 |
  \time 3/4
  s2. |
  \tempo "spiritual" 4=166
  \time 4/4
  s1 | s1 |
  \time 3/4
  s2. |
  \compoundMeter #'((2 4) (2 6))
  s2 s2*2/3 |
  \time 2/4
  \tempo "walking" 4=108
  s2 | s2 
  \tempo "whimsical" 4=44
  \time 4/4
  s2 \set Score.tempoWholesPerMinute = #(ly:make-moment 28 4 0 1) s4 \set Score.tempoWholesPerMinute = #(ly:make-moment 44 4 0 1) s4 |
  \set Score.tempoWholesPerMinute = #(ly:make-moment 36 4 0 1)
  s4 \set Score.tempoWholesPerMinute = #(ly:make-moment 44 4 0 1)
  s4 \set Score.tempoWholesPerMinute = #(ly:make-moment 36 4 0 1)
  s4 \set Score.tempoWholesPerMinute = #(ly:make-moment 44 4 0 1)
  s4 |
}

sopranoUbiquitous = \relative c' {
  %\key b\major
  r8 fis4^\f^\fermata fis8 |
  b,8 b cis4 d b |
  d8 b4 cis8 ~ cis d'4 fis,,8 |
  b4 cis d b |
  d8 bis4 cis8 ~ cis fis4 fis8 |
  b8 fis8 b ais ~ ais fis ais a ~ |
  a fis a gis ~ gis b, e fis |
  g4 g g g |
  g8( a) g fis ~ fis^\mf fis4 fis8 |
  e8 e eis4 fis g |
  gis8 a4 ais8 ~ ais b4 b8 |
  d4 c8 b a b eis, fis |
  d4 r fis r |
  b8 ais gis fis gis fis e dis |
  %3/4
  r4 gis4.^\mp^\espressivo r8 |
  a'2^\p ~ \times 2/3 { a8 r4 } |
  gis,4^\mp\> g fis f |
  e\< eis\mf r2 |
  r2 ais4^\< |
  b\f\> ais a gis\mp |
  R1 |
  \noTr d'2^\f\startTrillSpan ~ d^\>\stopTrillSpan
  bis2.\p\< bis4 |
  cis2^\mf fis, |
  a4^\> gis fis |
  fis1^\p ~ |
  fis2 ~ fis8 fis4.^\< |
  dis'8^\f( a4. ~ a2) |
  r8 fis'4. |
  dis4^\subP d cis c |
  b^\< ais fisis |
  gis8-.^\f e'4 cis8 d cis b fisis |
  gis b gis e r e^\p\< fis gis |
  r a^\mf r a r a |
  cis cis b cis \times 2/3 { ais4 fisis } |
  R2 | R2 |
  \times 2/3 { bes,4^\p bes2 } r2^\fermata |
  gis'4^\mp^\fermata r a^\fermata r |
  cis4. c8 b8 dis,4^\< eis8 |
  gis^\mf\> fis eis dis cis b'4 ais8 |
  gis^\< dis eis4 e8 dis'4 cis8 |
  b8^\f fis'4 e8 dis b cis4 |
  b2^\> a |
  gis^\mp dis'8( b) cis4 |
  b2 \bar "|."
}

sopranoWordsUbiquitous = \lyricmode {
  The u -- bi -- qui -- tous Nor -- man Ro -- sen -- blatt
  was a two faced twist tats  al -- ley cat 
  Who was snug as a bug in a rug till a thug
  whose name was fate came knock -- in' on his door
  The u -- bi -- qui -- tous Nor -- man al -- ley cat
  was a real De -- mo -- crat now how bout that
  rat
  Nor -- man was a heal -- thy ea -- ter
  yes
  Ro
  Nor -- man, Wil -- ly Mays he the
  eigh -- teenth in -- ning
  Schloß!
  What a kid -- der
  Nor -- man Ro -- blatt.
  Nor -- man, Oh
  Nor -- man's some -- one you ought -- ta know.
  Ho -- ly Ro -- sen -- blatt I'm rea -- dy to go!
  I'm rea -- dy
  cha cha cha
  Stron -- ger than dirt. Nor -- man
  no Schloß
  laughed
  scratched
  went out -- side Nor -- man wakes up on the bus
  with his arms o -- pen wide
  and he cried Let me off of the ride
  he lied Ro -- sen -- blatt.
}
% And they laughed.
% And they scratched.
% And they went out -- side
% Nor -- man wakes up on the bus
% With with his arms o -- pen wide
% And he cried let me off the ride
% he lied Ro -- sen -- blatt

altoUbiquitous = \relative c' { \autoBeamOff
  %\key b\major
  r8 d4^\f^\fermata d8 |
  b8 b cis4 d b |
  d8 b4 ais8 ~ ais fis'4 fis,8 |
  b4 cis d b |
  d8 a4 ais8 ~ ais ais4 cis8 |
  fis8 d fis fis ~ fis cis fis fis ~ |
  fis d fis e ~ e b b c |
  cis4 e4 e e |
  e d8 cis8 ~ cis e4 d8 |
  cis8 cis cis4 d dis |
  e8 fis4 gis8 ~ gis g4 g8 |
  fis4 c'8 b a b eis, fis |
  d4 r cis r |
  b8 ais' gis fis gis fis e dis |
  %3/4
  r4 dis4.^\mp^\espressivo r8 |
  R2. |
  e4^\mp\> cis d dis |
  e4\< cis^\mf g'2^\p ~ |
  g2 dis4^\< |
  e4\f\> cis d dis\mp |
  R1 |
  \noTr a'2^\f\startTrillSpan ~ a^\>\stopTrillSpan
  gis2.\p\< gis4 |
  a2^\mf fis |
  fis4^\> eis cis |
  ais8^\p e'4 e8 dis4 dis |
  d d8 cis ~ cis8 cis4.^\< |
  dis2^\f dis8 e eis fis ~ |
  fis fis gis fis |
  b4^\subP bes a aes |
  g^\< fis dis |
  e8-.^\f e'4 cis8 d cis b fisis |
  gis b gis e r e^\p\< dis d |
  r cis^\mf r cis r cis |
  a' a gis a \times 2/3 { r2 } |
  \times 2/3 { r4 b,^\p\< c }
  \times 2/3 { cis d8 } r4
  \times 2/3 { g,4^\p g2 } r4^\fermata \times 2/3 { r8 cis^\mp d } |
  dis4^\fermata \times 2/3 { r8 cis d } dis4^\fermata \times 2/3 { r8 cis d } |
  dis4. disis8 eis4. r8 |
  cis4^\mf\> c b4.\< d8 |
  cis4. dis8 e fis gis4 |
  ais4^\f gis fis e |
  dis2^\> dis2 |
  dis4^\mp cis fis e |
  gis fis8( e)
}

altoWordsUbiquitous = \lyricmode {
  The u -- bi -- qui -- tous Nor -- man Ro -- sen -- blatt
  was a two faced twist tats  al -- ley cat
  Who was snug as a bug in a rug till a thug
  whose name was fate came knock -- in' on his door
  The u -- bi -- qui -- tous Nor -- man al -- ley cat
  was a real De -- mo -- crat now how bout that
  rat
  Nor -- man was a heal -- thy ea -- ter
  yes
  Nor -- man, Wil -- ly Mays he No the
  eigh -- teenth in -- ning
  Schloß!
  What a kid -- der
  Nor -- man Ro -- blatt.
  Ro -- sen -- blatt he's where it's Schloß
  Nor -- man, oh Nor -- man Ro,
  oh don't -- chya 
  Nor -- man's some -- one you ought -- ta know.
  Ho -- ly Ro -- sen -- blatt I'm rea -- dy to go!
  I'm rea -- dy
  cha cha cha
  Stron -- ger than dirt.
  Nor -- man thought of
  no Schloß.
  And they laughed.
  And they scratched.
  And they went out -- side
  on the bus
  his arms were wide and he cried
  Let me off Nor -- man knew he'd lied
  poor Ro -- sen
}

tenorUbiquitous = \relative c' { \autoBeamOff
  %\key b\major
  \clef "treble_8"
  r8 ais4^\f^\fermata ais8 |
  b8 b ais4 b gis |
  b8 gis4 g8 ~ g c4 fis,8 |
  b4 ais b gis |
  b8 fis4 e8 ~ e fis4 ais8 |
  d8 b d cis ~ cis ais cis b ~ |
  b fis b cis ~ cis a g a |
  b4 bes b c |
  b4 b8 ais ~ ais ais4 ais8 |
  b8 b ais4 b g |
  b8 gis4 e8 ~ e cis'4 a8 |
  d4 c8 b a b eis, fis |
  d4 r ais' r |
  b8 ais gis fis gis fis e dis |
  %3/4
  r4 cis'4.^\mp^\espressivo r8 |
  R2. |
  b4^\mp\> bes a aes |
  g^\< gis\mf r2 |
  r2 cis4^\< |
  d\f\> cis c b\mp |
  R1 |
  \noTr fis'2^\f\startTrillSpan ~ fis^\>\stopTrillSpan
  fis2.\p\< fis4 |
  fis2^\mf d |
  cis4^\> b a |
  fis8^\p cis'4 cis8 bis4 bis |
  b b8 ais ~ ais8 ais4.^\< |
  b2^\f b8 cis d dis ~ |
  dis b4 b8 |
  a'4^\subP aes g ges |
  f^\< e b |
  e8-.^\f e4 cis8 d cis b fisis |
  gis b gis e r e^\p\< fis gis |
  r a^\mf r a r a |
  e' e d e \times 2/3 { r2 } |
  R2 | r4 \cricket c8^\p c |
  \tNormal
  R1^\fermataMarkup |
  cis4^\mp^\fermata r c^\fermata r |
  b2^\espressivo dis4 d |	
  dis4 r4 r8 dis4 disis8 |
  eis4^\< cis8 b ais fis e'4 |
  dis4^\f b4 ~ b ais ~ |
  ais gis^\> b2 ~ |
  b2.^\mp ais4 |
  cis4 dis8( cis)
}

tenorWordsUbiquitous = \lyricmode {
  The u -- bi -- qui -- tous Nor -- man Ro -- sen -- blatt
  was a two faced twist tats  al -- ley cat
  Who was snug as a bug in a rug till a thug
  whose name was fate came knock -- in' on his door
  The u -- bi -- qui -- tous Nor -- man al -- ley cat
  was a real De -- mo -- crat now how bout that
  rat
  Nor -- man was a heal -- thy ea -- ter
  yes
  Nor -- man, Wil -- ly Mays he the
  eigh -- teenth in -- ning
  Schloß!
  What a kid -- der
  Nor -- man Ro -- blatt.
  Ro -- sen -- blatt he's where it's Schloß
  Nor -- man, oh Nor -- man Ro,
  Nor -- man
  Nor -- man's some -- one you ought -- ta know.
  Ho -- ly Ro -- sen -- blatt I'm rea -- dy to go!
  I'm rea -- dy
  cha cha cha
  Stron -- ger than dirt.
  no Schloß
  laughed
  scratched
  went Nor -- man
  wakes
  with his arms o -- pen wide and he 
  cried Let me off
  Nor -- man Ro -- sen
}

bassUbiquitous = \relative c {
  %\key b\major
  \clef bass
  r8 fis4 fis8 |
  b8 b ais4 a gis |
  g8 f4 e8 ~ e ais,4 fis8 |
  b4 ais a gis |
  g8 d'4 fis,8 ~ fis d'4 fis,8 |
  b4 b cis cis |
  d dis e d |
  cis c b ais |
  a4 f'8 e ~ e fis,4 fis8 |
  cis' cis gis4 g fis
  e'8 b4 bes8 ~ bes a'4 a8 |
  d,4 a'8 gis a a, b cis |
  d4 r fis r |
  b8 ais gis fis gis fis e dis |
  %3/4
  r4 ais'4.^\mp^\espressivo r8 |
  r2 \times 2/3 { r8 f, f } |
  R1 | R1 | R2. | R1 |
  \monologue
  \fatText
  \monoShift
  \override TextScript #'whiteout = ##t
  s1-"...schloß..." |
  \revert TextScript #'whiteout  
  \bNormal
  \noTr d'2^\f%{\startTrillSpan%} ~ d^\>%{\stopTrillSpan%}
  d'2.\p\< d4 |
  cis2^\mf bis, |
  cis^\> cis4 |
  fis1\p ~ |
  fis2 ~ fis8 fis4.^\< |
  b,4^\f dis fis gis |
  a gis |
  fis'4^\subP f e ees |
  d^\< cis b |
  e,8-.^\f e'4 cis8 d cis b fisis |
  gis b gis e r2 |
  a,8^\mf r fis r g r |
  a a a a \times 2/3 { r2 } |
  f2^\p\< | fis4^\mf r |
  \times 2/3 { cis'4^\p cis2 } r2^\fermata |
  ais'4^\mp^\fermata r a^\fermata r |
  gis2.^\espressivo r4 |
  ais^\mf\> a gis4.^\p r8 |
  b4\< cis, fis, fis' |
  b,4^\f gis4 fis'4 fisis |
  gis2\> fis4( dis) |
  e2^\mp fis |
  b
}

bassWordsUbiquitous = \lyricmode {
  The u -- bi -- qui -- tous Nor -- man Ro -- sen -- blatt
  was a two faced twist tats  al -- ley cat
  Who was snug as bug in rug till thug
  named fate came knock -- in' on his door
  The u -- bi -- qui -- tous Nor -- man al -- ley cat
  was a real De -- mo -- crat now how bout that
  rat
  Nor -- man was a heal -- thy ea -- ter
  yes
  sen -- blatt
  Schloß!
  What a kid -- der
  Ro -- sen -- blatt.
  Nor, Nor -- man Ro -- sen -- blatt he
  Nor -- man's some -- one you ought -- ta know.
  Ho -- ly Ro -- sen -- blatt I'm rea -- dy to go!
  um um um
  Stron -- ger than dirt.
  Ro -- sen
  no Schloß
  laughed
  scratched
  went
  on the bus
  o -- pen wide
  he cried Let off the ride
  he lied Nor -- man.
}
marksBeginning = {
  \time 3/4
  \tempo "pulsating" 4=140
  s2. |
  \time 3/8
  \unfoldChange #140 #100 #3 |
  \time 7/8
  \tempo "broad" 4=66
  s2 s8 \tempo "fast" 4=164 s4 |
  \time 4/4
  s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

sopranoBeginning = \relative c'' {
  \key b\major
  %3/4
  b8^_^\pp b^_ b^_ b^_ b^_ b^_ |
  %3/8
  dis^_ dis^_ dis^_ |
  %4/4
  cis,^-^\mf dis^- e^- fis^- gis^- ais fisis |
  r16 e gis cis b g ees bes' a f c gis' fis d gis, f' |
  e dis e fis gis fis gis ais bis e, ais, g' fis d gis, e' |
  cis b a g gis ais' b a g fis e d cis d e fis |
  g e bes ges' f a, gis e' ees bes g a b c ees f |
  fis e fis gis ais gis ais b cis a dis, b' ais d, a ees' |
  d cis d e fis e gis b dis a e c' b g dis a' |
  gis fisis gis ais b ais b cis r8 g'4^\sfz r8 |
  g4^\sfz r8 g4^\sfz r8 g4^\sfz |
}

sopranoWordsBeginning = \lyricmode {
  Don't give up on me, life.
  Don't give up.
  Don't give up on me, Nor -- man.
  The sky is bur -- ning and I'm run -- ning out of pea -- nut but -- ter.
  Flo -- wer and an an -- ur -- is -- m, bir -- die want a mo -- tor -- cy -- cle?
  Hea -- ven is a Nor -- man in my ar -- mor with a di -- la -- tor -- y
  mo -- tion for the chan -- ging of Ma -- gil -- li -- cut -- ty's ta -- ble wa -- ter.
  Took it to the li -- mit but I did -- n't pay the pi -- per so I
  sold it to a Ro -- sen -- blatt for eigh -- ty se -- ven dol -- lars. It was
  chea -- per than a kil -- ler mon -- key.
  No! No! No! No!
}

altoBeginning = \relative c'' { \autoBeamOff
  \key b\major
  %3/4
  gis8^_^\pp gis^_ gis^_ gis^_ gis^_ gis^_ |
  %3/8
  b^_ b^_ b^_ |
  %4/4
  cis,^-^\mf dis^- e^- dis^- e^- r4 |
  R1 |
  r2 r8 d'4 ~ \bendAfter #-2 d8 |
  r4 gis,,8. ais bis dis ~ |
  dis b' ~ b a gis fis16 ~ |
  fis8 e8. dis8. r2 |
  r16 a b cis d cis e gis b fis cis a' gis ees c f |
  c'8. bes a8 r8 e4^\sfz r8 |
  e4^\sfz r8 e4^\sfz r8 e4^\sfz |
}

altoWordsBeginning = \lyricmode {
  Don't give up on me, life.
  Don't give up.
  Don't give up on me.
  No! Slow -- ly slow -- ly push -- ing up the dai -- sies.
  it to a Ro -- sen -- blatt for eigh -- ty se -- ven dol -- lars. It was
  Ro -- sen -- blatt.
  No! No! No! No!
}

tenorBeginning = \relative c' { \autoBeamOff
  \key b\major
  %3/4
  \clef "treble_8"
  fis8^_^\pp fis^_ fis^_ fis^_ fis^_ fis^_ |
  %3/8
  gis^_ gis^_ gis^_ |
  %4/4
  cis,^-^\mf bis^- cis^- bis^- cis^- r4  |
  R1 |
  r2 r8 b'4 ~ \bendAfter #-2 b8 |
  r4 r4. gis,8. ais ~ |
  ais g' ~ g f ees des16 ~ |
  des8 c8. bis8. r4. gis8 ~ |
  gis16 ais8. eis'8. bis4. gis'8. ~ |
  gis16 dis e fis gis fis gis a r8 c,4^\sfz r8 |
  c4^\sfz r8 c4^\sfz r8 c4^\sfz |
}

tenorWordsBeginning = \lyricmode {
  Don't give up on me, life.
  Don't give up.
  Don't give up on me.
  No! slow -- ly push -- ing up the dai -- sies.
  For a song to sing
  per than a kil -- ler mon -- key.
  No! No! No! No!
}

walking = \markup \italic "walking bass"

bassBeginning = \relative c' {
  \key b\major
  %3/4
  \clef "bass"
  e8^_^\pp e^_ e^_ e^_ e^_ e^_ |
  %3/8
  gis^_ gis^_ gis^_ |
  %4/4
  cis,^-^\mf bis^- b^- ais^- a^- r4 |
  e8^\mp^\walking b ees d des aes g c |
  b f bes a aes ees d' fis, |
  g' des c ges' f b, bes e |
  ees a, aes d des g, c fis, |
  eis ais b f e a ais dis |
  d a gis' cis, g' fis f ais |
  b g ges f r8 bes,4^\sfz r8 |
  bes4^\sfz r8 bes4^\sfz r8 bes4^\sfz ||
}

bassWordsBeginning = \lyricmode {
  Don't give up on me, life.
  Don't give up.
  Don't give up on me.
  \repeat unfold 52 dum
  No! No! No! No!
}


\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { #(set-accidental-style 'neo-modern) \numericTimeSignature << { \set Staff.midiMaximumVolume = #1.0
        \sopranoBeginning \sopranoHolyShit \sopranoUbiquitous } { \marksBeginning \marksHolyShit \marksUbiquitous } >> }
      \lyricsto "soprano" \new Lyrics { \sopranoWordsBeginning \sopranoWordsHolyShit \sopranoWordsUbiquitous }
    >>
    \new Staff \with { \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 1))
       instrumentName = #"Elsa" %shortInstrumentName = #"" %\markup { \concat { E \super l .} } 
} <<
      \new Voice = "alto" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \altoBeginning \altoHolyShit \altoUbiquitous }
      \lyricsto "alto" \new Lyrics { \altoWordsBeginning \altoWordsHolyShit \altoWordsUbiquitous }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \tenorBeginning \tenorHolyShit \tenorUbiquitous }
      \lyricsto "tenor" \new Lyrics { \tenorWordsBeginning \tenorWordsHolyShit \tenorWordsUbiquitous }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \bassBeginning \bassHolyShit \bassUbiquitous }
      \lyricsto "bass" \new Lyrics { \bassWordsBeginning \bassWordsHolyShit \bassWordsUbiquitous }
    >>
  >>
  \layout {
    \context {
      \Voice
      autoBeaming = ##f
      \override TextScript #'layer = #6
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \override TupletBracket #'direction = #UP
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
\midi {}
}
