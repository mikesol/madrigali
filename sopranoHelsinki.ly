\include "defsHelsinki.ly"

sopranoA = \relative c' {
  \time 6/16
  \partial 16
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
  R2. |
  \time 3/8
  \saNormal
  r8 fis''4^\p^\espressivo |
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
  \time 4/8
  R2 |
  \time 4/4
  \normal
  \clef "treble"
  %\footnote "" #'(0 . 0) #'Rest \noisemakerENGLISH
  e'4 ~ e2 ~ e8 \cricket r8
  \time 6/16
  \cricket
  c,4.^\mp ~ c4. ~ c4.  |
  \time 3/4
  R2. |
  \time 3/8
  \saNormal
  r8 fis''4^\p^\espressivo |
  \time 3/4
  r2 r8 fis8^\espressivo ~ |
  \time 3/8
  \saNormal
  fis8 r4 |
  \time 3/4
  r4. fis4^\espressivo r8 |
  \time 3/8
  \saNormal
  R4. |
  \time 4/4
  \stemNeutral
  \cricket
  \berioGoalposts
  \transpose f d \relative c'' {
    r8. c16^\f^\babbleENGLISH e16 c r c \bendAfter #-2 g8. r16 \acciaccatura { \cross c16_\rireENGLISH  } \cross c \cross c \cross c \cross c |
    \cross e16 r \acciaccatura { \cross b } \cross c \cross c   \cross c8 r \bendAfter #-2 e8. r16 \acciaccatura { c16 } g8 e |
    \times 2/3 { r8 b r } \acciaccatura { b } \bendAfter #-3 e8. r16   f8 r16 d16 \bendAfter #-3 g8. r16 |
    b16 r \cross e \cross e    \cross e \cross e r b  \cross e \cross e \cross e r   r4 |
  }
  \saNormal
  R1 |
  r2 r8 fis,,^\mp a g |
  r4 fis4 r8 fis r4 |
  r4 fis4 r8 fis a g |
  r4 e4 r8 e r4 |
  r4 ees4 r8 d d d |
  \time 3/8
  r4 fis8 |
  \time 6/16
  R4.*5 |
  \time 2/4
  \normal \clef "treble"
  a8^\f a a r |
  a8 a a r |
  \cricket
  \clef percussion
  c,32 c8.. ~ c4 |
  \normal \clef "treble"
  \time 4/4
  c'2.. ~ \times 2/3 { c8 r16 }
  \time 6/16
  R4. |
  \time 3/4
  R2. |
  \time 3/8
  \saNormal
  r8 fis'4^\p^\espressivo |
  \time 3/4
  R2. |
  \time 2/4
  \cricket \berioGoalposts
  \stemNeutral
  \times 2/3 { %{\footnote "" #'(0 . 0) #'NoteHead \triangleTremoloENGLISH  %} c,16^\mf c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
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
  R2. |
  \time 3/8
  R4. |
  \time 3/4
  \slash c2.^\markup { \italic \column { "rub hands" "loudly" }} |
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
  $(skip-of-length ditz)
  \cadenzaOff
  \time 3/8
  \saNormal
  
  c'4^\f ~ c16 r16 |
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
  r8. c16^\mf^\chipmunkENGLISH r4 \cross c,16_\clickENGLISH a'-. r8 r16 \bendAfter #-2 e'8. |
  r8 d8-. r8 c16 c r8 \times 2/3 { r16 b16 b } r16 a16 r8 |
  r8 c r4 r16 a16^\responseENGLISH ( \bendAfter #-3 f'4 ) r8 |
  r8. b,16 e8-. c-. r16 d16 r8 b16 b r e |
  \times 2/3 { r8 \diamond \bendAfter #2 c4^\whistleENGLISH } r4 \bendAfter #-2 e8 r8 r8 d16 d |
  d d r8 r8. f16 r d r8 r8. e16 |
  \times 2/3 { d8 \glissando e r } r16 c r8 \acciaccatura { d } \bendAfter #-2 e8 r8 r8 \times 2/3 { r16 f [ ( e ] } |
  \times 2/3 { f [ e ) ] r16 } r8 r4 r4 f16 f r8 |
  r4 c8-. r e-. r \times 2/3 { d-. d-. r } |
  \time 3/4
  \times 2/3 { r d-. r } \acciaccatura { e } \bendAfter #-3 g4 \times 2/3 { r4 c,8 } |
  \time 5/8
  r8 e16 c r4 b8 |
  \ottava #0
  \time 4/4
  \saNormal \clef "treble"
  g'4-_^\ff g4-_ g4-_ g4-_ |
  g4-_ g4-_ g4-_ g4-_ |
  \time 2/4
  g4-_ g8 r |
  \time 4/4
  R1 |
  r2 \times 2/3 { r4 fis'2^\p^\espressivo }
  r4 a,,^\mp r8 aes r8 g |
  r4 g r8 fis g gis |
  r4 a4 r8 g r4 |
  \time 6/16
  R4.*10
  \time 9/16
  R1*9/16
  \time 2/2
  \normal \clef "treble"
  r8 c16^\mp^\< c c8 b r8 bes16 bes bes8 a |
  g f e d c4-.^\f e''4-.^\pp
  R1 |
  c,4.^\mp \glissando a8 ~ a4. r8 |
  c4. \glissando a8 ~ a4 gis \glissando |
  a4-. r2 |
  \time 2/4
  \cricket \clef percussion c,32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "treble"
  \times 2/3 { \footnote "" #'(0 . 0) #'NoteHead \flatterENGLISH fis4^\mf  dis r } r |
  \time 5/4
  fis4 r8 dis^\rubbingENGLISH ~ dis4 r2 |
  \time 3/4
  fis2. |
  \time 6/4
  r8^\punctuateENGLISH dis4. ~ dis2 r2 |
  \time 7/4
  fis2. ~ fis2 r2 |
  \time 5/4
  dis2. ~ dis2 |
  \cricket \clef percussion \berioGoalposts
  r4   r8. a'16^\f^\markup { \italic \column { "ditzy american" "female" } }    f16 f b r   e,16 \bendAfter #-3 a8.   \times 2/3 { r8 \acciaccatura e16 \cross g8 \cross g } |
  \time 3/4
  \times 2/3 { \cross g \cross g r } r8 \times 2/3 { r16 d'16 d } \times 2/3 { d d r } r8 |
  \time 2/2
  \footnote "" #'(0 . 0) #'NoteHead \tappingENGLISH 
  \bendAfter #-3 e,1^\turnoffENGLISH |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  \normal \clef "treble"
  e'8 g e d e d d4 |
  b8 d b a b a a4 |
  %{
    \time 4/4
    bes8     bes32 bes bes bes       bes4 ~   bes32 bes bes16 bes32 bes bes16 ~       bes32 bes bes bes bes bes bes bes |
    bes bes bes bes bes bes bes16 ~    bes4 ~    bes32 bes bes bes ~ bes8 ~ bes32 bes bes bes32 ~ bes8 ~ |
    \time 3/4
    bes32 bes bes8. ~      bes32 bes bes bes bes bes16. ~        bes16 bes32 bes bes bes bes bes
    \time 2/4
    bes16 bes32 bes bes bes16.  ~ bes8. bes32 bes |
  %}
  bes32^\f  bes32  bes32  bes32 ~ bes8 ~ bes16. bes32 ~ bes8~bes16  bes32  bes32 ~ bes8 ~ bes16. bes32 ~ bes8~bes4 ~ bes16. bes32  bes32  bes16.  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32 ~ bes8 ~ bes16 bes32  bes32  bes8 ~ bes16 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes8 ~ bes4~bes8  bes32  bes32  bes32  bes32 
  \cricket \clef percussion \berioGoalposts
  \footnote "" #'(0 . 0) #'NoteHead \tappingagainENGLISH
  c,1^\mp^\slowglissENGLISH \glissando  s4 |
  \time 3/4
  s2. |
  \time 7/8
  s1*7/8 |
  \time 3/4
  s2. |
  \time 9/8
  s1 c'8 |
  \time 4/4
  R1 |
  R1^\fermataMarkup |
  \normal \clef "treble"
  f,1^\ppp ~ |
  \time 6/4
  f4 \cricket \berioGoalposts r4 r2 r2
  \time 4/4
  \footnote "" #'(0 . 0) #'NoteHead \waterENGLISH
  \ottava #1
  g'8^\mf^\cadenzaENGLISH r r4 r8 d r4 |
  f8 r8 r8 e16 e \times 2/3 { r4 d8 } r8. e16 |
  r4. f8 %{%} r4 r8. e16 |
  r8 d8   r4   r8 c16 c   c r8. |
  r8 f8 r8. f16 r4 g16 g g g |
  r8 g16 g \times 2/3 { r4 e8 } r4 e8 r8 |
  r8 d \times 2/3 { r8 d e } r2 |
  \ottava #0
  \normal \clef "treble"
  r4 a,2.^\mp |
  a1 |
  a2.^\< ( b4 ~ |
  b2 cis2 ~ |
  cis8 dis4. ~ dis8 fis ) r4\roundFFdynamic |
  %{
    \time 3/4
    bes,16.^\f bes32 bes bes bes bes    bes bes bes bes bes8 ~    bes8 ~ bes32 bes bes bes |
    \time 4/4
    bes4 ~    bes8 bes32 bes bes bes    ~ bes4 ~   bes32 bes bes bes bes bes bes bes |
  %}
  bes,32^\f  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes8  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32 ~ bes8 ~ bes16 bes32  bes32  bes32  bes32  bes32  bes32 ~ bes8 ~ bes8 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32 
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
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  \transpose c bes, \relative c' {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
  \transpose c d \relative c' {
  bes c ees f g bes c ges f ees } |
}

sopranoWordsA = \lyricmode {
  shhh
  Al -- lez
  â
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Schloß!
  shhh
  â â â
  \repeat unfold 30 \skip 1
  a pra -- ia.
  Que -- ri -- do te a -- mo.
  Es -- ca -- pa co -- mi -- go. Sim
  Sil -- ly "ra -"
  Sil -- ly "ra -"
  Al -- lez.
  Schloß!
  â
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  A -- ra -- ça a pra
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
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
  â
  Tem cui -- da -- do pe -- ri -- go
  E um
  Ca -- li -- for -- nia
  C A L I F O R N I A
  Save me.
  Save me from Merck.
  Al -- lez
  J -- sho
  J -- sho
  J -- sho
  J -- sho
  \repeat unfold 15 { " " }
  \markup { \center-column { 言 yán }} \markup { \center-column { 者 zhě }} \markup { \center-column { 不 bù }} \markup { \center-column { 如 zhī }} \markup { \center-column { 知 zhī }} \markup { \center-column { 者 zhě }} \markup { \center-column { 默 mò }}
  \markup { \center-column { 此 cĭ }} \markup { \center-column { 語 yŭ }} \markup { \center-column { 吾 wú }} \markup { \center-column { 聞 wén }} \markup { \center-column { 于 yú }} \markup { \center-column { 老 lăo }} \markup { \center-column { 君 jūn }}
  Cre -- do in u -- num De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi -- li -- um. Et in u -- num
  oooooo " "
  Schloß! " "
  \repeat unfold 25 { " " }
  Sil -- ly "ra -"
  Do -- mi -- num IE -- SUM CHRIS -- TUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum. Et ex Pa -- tre na -- tum an -- te om -- ni -- a sæ -- cu -- la. De -- um de De -- o, lu -- men de
  J -- sho J -- sho's on the riz -- zo.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead. part of me
  \repeat unfold 10 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

sopranoB = \relative c' {
  \time 6/16
  \partial 16
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
  R2. |
  \time 3/8
  \saNormal
  R4.
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
  R4 |
  \time 3/8
  R4. |
  \time 4/8
  R2 |
  \time 4/4
  \normal
  \clef "treble"
  %\footnote "" #'(0 . 0) #'Rest \noisemakerENGLISH
  e'4 ~ e2 ~ e8 \cricket r8
  \time 6/16
  \cricket
  c,4.^\mp ~ c4. ~ c4.  |
  \time 3/4
  R2. |
  \time 3/8
  R4.
  \time 3/4
  R2. |
  \time 3/8
  R4. |
  \time 3/4
  R2. |
  \time 3/8
  R4. |
  \time 4/4
  R1 |
  R1 |
  R1 |
  R1 |
  \saNormal
  \stemNeutral
  r4 fis4^\mp r8 fis r4 |
  r4 fis4 r8 fis a g |
  r4 fis4 r8 fis r4 |
  r4 fis4 r8 fis a g |
  r4 e4 r8 e r4 |
  r4 ees4 r8 d d d |
  \time 3/8
  r4 fis8 |
  \time 6/16
  R4.*5 |
  \time 2/4
  \normal \clef "treble"
  a8^\f a a r |
  a8 a a r |
  \cricket
  \clef percussion
  c,32 c8.. ~ c4 |
  \normal \clef "treble"
  \time 4/4
  c'2.. ~ \times 2/3 { c8 r16 }
  \time 6/16
  R4. |
  \time 3/4
  R2. |
  \time 3/8
  \saNormal
  R4.
  \time 3/4
  R2. |
  \time 2/4
  \cricket \berioGoalposts
  \stemNeutral
  \times 2/3 { %{\footnote "" #'(0 . 0) #'NoteHead \triangleTremoloENGLISH  %} c16^\mf c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
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
  R2. |
  \time 3/8
  r8. c16 c c |
  \time 3/4
  \slash c2.^\markup { \italic \column { "rub hands" "loudly" }} |
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
  $(skip-of-length ditz)
  \cadenzaOff
  \time 3/8
  \saNormal
  
  c'4^\f ~ c16 r16 |
  \time 5/16
  \cricket |
  c,8. ~ c8 |
  \time 3/8
  \normal \clef "treble" \stemNeutral
  a'8^\f a a |
  \time 4/4
  R1*9 |
  \time 3/4
  R2. |
  \time 5/8
  R8*5 |
  \time 4/4
  \saNormal \clef "treble"
  g'4-_^\ff g4-_ g4-_ g4-_ |
  g4-_ g4-_ g4-_ g4-_ |
  \time 2/4
  g4-_ g8 r |
  \time 4/4
  R1 |
  R1 |
  r4 a,^\mp r8 aes r8 g |
  r4 g r8 fis g gis |
  r4 a4 r8 g r4 |
  \time 6/16
  R4.*10
  \time 9/16
  R1*9/16
  \time 2/2
  \normal \clef "treble"
  r8 c16^\mp^\< c c8 b r8 bes16 bes bes8 a |
  g f e d c4-.^\f r4
  c'4.^\mp \glissando a8 ~ a4. r8 |
  c4. \glissando a8 ~ a4. r8 |
  c4. \glissando a8 ~ a4 gis \glissando |
  a4-. r2 |
  \time 2/4
  \cricket \clef percussion c,32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "treble"
  \times 2/3 { fis4^\mf  dis r } r |
  \time 5/4
  fis4 r8 dis^\rubbingENGLISH ~ dis4 r2 |
  \time 3/4
  fis2. |
  \time 6/4
  r8^\punctuateENGLISH dis4. ~ dis2 r2 |
  \time 7/4
  fis2. ~ fis2 r2 |
  \time 5/4
  dis2. ~ dis2 |
  R1*5/4
  \time 3/4
  R2.
  \time 2/2
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  \normal \clef "treble"
  e'8 g e d e d d4 |
  b8 d b a b a a4 |
  %{
    \time 4/4
    bes8     bes32 bes bes bes       bes4 ~   bes32 bes bes16 bes32 bes bes16 ~       bes32 bes bes bes bes bes bes bes |
    bes bes bes bes bes bes bes16 ~    bes4 ~    bes32 bes bes bes ~ bes8 ~ bes32 bes bes bes32 ~ bes8 ~ |
    \time 3/4
    bes32 bes bes8. ~      bes32 bes bes bes bes bes16. ~        bes16 bes32 bes bes bes bes bes
    \time 2/4
    bes16 bes32 bes bes bes16.  ~ bes8. bes32 bes |
  %}
  bes32^\f  bes16. ~ bes16 bes32  bes32  bes32  bes32  bes32  bes32 ~ bes8~bes4 ~ bes16. bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16. ~ bes8 ~ bes32 bes16.  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16 ~ bes8~bes8 ~ bes16 bes32  bes32  bes4 ~bes4  bes32  bes32  bes32  bes32  bes32  bes32  bes16 ~bes16  bes32  bes32  bes16.  bes32 
  \cricket \clef percussion \berioGoalposts
  c,1^\mp^\slowglissENGLISH \glissando  s4 |
  \time 3/4
  s2. |
  \time 7/8
  s1*7/8 |
  \time 3/4
  s2. |
  \time 9/8
  s1 c'8 |
  \time 4/4
  R1 |
  R1^\fermataMarkup |
  \normal \clef "treble"
  f,1^\ppp ~ |
  \time 6/4
  f4 r4 r2 r2
  \time 4/4
  R1*7 |
  r4 a2.^\mp |
  a1 |
  a2.^\< ( b4 ~ |
  b1 |
  cis2 dis4 ) r4\roundFFdynamic |
  %{
    \time 3/4
    bes,16.^\f bes32 bes bes bes bes    bes bes bes bes bes8 ~    bes8 ~ bes32 bes bes bes |
    \time 4/4
    bes4 ~    bes8 bes32 bes bes bes    ~ bes4 ~   bes32 bes bes bes bes bes bes bes |
  %}
  bes32^\f  bes32  bes32  bes32 ~ bes8 ~ bes4~bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16. ~ bes16 bes32  bes32 ~bes16.  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32
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
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  \transpose c bes, \relative c' {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
  \transpose c d \relative c' {
  bes c ees f g bes c ges f ees } |
}

sopranoWordsB = \lyricmode {
  shhh
  Al -- lez
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Schloß!
  shhh
  A -- ra -- ça a pra -- ia.
  Que -- ri -- do te a -- mo.
  Es -- ca -- pa co -- mi -- go. Sim
  Sil -- ly "ra -"
  Sil -- ly "ra -"
  Al -- lez.
  Schloß!
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  A -- ra -- ça a pra
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
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
  No! No! No! No! No! No! No! No! No! No!
  Tem cui -- da -- do pe -- ri -- go
  E um
  Ca -- li -- for -- nia
  C A L I F O R N I
  Save me.
  Save me.
  Save me from Merck.
  Al -- lez
  J -- sho
  J -- sho
  J -- sho
  J -- sho
  \markup { \center-column { 言 yán }} \markup { \center-column { 者 zhě }} \markup { \center-column { 不 bù }} \markup { \center-column { 如 zhī }} \markup { \center-column { 知 zhī }} \markup { \center-column { 者 zhě }} \markup { \center-column { 默 mò }}
  \markup { \center-column { 此 cĭ }} \markup { \center-column { 語 yŭ }} \markup { \center-column { 吾 wú }} \markup { \center-column { 聞 wén }} \markup { \center-column { 于 yú }} \markup { \center-column { 老 lăo }} \markup { \center-column { 君 jūn }}
  Cre -- do in u -- num De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi -- li -- um. Et in u -- num Do -- mi -- num IE --
  oooooo " "
  Schloß!
  Sil -- ly "ra -"
  SUM CHRIS -- TUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum. Et ex Pa -- tre na -- tum an -- te om -- ni -- a sæ -- cu -- la. De -- um de De -- o, lu -- men de lu --
  J -- sho J -- sho's on the riz -- zo.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead. part of me
  \repeat unfold 10 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

sopranoC = \relative c' {
  \time 6/16
  \partial 16
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
  R2. |
  \time 3/8
  \saNormal
  R4. |
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
  R4 |
  \time 3/8
  R4. |
  \time 4/8
  R2 |
  \time 4/4
  \normal
  \clef "treble"
  %\footnote "" #'(0 . 0) #'Rest \noisemakerENGLISH
  e'4 ~ e2 ~ e8 \cricket r8
  \time 6/16
  \cricket
  c,4.^\mp ~ c4. ~ c4.  |
  \time 3/4
  R2. |
  \time 3/8
  R4.
  \time 3/4
  R2. |
  \time 3/8
  R4. |
  \time 3/4
  R2. |
  \time 3/8
  R4. |
  \time 4/4
  R1 |
  R1 |
  R1 |
  R1 |
  \stemNeutral
  \saNormal
  r4 fis4^\mp r8 fis r4 |
  r4 fis4 r8 fis a g |
  r4 fis4 r8 fis r4 |
  r4 fis4 r8 fis a g |
  r4 e4 r8 e r4 |
  r4 ees4 r8 d d d |
  \time 3/8
  r4 fis8 |
  \time 6/16
  R4.*5 |
  \time 2/4
  \normal \clef "treble"
  a8^\f a a r |
  a8 a a r |
  \cricket
  \clef percussion
  c,32 c8.. ~ c4 |
  \normal \clef "treble"
  \time 4/4
  c'2.. ~ \times 2/3 { c8 r16 }
  \time 6/16
  R4. |
  \time 3/4
  R2. |
  \time 3/8
  \saNormal
  R4. |
  \time 3/4
  R2. |
  \time 2/4
  \cricket \berioGoalposts
  \stemNeutral
  \times 2/3 { %{\footnote "" #'(0 . 0) #'NoteHead \triangleTremoloENGLISH  %} c16^\mf c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
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
  R2. |
  \time 3/8
  r8. c16 c c |
  \time 3/4
  \slash c2.^\markup { \italic \column { "rub hands" "loudly" }} |
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
  $(skip-of-length ditz)
  \cadenzaOff
  \time 3/8
  \saNormal
  
  c'4^\f ~ c16 r16 |
  \time 5/16
  \cricket |
  c,8. ~ c8 |
  \time 3/8
  \normal \clef "treble" \stemNeutral
  a'8^\f a a |
  \time 4/4
  R1*9 |
  \time 3/4
  R2. |
  \time 5/8
  R8*5 |
  \time 4/4
  g'4-_^\ff g4-_ g4-_ g4-_ |
  g4-_ g4-_ g4-_ g4-_ |
  \time 2/4
  g4-_ g8 r |
  \time 4/4
  R1 |
  R1 |
  r4 a,^\mp r8 aes r8 g |
  r4 g r8 fis g gis |
  r4 a4 r8 g r4 |
  \time 6/16
  R4.*10
  \time 9/16
  R1*9/16
  \time 2/2
  \normal \clef "treble"
  r8 c16^\mp^\< c c8 b r8 bes16 bes bes8 a |
  g f e d c4-.^\f r4 |
  c'4.^\mp \glissando a8 ~ a4. r8 |
  c4. \glissando a8 ~ a4. r8 |
  c4. \glissando a8 ~ a4 gis \glissando |
  a4-. r2 |
  \time 2/4
  \cricket \clef percussion c,32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "treble"
  \times 2/3 { fis4^\mf  dis r } r |
  \time 5/4
  fis4 r8 dis^\rubbingENGLISH ~ dis4 r2 |
  \time 3/4
  fis2. |
  \time 6/4
  r8^\punctuateENGLISH dis4. ~ dis2 r2 |
  \time 7/4
  fis2. ~ fis2 r2 |
  \time 5/4
  dis2. ~ dis2 |
  R1*5/4
  \time 3/4
  R2.
  \time 2/2
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  \normal \clef "treble"
  e'8 g e d e d d4 |
  b8 d b a b a a4 |
  %{
    \time 4/4
    bes8     bes32 bes bes bes       bes4 ~   bes32 bes bes16 bes32 bes bes16 ~       bes32 bes bes bes bes bes bes bes |
    bes bes bes bes bes bes bes16 ~    bes4 ~    bes32 bes bes bes ~ bes8 ~ bes32 bes bes bes32 ~ bes8 ~ |
    \time 3/4
    bes32 bes bes8. ~      bes32 bes bes bes bes bes16. ~        bes16 bes32 bes bes bes bes bes
    \time 2/4
    bes16 bes32 bes bes bes16.  ~ bes8. bes32 bes |
  %}
  bes32^\f  bes32  bes32  bes32  bes32  bes32  bes16 ~ bes4~bes8 ~ bes16 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32 ~bes4...  bes32  bes32  bes32  bes16 ~ bes8 ~ bes8 bes32  bes32  bes16 ~bes4..  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes4 ~bes4
  \cricket \clef percussion \berioGoalposts
  c,1^\mp^\slowglissENGLISH \glissando  s4 |
  \time 3/4
  s2. |
  \time 7/8
  s1*7/8 |
  \time 3/4
  s2. |
  \time 9/8
  s1 c'8 |
  \time 4/4
  R1 |
  R1^\fermataMarkup |
  \normal \clef "treble"
  f,1^\ppp ~ |
  \time 6/4
  f4 r4 r2 r2
  \time 4/4
  R1*7 |
  r4 a2.^\mp |
  a1 |
  a1^\< ( ~ |
  a4 b2. ~ |
  b4 cis4 ~ cis ) r4\roundFFdynamic |
  %{
    \time 3/4
    bes,16.^\f bes32 bes bes bes bes    bes bes bes bes bes8 ~    bes8 ~ bes32 bes bes bes |
    \time 4/4
    bes4 ~    bes8 bes32 bes bes bes    ~ bes4 ~   bes32 bes bes bes bes bes bes bes |
  %}
  bes8^\f  bes8 ~ bes8 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32 ~bes4...  bes32  bes32  bes32  bes32  bes32 ~ bes8
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
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  \transpose c bes, \relative c' {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
  \transpose c d \relative c' {
  bes c ees f g bes c ges f ees } |
}

sopranoWordsC = \lyricmode {
  shhh
  Al -- lez
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Schloß!
  shhh
  A -- ra -- ça a pra -- ia.
  Que -- ri -- do te a -- mo.
  Es -- ca -- pa co -- mi -- go. Sim
  Sil -- ly "ra -"
  Sil -- ly "ra -"
  Al -- lez.
  Schloß!
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  A -- ra -- ça a pra
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
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
  No! No! No! No! No! No! No! No! No! No!
  Tem cui -- da -- do pe -- ri -- go
  E um
  Ca -- li -- for -- nia
  C A L I F O R N I
  Save me.
  Save me.
  Save me from Merck.
  Al -- lez
  J -- sho
  J -- sho
  J -- sho
  J -- sho
  \markup { \center-column { 言 yán }} \markup { \center-column { 者 zhě }} \markup { \center-column { 不 bù }} \markup { \center-column { 如 zhī }} \markup { \center-column { 知 zhī }} \markup { \center-column { 者 zhě }} \markup { \center-column { 默 mò }}
  \markup { \center-column { 此 cĭ }} \markup { \center-column { 語 yŭ }} \markup { \center-column { 吾 wú }} \markup { \center-column { 聞 wén }} \markup { \center-column { 于 yú }} \markup { \center-column { 老 lăo }} \markup { \center-column { 君 jūn }}
  Cre -- do in u -- num De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi --
  oooooo " "
  Schloß!
  Sil -- ly "ra -"
  li -- um. Et in u -- num Do -- mi -- num IE -- SUM CHRIS -- TUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum. Et ex Pa -- tre
  J -- sho J -- sho's on the riz -- zo.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead. part of me
  \repeat unfold 10 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

sopranoD = \relative c' {
  \time 6/16
  \partial 16
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
  R2. |
  \time 3/8
  \saNormal
  R4. |
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
  R4 |
  \time 3/8
  R4. |
  \time 4/8
  R2 |
  \time 4/4
  \normal
  \clef "treble"
  %\footnote "" #'(0 . 0) #'Rest \noisemakerENGLISH
  e'4 ~ e2 ~ e8 \cricket r8
  \time 6/16
  \cricket
  c,4.^\mp ~ c4. ~ c4.  |
  \time 3/4
  R2. |
  \time 3/8
  R4.
  \time 3/4
  R2. |
  \time 3/8
  R4. |
  \time 3/4
  R2. |
  \time 3/8
  R4. |
  \time 4/4
  R1 |
  R1 |
  R1 |
  R1 |
  \stemNeutral
  \saNormal
  r4 fis4^\mp r8 fis r4 |
  r4 fis4 r8 fis a g |
  r4 fis4 r8 fis r4 |
  r4 fis4 r8 fis a g |
  r4 e4 r8 e r4 |
  r4 ees4 r8 d d d |
  \time 3/8
  r4 fis8 |
  \time 6/16
  R4.*5 |
  \time 2/4
  \normal \clef "treble"
  a8^\f a a r |
  a8 a a r |
  \cricket
  \clef percussion
  c,32 c8.. ~ c4 |
  \normal \clef "treble"
  \time 4/4
  c'2.. ~ \times 2/3 { c8 r16 }
  \time 6/16
  R4. |
  \time 3/4
  R2. |
  \time 3/8
  \saNormal
  R4. |
  \time 3/4
  R2. |
  \time 2/4
  \cricket \berioGoalposts
  \stemNeutral
  \times 2/3 { %{\footnote "" #'(0 . 0) #'NoteHead \triangleTremoloENGLISH  %} c16^\mf c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
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
  R2. |
  \time 3/8
  r8. c16 c c |
  \time 3/4
  \slash c2.^\markup { \italic \column { "rub hands" "loudly" }} |
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
  
  c'4^\f ~ c16 r16 |
  \time 5/16
  \cricket |
  c,8. ~ c8 |
  \time 3/8
  \normal \clef "treble" \stemNeutral
  a'8^\f a a |
  \time 4/4
  R1*9 |
  \time 3/4
  R2. |
  \time 5/8
  R8*5 |
  \time 4/4
  g'4-_^\ff g4-_ g4-_ g4-_ |
  g4-_ g4-_ g4-_ g4-_ |
  \time 2/4
  g4-_ g8 r |
  \time 4/4
  R1 |
  R1 |
  r4 a,^\mp r8 aes r8 g |
  r4 g r8 fis g gis |
  r4 a4 r8 g r4 |
  \time 6/16
  R4.*10
  \time 9/16
  R1*9/16
  \time 2/2
  \normal \clef "treble"
  r8 c16^\mp^\< c c8 b r8 bes16 bes bes8 a |
  g f e d c4-.^\f r4 |
  c'4.^\mp \glissando a8 ~ a4. r8 |
  c4. \glissando a8 ~ a4. r8 |
  c4. \glissando a8 ~ a4 gis \glissando |
  a4-. r2 |
  \time 2/4
  \cricket \clef percussion c,32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "treble"
  \times 2/3 { fis4^\mf  dis r } r |
  \time 5/4
  fis4 r8 dis^\rubbingENGLISH ~ dis4 r2 |
  \time 3/4
  fis2. |
  \time 6/4
  r8^\punctuateENGLISH dis4. ~ dis2 r2 |
  \time 7/4
  fis2. ~ fis2 r2 |
  \time 5/4
  dis2. ~ dis2 |
  R1*5/4
  \time 3/4
  R2.
  \time 2/2
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  \normal \clef "treble"
  e'8 g e d e d d4 |
  b8 d b a b a a4 |
  %{
    \time 4/4
    bes8     bes32 bes bes bes       bes4 ~   bes32 bes bes16 bes32 bes bes16 ~       bes32 bes bes bes bes bes bes bes |
    bes bes bes bes bes bes bes16 ~    bes4 ~    bes32 bes bes bes ~ bes8 ~ bes32 bes bes bes32 ~ bes8 ~ |
    \time 3/4
    bes32 bes bes8. ~      bes32 bes bes bes bes bes16. ~        bes16 bes32 bes bes bes bes bes
    \time 2/4
    bes16 bes32 bes bes bes16.  ~ bes8. bes32 bes |
  %}
  bes4.^\f  bes32  bes16. ~bes4.  bes32  bes16. ~bes8 ~ bes32 bes32  bes32  bes32 ~ bes8 ~ bes16. bes32  bes32  bes32  bes32  bes32 ~ bes8 ~ bes8 ~ bes16. bes32  bes32  bes16. ~ bes8 ~ bes4 bes32  bes16. ~ bes8 ~ bes8 ~ bes32 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32
  \cricket \clef percussion \berioGoalposts
  c,1^\mp^\slowglissENGLISH \glissando  s4 |
  \time 3/4
  s2. |
  \time 7/8
  s1*7/8 |
  \time 3/4
  s2. |
  \time 9/8
  s1 c'8 |
  \time 4/4
  R1 |
  R1^\fermataMarkup |
  \normal \clef "treble"
  f,1^\ppp ~ |
  \time 6/4
  f4 r4 r2 r2
  \time 4/4
  R1*7 |
  r4 a2.^\mp |
  a1 |
  a1^\< ( ~ |
  a1 ~ |
  a2 b4 ) r4\roundFFdynamic |
  %{
    \time 3/4
    bes,16.^\f bes32 bes bes bes bes    bes bes bes bes bes8 ~    bes8 ~ bes32 bes bes bes |
    \time 4/4
    bes4 ~    bes8 bes32 bes bes bes    ~ bes4 ~   bes32 bes bes bes bes bes bes bes |
  %}
  bes32^\f  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16 ~ bes8~bes16  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16 ~ bes8 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32 ~ bes8
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
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  \transpose c bes, \relative c' {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
  \transpose c d \relative c' {
  bes c ees f g bes c ges f ees } |
}

sopranoWordsD = \lyricmode {
  shhh
  Al -- lez
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Schloß!
  shhh
  A -- ra -- ça a pra -- ia.
  Que -- ri -- do te a -- mo.
  Es -- ca -- pa co -- mi -- go. Sim
  Sil -- ly "ra -"
  Sil -- ly "ra -"
  Al -- lez.
  Schloß!
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  A -- ra -- ça a pra
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
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
  No! No! No! No! No! No! No! No! No! No!
  Tem cui -- da -- do pe -- ri -- go
  E um
  Ca -- li -- for -- nia
  C A L I F O R N I
  Save me.
  Save me.
  Save me from Merck.
  Al -- lez
  J -- sho
  J -- sho
  J -- sho
  J -- sho
  \markup { \center-column { 言 yán }} \markup { \center-column { 者 zhě }} \markup { \center-column { 不 bù }} \markup { \center-column { 如 zhī }} \markup { \center-column { 知 zhī }} \markup { \center-column { 者 zhě }} \markup { \center-column { 默 mò }}
  \markup { \center-column { 此 cĭ }} \markup { \center-column { 語 yŭ }} \markup { \center-column { 吾 wú }} \markup { \center-column { 聞 wén }} \markup { \center-column { 于 yú }} \markup { \center-column { 老 lăo }} \markup { \center-column { 君 jūn }}
  Cre -- do in u -- num De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om -- ni --
  oooooo " "
  Schloß!
  Sil -- ly "ra -"
  um et in -- vi -- si -- bi -- li -- um. Et in u -- num Do -- mi -- num IE -- SUM CHRIS -- TUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum. Et ex Pa -- tre na -- tum an -- te om -- ni -- a
  J -- sho J -- sho's on the riz -- zo.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead. part of me
  \repeat unfold 10 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

