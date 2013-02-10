\include "defsHelsinki.ly"

tenorA = \relative c' {
  \time 6/16
  \partial 16
  \cricket
  \clef percussion
  \stemUp
  r16 |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  \time 2/4
  c32^\f c8.. ~ c4 |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\mp^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> r8\! |
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
    } \relative c' { \clef percussion \cricket \override NoteHead #'style = #'cross \stemUp \footnote "" #'(0 . 0) #'NoteHead \rhythmTuttiENGLISH  c16^\f^\beatingENGLISH^"*" [ c c] \repeat unfold 9 { c16[ c c] } }
  >>
  \time 2/8
  R4 |
  \time 3/8
  R4. |
  \time 4/8
  R2 |
  \time 4/4
  \normal
  \clef "treble_8"
  c4 ~ c2 ~ c8 r8 |
  \time 6/16
  R4. | R4. | R4. |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> \cross c8:32\!^\markup { \italic \column { "aspiration rapide, pensez à" "Hanibal Lector, Le silence des agneaux" } } |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> \cross c8:32\! |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e16 c^\f ~ |
  \time 3/8
  \stemUp
  c4. ~ |
  \time 4/4
  \cricket
  c8 c4.^\f^\vacuumENGLISH ~ c2 ~ | c1 ~ | c1 ~ | c1 |
  \tNormal
  g4 \cricket \cross c8^\mouthclickENGLISH \tNormal g d4 \cricket \cross c'8 \tNormal g ~ |
  g g \cricket \cross c8 \tNormal g d \cricket \cross c'8 \tNormal d, e ~ |
  e e \cricket \cross c'8 \tNormal e, b4 \cricket \cross c'8 \tNormal e, ~ |
  e e \cricket \cross c'8 \tNormal e, b \cricket \cross c'8 \tNormal b, c ~ |
  c c \cricket \cross c'8 \tNormal c, g'8 \cricket \cross c8 \tNormal c, d ~ |
  d d \cricket \cross c'8 \tNormal d, a' d, \cricket \cross c'8 \tNormal g ~ |
  \time 3/8
  g g \cricket \cross c16 r16 |
  \time 6/16
  R4. |
  r4 r16 c^\mp |
  c c c c c r16 |
  r4 r16 c |
  c c c c c r |
  \time 2/4
  \normal
  \normal \clef "treble_8"
  a8^\f a a r |
  a8 a a r |
  \cricket \clef percussion
  c32 c8.. ~ c8. \times 2/3 { c32 c c } |
  \normal \clef "treble_8"
  \time 4/4
  c2. e8 ~ \times 2/3 { e8 \cricket \clef percussion c16^\mp }
  \time 6/16
  c16^\ptutti c c c c r |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\mp^\< b8 d e |
  \time 3/8
  \cricket
  \stemUp
  c4\> r8\! |
  \time 3/4
  \cross c8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c:32 |
  \time 2/4
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16^\mf c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  \stemUp \cricket
  \cross c,8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c:32 |
  \time 5/8
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 5/4
  \stemUp \cricket
  \cross c,8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c:32 \cross c:32 \cross c:32 \cross c8:32 |
  \time 5/8
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  \times 2/3 { c c c } \stemUp \cricket \cross c,8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c16 |
  \tNormal
  \stemNeutral
  g4 \cricket \cross c8^\mouthclickENGLISH \tNormal g d4 \cricket \cross c'8 \tNormal g ~ |
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
    } \relative c' { \clef percussion \cricket \override NoteHead #'style = #'cross \stemUp c16^\f^\beatingENGLISH [ c c] \repeat unfold 9 { c[ c c] }}
  >>
  \time 3/4
  \stemNeutral
  a4.^\mp^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> r8\! |
  \time 3/4
  \slash c2.^\rubENGLISH |
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
  \clef "treble_8" \tNormal
  e4^\f ~ e16 \cricket \clef percussion \stemUp \cricket c^\mp |
  \time 5/16
  c^\ptutti c c c c |
  \time 3/8
  \normal \clef "treble_8"
  \stemNeutral
  a8^\f a a |
  \time 4/4
  \cricket \clef percussion
  \revert Voice . Stem #'flag-style
  R1 | R1 |
  R1 |
  R1 |
  R1 |
  R1 | R1 | R1 | R1 |
  \time 3/4
  R2. |
  \time 5/8
  R1*5/8 |
  << {
  \time 4/4
  \normal \clef "treble_8"
  g4^_^\ff g4^_ g4^_ g4^_ |
  g4^_ g4^_ g4^_ g4^_ | }
  \new Staff \with {
      \remove "Time_signature_engraver"
      alignAboveContext = #"sopstaff"
      fontSize = #-3
      firstClef = ##f
      \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 3)
       (minimum-distance . 3)
       (padding . 2))
    } \relative c' { \clef percussion \cricket \override NoteHead #'style = #'cross \stemUp \times 4/6 { c16^\f^\markup { \italic "beaten on chest" }[ c c c c c] } \repeat unfold 7 \times 4/6 { c16[ c c c c c] } }
  >>
  \time 2/4
  g4^_ g8 \cricket \clef percussion \berioGoalposts b^\f |
  \time 4/4
  d c e d r8 f ~ f8. \times 2/3 { c32 c c } |
  \stemNeutral
  a4. b8 d e \stemUp c4 |
  \tNormal
  a4 \cricket \cross c8^\mouthclickENGLISH \tNormal a e e \cricket \cross c'8 \tNormal a ~ |
  a a \cricket \cross c8 \tNormal a e \cricket \cross c'8 \tNormal e, b' ~ |
  b a \cricket \cross c8 \tNormal a e4 \cricket \cross c'8 \tNormal e,16 \stemUp \cricket c'16^\mp |
  \time 6/16
  c c c c c c
  c c c c c c
  c c c c c c
  c4. ~^\richENGLISH
  c4.^\< ~
  c4. ~
  c4.\> ~
  c4. ~
  c4.\< ~
  c4. ~
  \time 9/16
  c16\f   c8*4/5^\mf c8*4/5 c8*4/5 c8*4/5 c8*4/5 |
  \time 2/2
  \normal \clef "treble_8"
  e4.^\mp^\< ees8 d4. des8 |
  c8 c c c c^\f r4. |
  gis4^\mp^\<^\spoonsENGLISH a8 f8\> ~ f8 c^\mp f c |
  gis'4^\sim a8 f8 ~ f8 c f c |
  gis'4 a8 f8 ~ f4 c \glissando |
  f4 \cricket \cross c'^\mouthclickENGLISH \cross c
  \time 2/4
  c32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "treble_8"
  \times 2/3 { fis,4^\mf  dis r } r |
  \time 5/4
  fis4 r8 dis ~ dis4^\rubbingENGLISH r2 |
  \time 3/4
  fis2. |
  \time 6/4
  r8^\punctuateENGLISH  dis4. ~ dis2 \cricket \clef percussion \times 2/3 { r8 c' c } r4 |
  \time 7/4
  \normal \clef "treble_8"
  fis,2. ~ fis2 r2 |
  \time 5/4
  dis2. ~ dis2 |
  \cricket \clef percussion
  c'2.^\vacuumENGLISH ~ c2 ~ |
  \time 3/4
  c2. |
  \time 2/2
  \footnote "" #'(0 . 0) #'Rest \pekingENGLISH
  r2. c4^"†" ~ |
  c2 r2 |
  R1 |
  R1 |
  r4 e2 r4 |
  r4 c r2 |
  R1 |
  R1 |
  r4 d2 r4 |
  r2 r4. c8 |
  \time 4/4
  \normal \clef "treble_8"
  %{
    bes4^\f ~   bes16. bes32 bes bes bes bes ~   bes8.. bes32    bes4 ~ |
    bes8 bes32 bes32 bes32 bes32   bes8 bes32 bes32 bes16 ~ bes16. bes32 bes4. ~ |
    \time 3/4
    bes8 bes32 bes bes16 ~    bes8. bes32 bes     bes bes bes bes bes8   ~ |
    \time 2/4
    bes8 bes32 bes bes bes   bes16. bes32 bes16 bes32 bes |
  %}
  bes32^\f  bes16. ~ bes8 ~ bes8 ~ bes16. bes32  bes32  bes32  bes16 ~ bes8 ~ bes16 bes16 ~ bes16 bes32  bes32 ~bes4 ~ bes16. bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32 ~ bes4~bes16.  bes32  bes32  bes32  bes32  bes32 ~ bes4~bes8 ~ bes16. bes32 ~ bes8 ~ bes16. bes32  bes8 ~ bes32 bes32  bes32  bes32 
  \cricket \clef percussion \berioGoalposts
  R1*5/4
  \time 3/4
  \stemNeutral
  a4.^\mp^\< b8 d e |
  \time 7/8
  \stemUp
  c4\> r8\! r4 r4 |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e |
  \time 9/8
  \stemUp
  c4\> r8\! r4 r4 r8 a8 |
  \time 4/4
  R1 |
  R1^\fermataMarkup |
  \tNormal
  a1^\ppp ~ |
  \time 6/4
  a4 \air \clef percussion \ctip \stemTrans \sustainG c4*4\>^\bravoENGLISH \glissando \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \time 4/4
  R1 | R1 | R1 | R1 | R1 | R1 | R1 |
  \normal \clef "treble_8"
  r4 a2.^\mp |
  a1 |
  cis1^\< ( ~ |
  cis2 a |
  e2 a4 ) a\ff ~ |
  \time 3/4
  a16 bes32^\f  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16 ~ bes16 bes32  bes32 ~bes4  bes32  bes32  bes32  bes32  bes32  bes16. ~bes16  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16. ~ bes8~bes16  bes32  bes32  bes32  bes32  bes32  bes32 
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
    } \relative c' { \clef percussion \cricket \override NoteHead #'style = #'cross \stemUp c16^\f^\beatingENGLISH \repeat unfold 23 c16 }
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
  \transpose c bes, \relative c' {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
}

tenorWordsA = \lyricmode {
  Al -- lez
  I'm a lit -- tle girl.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Schloß!
  I'm a lit -- tle girl. \skip 1
  I'm a lit -- tle girl. \skip 1
  I'm a lit -- tle girl.
  Zzzhhh
  A \skip 1 pra -- ia. \skip 1
  Va -- mos. \skip 1 Fu -- ga \skip 1 con -- mi -- go.
  \skip 1 A -- mor.  \skip 1 Va -- mos. \skip 1 Ô sim \skip 1
  É tar -- de. \skip 1 Fu -- ga \skip 1 con mi -- go \skip 1 e pa -- ra \skip 1 sem -- pre. \skip 1
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
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  \repeat unfold 4 \skip 1
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  \repeat unfold 7 \skip 1
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  \repeat unfold 4 \skip 1
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
  Zzzhhh
  \markup { \center-column { 來 lái } } \markup { \center-column { 幾 jĭ }} \markup { \center-column { 時 shí }}
  \markup { \center-column { 無 wú }} \markup { \center-column { 處 chù}}
  Cre -- do in u -- num De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om -- ni -- um et in -- vi --
  I'm a lit -- tle girl.
  I'm a lit -- tle girl.
  I'm
  Schloß! " "
  Sil -- ly rab -- bit.
  si -- bi -- li -- um. Et in u -- num Do -- mi -- num IE -- SUM CHRIS -- TUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum. Et ex Pa -- tre na -- tum
  sho
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  \repeat unfold 5 { Ev' -- ry -- bo -- dy wants to be part of me. }
  \repeat unfold 2 { Ev' -- ry -- bo -- dy wants to part of me me. }
  \repeat unfold 3 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

tenorB = \relative c' {
  \time 6/16
  \partial 16
  \cricket
  \clef percussion
  \stemUp
  r16 |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  \time 2/4
  c32^\f c8.. ~ c8. \times 2/3 { c32^\ff c c } |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\mp^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> r8\! |
  \cricket
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
  c8. |
  \time 2/8
  R4 |
  \time 3/8
  R4. |
  \time 4/8
  R2 |
  \time 4/4
  \normal
  \clef "treble_8"
  c4 ~ c2 ~ c8 r8 |
  \time 6/16
  R4. | R4. | R4. |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> \cross c8:32\!^\markup { \italic \column { "aspiration rapide, pensez à" "Hanibal Lector, Le silence des agneaux" } } |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> \cross c8:32\! |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e16 c^\f ~ |
  \time 3/8
  \stemUp
  c4. ~ |
  \time 4/4
  \cricket
  c8 c4.^\f^\vacuumENGLISH ~ c2 ~ | c1 ~ | c1 ~ | c1 |
  \tNormal
  g4 \cricket \cross c8^\mouthclickENGLISH \tNormal g d4 \cricket \cross c'8 \tNormal g ~ |
  g g \cricket \cross c8 \tNormal g d \cricket \cross c'8 \tNormal d, e ~ |
  e e \cricket \cross c'8 \tNormal e, b4 \cricket \cross c'8 \tNormal e, ~ |
  e e \cricket \cross c'8 \tNormal e, b \cricket \cross c'8 \tNormal b, c ~ |
  c c \cricket \cross c'8 \tNormal c, g'8 \cricket \cross c8 \tNormal c, d ~ |
  d d \cricket \cross c'8 \tNormal d, a' d, \cricket \cross c'8 \tNormal g ~ |
  \time 3/8
  g g \cricket \cross c16 r16 |
  \time 6/16
  R4. |
  r4 r16 c^\mp |
  c c c c c r16 |
  r4 r16 c |
  c c c c c r |
  \time 2/4
  \normal
  \normal \clef "treble_8"
  a8^\f a a r |
  a8 a a r |
  \cricket \clef percussion
  c32 c8.. ~ c8. \times 2/3 { c32 c c } |
  \normal \clef "treble_8"
  \time 4/4
  c2. e8 ~ \times 2/3 { e8 \cricket \clef percussion c16^\mp }
  \time 6/16
  c16^\ptutti c c c c r |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\mp^\< b8 d e |
  \time 3/8
  \cricket
  \stemUp
  c4\> r8\! |
  \time 3/4
  \cross c8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c:32 |
  \time 2/4
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16^\mf c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  \stemUp \cricket
  \cross c,8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c:32 |
  \time 5/8
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 5/4
  \stemUp \cricket
  \cross c,8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c:32 \cross c:32 \cross c:32 \cross c8:32 |
  \time 5/8
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  \times 2/3 { c c c } \stemUp \cricket \cross c,8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c16 |
  \tNormal
  \stemNeutral
  g4 \cricket \cross c8^\mouthclickENGLISH \tNormal g d4 \cricket \cross c'8 \tNormal g ~ |
  g g \cricket \cross c8 \tNormal g d \cricket \cross c'8 \tNormal d, |
  R1*7/8
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
  \time 3/4
  \stemNeutral
  a4.^\mp^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> r8\! |
  \time 3/4
  \slash c2.^\rubENGLISH |
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
  \clef "treble_8" \tNormal
  e4^\f ~ e16 \cricket \clef percussion \stemUp \cricket c^\mp |
  \time 5/16
  c^\ptutti c c c c |
  \time 3/8
  \normal \clef "treble_8"
  \stemNeutral
  a8^\f a a |
  \time 4/4
  \cricket \clef percussion
  \revert Voice . Stem #'flag-style
  R1 | R1 |
  R1 |
  R1 |
  R1 |
  R1 | R1 | R1 | R1 |
  \time 3/4
  R2. |
  \time 5/8
  R1*5/8 |
  \time 4/4
  \normal \clef "treble_8"
  g4^_^\ff g4^_ g4^_ g4^_ |
  g4^_ g4^_ g4^_ g4^_ |
  \time 2/4
  g4^_ g8 \cricket \clef percussion \berioGoalposts b^\f |
  \time 4/4
  d c e d r8 f ~ f8. \times 2/3 { c32 c c } |
  \stemNeutral
  a4. b8 d e \stemUp c4 |
  \tNormal
  a4 \cricket \cross c8^\mouthclickENGLISH \tNormal a e e \cricket \cross c'8 \tNormal a ~ |
  a a \cricket \cross c8 \tNormal a e \cricket \cross c'8 \tNormal e, b' ~ |
  b a \cricket \cross c8 \tNormal a e4 \cricket \cross c'8 \tNormal e,16 \stemUp \cricket r16 |
  \time 6/16
  r4 r16 c'^\mp
  c c c c c c
  c c c c c c
  c4. ~^\richENGLISH
  c4.^\< ~
  c4. ~
  c4.\> ~
  c4. ~
  c4.\< ~
  c4. ~
  \time 9/16
  c16\f   c8*4/5^\mf c8*4/5 c8*4/5 c8*4/5 c8*4/5 |
  \time 2/2
  \normal \clef "treble_8"
  e4.^\mp^\< ees8 d4. des8 |
  c8 c c c c^\f r4. |
  gis4^\mp^\<^\spoonsENGLISH a8 f8\> ~ f8 c^\mp f c |
  gis'4^\sim a8 f8 ~ f8 c f c |
  gis'4 a8 f8 ~ f4 c \glissando |
  f4 \cricket \cross c'^\mouthclickENGLISH \cross c
  \time 2/4
  c32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "treble_8"
  \times 2/3 { fis,4^\mf  dis r } r |
  \time 5/4
  fis4 r8 dis ~ dis4^\rubbingENGLISH r2 |
  \time 3/4
  fis2. |
  \time 6/4
  r8^\punctuateENGLISH  dis4. ~ dis2 \cricket \clef percussion \times 2/3 { r8 c' c } r4 |
  \time 7/4
  \normal \clef "treble_8"
  fis,2. ~ fis2 r2 |
  \time 5/4
  dis2. ~ dis2 |
  \cricket \clef percussion
  c'2.^\vacuumENGLISH ~ c2 ~ |
  \time 3/4
  c2. ~ |
  \time 2/2
  c1^\vacuumoffENGLISH |
  r2^"†" r4 e4 ~ |
  e2 r2 |
  r2 r8 f4. |
  R1 |
  r2 r4 e ~ |
  e2 r2 |
  c4 r r2 |
  R1 |
  R1 |
  \time 4/4
  \normal \clef "treble_8"
  %{
    bes4^\f ~   bes16. bes32 bes bes bes bes ~   bes8.. bes32    bes4 ~ |
    bes8 bes32 bes32 bes32 bes32   bes8 bes32 bes32 bes16 ~ bes16. bes32 bes4. ~ |
    \time 3/4
    bes8 bes32 bes bes16 ~    bes8. bes32 bes     bes bes bes bes bes8   ~ |
    \time 2/4
    bes8 bes32 bes bes bes   bes16. bes32 bes16 bes32 bes |
  %}
  bes32^\f  bes16. ~ bes32 bes16. ~ bes16. bes32  bes32  bes16. ~bes4.  bes32  bes32  bes32  bes32 ~bes4 ~ bes16 bes32  bes32 ~ bes8~bes4 ~ bes32 bes32  bes32  bes32  bes32  bes32  bes16 ~bes4.  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes8 
  \cricket \clef percussion \berioGoalposts
  R1*5/4
  \time 3/4
  \stemNeutral
  a4.^\mp^\< b8 d e |
  \time 7/8
  \stemUp
  c4\> r8\! r4 r4 |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e |
  \time 9/8
  \stemUp
  c4\> r8\! r4 r4 r8 a8 |
  \time 4/4
  R1 |
  R1^\fermataMarkup |
  \tNormal
  a1^\ppp ~ |
  \time 6/4
  a4 \air \clef percussion \ctip \stemTrans \sustainG c4*4\>^\bravoENGLISH \glissando \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \time 4/4
  R1 | R1 | R1 | R1 | R1 | R1 | R1 |
  \normal \clef "treble_8"
  r4 a2.^\mp |
  a1 |
  cis2.^\< ( a4 |
  a8 cis4. ~ cis8 a4. ~ |
  a4 cis ~ cis ) a\ff ~ |
  \time 3/4
  a16 bes32^\f  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32 ~bes4..  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes4 
  r2 ees,4. r8 |
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
  \tNormal
  \time 10/8
  bes8^\f c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes \cricket c, c c \tNormal ees |
  bes c ees f g bes \cricket c, c c \tNormal ees |
  bes c ees f g bes c ges f ees |
  \transpose c bes, \relative c' {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
}

tenorWordsB = \lyricmode {
  Al -- lez chi qui ta
  I'm a lit -- tle girl.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Schloß!
  I'm a lit -- tle girl. \skip 1
  I'm a lit -- tle girl. \skip 1
  I'm a lit -- tle girl.
  Zzzhhh
  A \skip 1 pra -- ia. \skip 1
  Va -- mos. \skip 1 Fu -- ga \skip 1 con -- mi -- go.
  \skip 1 A -- mor.  \skip 1 Va -- mos. \skip 1 Ô sim \skip 1
  É tar -- de. \skip 1 Fu -- ga \skip 1 con mi -- go \skip 1 e pa -- ra \skip 1 sem -- pre. \skip 1
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
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  \repeat unfold 4 \skip 1
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  \repeat unfold 7 \skip 1
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  \repeat unfold 4 \skip 1
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
  No! No! No! No! No! No! No! No! No! No!
  pre -- ten -- tious right -- eous fuck! chi qui ta
  I'm a lit -- tle girl.
  E \skip 1 es -- cu -- ro \skip 1
  Nem dá \skip 1 na -- da \skip 1
  Sen -- ho -- ra \skip 1
  A -- mor \skip 1 E
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
  Zzzhhh
  \markup { \center-column { 如 rú }} \markup { \center-column { 夢 mèng }}
  \markup { \center-column { 去 qù }} \markup { \center-column { 朝 zhāo }}
  Cre -- do in u -- num De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi -- li -- um. Et in u -- num Do -- mi --
  I'm a lit -- tle girl.
  I'm a lit -- tle girl.
  I'm
  Schloß! " "
  Sil -- ly rab -- bit.
  num IE -- SUM CHRIS -- TUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum. Et ex Pa -- tre na -- tum an -- te om -- ni -- a sæ -- cu -- la. De -- um de De --
  sho
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  \repeat unfold 5 { Ev' -- ry -- bo -- dy wants to be part of me. }
  \repeat unfold 2 { Ev' -- ry -- bo -- dy wants to part of me me. }
  \repeat unfold 3 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

tenorC = \relative c' {
  \time 6/16
  \partial 16
  \cricket
  \clef percussion
  \stemUp
  c16^\mf |
  c c c c c c |
  c c c c c c |
  c c c c c c |
  c c c c c c |
  c c c c c r |
  \time 2/4
  c32^\f c8.. ~ c4 |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\mp^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> r8\! |
  \cricket
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
  c8. |
  \time 2/8
  R4 |
  \time 3/8
  R4. |
  \time 4/8
  R2 |
  \time 4/4
  \normal
  \clef "treble_8"
  c4 ~ c2 ~ c8 r8 |
  \time 6/16
  R4. | R4. | R4. |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> \cross c8:32\!^\markup { \italic \column { "aspiration rapide, pensez à" "Hanibal Lector, Le silence des agneaux" } } |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> \cross c8:32\! |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e16 c^\f ~ |
  \time 3/8
  \stemUp
  c4. ~ |
  \time 4/4
  \cricket
  c8 c4.^\f^\vacuumENGLISH ~ c2 ~ | c1 ~ | c1 ~ | c1 |
  \tNormal
  g4 \cricket \cross c8^\mouthclickENGLISH \tNormal g d4 \cricket \cross c'8 \tNormal g ~ |
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
  c32 c8.. ~ c8. \times 2/3 { c32 c c } |
  \normal \clef "treble_8"
  \time 4/4
  c2. e8 ~ \times 2/3 { e8 \cricket \clef percussion c16^\mp }
  \time 6/16
  c16^\ptutti c c c c r |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\mp^\< b8 d e |
  \time 3/8
  \cricket
  \stemUp
  c4\> r8\! |
  \time 3/4
  \cross c8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c:32 |
  \time 2/4
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16^\mf c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  \stemUp \cricket
  \cross c,8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c:32 |
  \time 5/8
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 5/4
  \stemUp \cricket
  \cross c,8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c:32 \cross c:32 \cross c:32 \cross c8:32 |
  \time 5/8
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  \times 2/3 { c c c } \stemUp \cricket \cross c,8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c16 |
  \tNormal
  \stemNeutral
  g4 \cricket \cross c8^\mouthclickENGLISH \tNormal g d4 \cricket \cross c'8 \tNormal g ~ |
  g g \cricket \cross c8 \tNormal g d \cricket \cross c'8 \tNormal d, |
  R1*7/8
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
  \time 3/4
  \stemNeutral
  a4.^\mp^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> r8\! |
  \time 3/4
  \slash c2.^\rubENGLISH |
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
  \clef "treble_8" \tNormal
  e4^\f ~ e16 \cricket \clef percussion \stemUp \cricket c^\mp |
  \time 5/16
  c^\ptutti c c c c |
  \time 3/8
  \normal \clef "treble_8"
  \stemNeutral
  a8^\f a a |
  \time 4/4
  \cricket \clef percussion
  \revert Voice . Stem #'flag-style
  R1 | R1 |
  R1 |
  R1 |
  R1 |
  R1 | R1 | R1 | R1 |
  \time 3/4
  R2. |
  \time 5/8
  R1*5/8 |
  \time 4/4
  \normal \clef "treble_8"
  g4^_^\ff g4^_ g4^_ g4^_ |
  g4^_ g4^_ g4^_ g4^_ |
  \time 2/4
  g4^_ g8 \cricket \clef percussion \berioGoalposts b^\f |
  \time 4/4
  d c e d r8 f ~ f8. \times 2/3 { c32 c c } |
  \stemNeutral
  a4. b8 d e \stemUp c4 |
  \tNormal
  a4 \cricket \cross c8^\mouthclickENGLISH \tNormal a e e \cricket \cross c'8 \tNormal a ~ |
  a a \cricket \cross c8 \tNormal a e \cricket \cross c'8 \tNormal e, b' ~ |
  b a \cricket \cross c8 \tNormal a e4 \cricket \cross c'8 \tNormal e,16 \stemUp \cricket r16 |
  \time 6/16
  R4. |
  r4 r16 c'^\mp |
  c c c c c c |
  c4. ~^\richENGLISH
  c4.^\< ~
  c4. ~
  c4.\> ~
  c4. ~
  c4.\< ~
  c4. ~
  \time 9/16
  c16\f   c8*4/5^\mf c8*4/5 c8*4/5 c8*4/5 c8*4/5 |
  \time 2/2
  r4. c8^\f ~ c4. r8 |
  c2 r2 |
  \normal \clef "treble_8"
  gis4^\mp^\<^\spoonsENGLISH a8 f8\> ~ f8 c^\mp f c |
  gis'4^\sim a8 f8 ~ f8 c f c |
  gis'4 a8 f8 ~ f4 c \glissando |
  f4 \cricket \cross c'^\mouthclickENGLISH \cross c
  \time 2/4
  c32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "treble_8"
  \times 2/3 { fis,4^\mf  dis r } r |
  \time 5/4
  fis4 r8 dis ~ dis4^\rubbingENGLISH r2 |
  \time 3/4
  fis2. |
  \time 6/4
  r8^\punctuateENGLISH  dis4. ~ dis2 \cricket \clef percussion \times 2/3 { r8 c' c } r4 |
  \time 7/4
  \normal \clef "treble_8"
  fis,2. ~ fis2 r2 |
  \time 5/4
  dis2. ~ dis2 |
  \cricket \clef percussion
  c'2.^\vacuumENGLISH ~ c2 ~ |
  \time 3/4
  c2. ~ |
  \time 2/2
  c1^\vacuumoffENGLISH ~ |
  c2 r2^"†" |
  R1 |
  d2 ~ d8 r4. |
  r2 r4 e4 |
  R1 |
  r2 r8 d4. |
  r2 d2 |
  R1 |
  r8 b4. ~ b8 r8 r4 |
  \time 4/4
  \normal \clef "treble_8"
  %{
    bes4^\f ~   bes16. bes32 bes bes bes bes ~   bes8.. bes32    bes4 ~ |
    bes8 bes32 bes32 bes32 bes32   bes8 bes32 bes32 bes16 ~ bes16. bes32 bes4. ~ |
    \time 3/4
    bes8 bes32 bes bes16 ~    bes8. bes32 bes     bes bes bes bes bes8   ~ |
    \time 2/4
    bes8 bes32 bes bes bes   bes16. bes32 bes16 bes32 bes |
  %}
  bes32^\f  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16 ~ bes8 ~ bes8 ~ bes32 bes32  bes32  bes32 ~bes8 ~ bes32 bes16. ~ bes16 bes16 ~ bes8~bes32  bes16. ~ bes8 ~ bes16. bes32 ~ bes8~bes4 ~ bes16. bes32  bes32  bes32  bes16 ~bes4 
  \cricket \clef percussion \berioGoalposts
  R1*5/4
  \time 3/4
  \stemNeutral
  a4.^\mp^\< b8 d e |
  \time 7/8
  \stemUp
  c4\> r8\! r4 r4 |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e |
  \time 9/8
  \stemUp
  c4\> r8\! r4 r4 r8 a8 |
  \time 4/4
  R1 |
  R1^\fermataMarkup |
  \tNormal
  a1^\ppp ~ |
  \time 6/4
  a4 \air \clef percussion \ctip \stemTrans \sustainG c4*4\>^\bravoENGLISH \glissando \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \time 4/4
  R1 | R1 | R1 | R1 | R1 | R1 | R1 |
  \normal \clef "treble_8"
  r4 a2.^\mp |
  a1 |
  a1^\< ~ |
  a1 ~ |
  a2. a4\ff ~ |
  \time 3/4
  a16 bes32^\f  bes32  bes32  bes32  bes16 ~ bes8 ~ bes32 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes8 ~bes16  bes32  bes32  bes32  bes16. ~ bes4~bes16.  bes32  bes32  bes16. 
  r2 ees,4. r8 |
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
  \tNormal
  \time 10/8
  bes8^\f c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes \cricket c, c c \tNormal ees |
  bes c ees f g bes \cricket c, c c \tNormal ees |
  bes c ees f g bes c ges f ees |
  \transpose c bes, \relative c' {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
}

tenorWordsC = \lyricmode {
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui -- ta ba -- na -- na
  Al -- lez
  I'm a lit -- tle girl.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Schloß!
  I'm a lit -- tle girl. \skip 1
  I'm a lit -- tle girl. \skip 1
  I'm a lit -- tle girl.
  Zzzhhh
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
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  \repeat unfold 4 \skip 1
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  \repeat unfold 7 \skip 1
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  \repeat unfold 4 \skip 1
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
  No! No! No! No! No! No! No! No! No! No!
  pre -- ten -- tious right -- eous fuck! chi qui ta
  I'm a lit -- tle girl.
  E \skip 1 es -- cu -- ro \skip 1
  Nem dá \skip 1 na -- da \skip 1
  Sen -- ho -- ra \skip 1
  A -- mor \skip 1 E
  Chi -- qui -- ta ba -- na -- na
  Chi -- qui
  et si on di -- sait
  \repeat unfold 2 "fake!"
  Save me please you got to save me please you got to save me please from Merck.
  \repeat unfold 2 \skip 1
  Al -- lez
  J -- sho
  J -- sho
  J -- sho change it
  J -- sho
  Zzzhhh
  \markup { \center-column { 春 chūn }} \markup { \center-column { 多 duō }}
  \markup { \center-column { 似 sì }} \markup { \center-column { 云 yún }} \markup { \center-column { 覓 mì }}
  Cre -- do in u -- num De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi -- li -- um. Et in u -- num Do -- mi -- num IE -- SUM
  I'm a lit -- tle girl.
  I'm a lit -- tle girl.
  I'm
  Schloß! " "
  Sil -- ly rab -- bit.
  CHRIS -- TUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum. Et ex Pa -- tre na -- tum an -- te om -- ni -- a sæ -- cu -- la. De -- um
  sho
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  \repeat unfold 5 { Ev' -- ry -- bo -- dy wants to be part of me. }
  \repeat unfold 2 { Ev' -- ry -- bo -- dy wants to part of me me. }
  \repeat unfold 3 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

tenorD = \relative c' {
  \time 6/16
  \partial 16
  \cricket
  \clef percussion
  \stemUp
  r16 |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  \time 2/4
  c32^\f c8.. ~ c4 |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\mp^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> r8\! |
  \cricket
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
  c8. |
  \time 2/8
  R4 |
  \time 3/8
  R4. |
  \time 4/8
  R2 |
  \time 4/4
  \normal
  \clef "treble_8"
  c4 ~ c2 ~ c8 \cricket \clef percussion \times 2/3 { r8 c16^\mp }
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
  c4\> \cross c8:32\!^\markup { \italic \column { "aspiration rapide, pensez à" "Hanibal Lector, Le silence des agneaux" } } |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> \cross c8:32\! |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e16 c^\f ~ |
  \time 3/8
  \stemUp
  c4. ~ |
  \time 4/4
  \cricket
  c8 c4.^\f^\vacuumENGLISH ~ c2 ~ | c1 ~ | c1 ~ | c1 |
  \tNormal
  g4 \cricket \cross c8^\mouthclickENGLISH \tNormal g d4 \cricket \cross c'8 \tNormal g ~ |
  g g \cricket \cross c8 \tNormal g d \cricket \cross c'8 \tNormal d, e ~ |
  e e \cricket \cross c'8 \tNormal e, b4 \cricket \cross c'8 \tNormal e, ~ |
  e e \cricket \cross c'8 \tNormal e, b \cricket \cross c'8 \tNormal b, c ~ |
  c c \cricket \cross c'8 \tNormal c, g'8 \cricket \cross c8 \tNormal c, d ~ |
  d d \cricket \cross c'8 \tNormal d, a' d, \cricket \cross c'8 \tNormal g ~ |
  \time 3/8
  g g \cricket \cross c16 r16 |
  \time 6/16
  R4. |
  r4 r16 c^\mp |
  c c c c c r16 |
  r4 r16 c |
  c c c c c r |
  \time 2/4
  \normal
  \normal \clef "treble_8"
  a8^\f a a r |
  a8 a a r |
  \cricket \clef percussion
  c32 c8.. ~ c8. \times 2/3 { c32 c c } |
  \normal \clef "treble_8"
  \time 4/4
  c2. e8 ~ \times 2/3 { e8 \cricket \clef percussion c16^\mp }
  \time 6/16
  c16^\ptutti c c c c r |
  \time 3/4
  \stemNeutral
  \berioGoalposts
  a4.^\mp^\< b8 d e |
  \time 3/8
  \cricket
  \stemUp
  c4\> r8\! |
  \time 3/4
  \cross c8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c:32 |
  \time 2/4
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16^\mf c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  \stemUp \cricket
  \cross c,8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c:32 |
  \time 5/8
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 5/4
  \stemUp \cricket
  \cross c,8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c:32 \cross c:32 \cross c:32 \cross c8:32 |
  \time 5/8
  \stemNeutral \berioGoalposts
  \times 2/3 { c'16 c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } \times 2/3 { c c c } |
  \time 3/4
  \times 2/3 { c c c } \stemUp \cricket \cross c,8.:32^\mf^\gongENGLISH \cross c:32 \cross c:32 \cross c16 |
  \tNormal
  \stemNeutral
  g4 \cricket \cross c8^\mouthclickENGLISH \tNormal g d4 \cricket \cross c'8 \tNormal g ~ |
  g g \cricket \cross c8 \tNormal g d \cricket \cross c'8 \tNormal d, |
  R1*7/8
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
  \time 3/4
  \stemNeutral
  a4.^\mp^\< b8 d e |
  \time 3/8
  \stemUp
  c4\> r8\! |
  \time 3/4
  \slash c2.^\rubENGLISH |
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
  \clef "treble_8" \tNormal
  e4^\f ~ e16 \cricket \clef percussion \stemUp \cricket c^\mp |
  \time 5/16
  c^\ptutti c c c c |
  \time 3/8
  \normal \clef "treble_8"
  \stemNeutral
  a8^\f a a |
  \time 4/4
  \cricket \clef percussion
  \revert Voice . Stem #'flag-style
  R1 | R1 |
  r2 \cross c4^\gloveENGLISH r4 |
  R1 |
  r4.. \cross c16 r2 |
  R1 | R1 | R1 | R1 |
  \time 3/4
  \times 2/3 { r4 \cross c8^\sfz } r2 |
  \time 5/8
  R1*5/8 |
  \time 4/4
  \normal \clef "treble_8"
  g4^_^\ff g4^_ g4^_ g4^_ |
  g4^_ g4^_ g4^_ g4^_ |
  \time 2/4
  g4^_ g8 \cricket \clef percussion \berioGoalposts b^\f |
  \time 4/4
  d c e d r8 f ~ f8. \times 2/3 { c32 c c } |
  \stemNeutral
  a4. b8 d e \stemUp c4 |
  \tNormal
  a4 \cricket \cross c8^\mouthclickENGLISH \tNormal a e e \cricket \cross c'8 \tNormal a ~ |
  a a \cricket \cross c8 \tNormal a e \cricket \cross c'8 \tNormal e, b' ~ |
  b a \cricket \cross c8 \tNormal a e4 \cricket \cross c'8 \tNormal e,16 \stemUp \cricket r16 |
  \time 6/16
  R4. |
  R4. |
  r4 r16 c'^\mp |
  c4. ~^\richENGLISH
  c4.^\< ~
  c4. ~
  c4.\> ~
  c4. ~
  c4.\< ~
  c4. ~
  \time 9/16
  c16\f   c8*4/5^\mf c8*4/5 c8*4/5 c8*4/5 c8*4/5 |
  \time 2/2
  \normal \clef "treble_8"
  e4.^\mp^\< ees8 d4. des8 |
  c8 c c c c^\f r4. |
  gis4^\mp^\<^\spoonsENGLISH a8 f8\> ~ f8 c^\mp f c |
  gis'4^\sim a8 f8 ~ f8 c f c |
  gis'4 a8 f8 ~ f4 c \glissando |
  f4 \cricket \cross c'^\mouthclickENGLISH \cross c
  \time 2/4
  c32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "treble_8"
  \times 2/3 { fis,4^\mf  dis r } r |
  \time 5/4
  fis4 r8 dis ~ dis4^\rubbingENGLISH r2 |
  \time 3/4
  fis2. |
  \time 6/4
  r8^\punctuateENGLISH  dis4. ~ dis2 \cricket \clef percussion \times 2/3 { r8 c' c } r4 |
  \time 7/4
  \normal \clef "treble_8"
  fis,2. ~ fis2 r2 |
  \time 5/4
  dis2. ~ dis2 |
  \cricket \clef percussion
  c'2.^\vacuumENGLISH ~ c2 ~ |
  \time 3/4
  c2. ~ |
  \time 2/2
  c1^\vacuumoffENGLISH ~ |
  c2. r4 |
  R1*8 |
  \time 4/4
  \normal \clef "treble_8"
  bes8^\f ~ bes16 bes16 ~ bes4~bes16.  bes32  bes32  bes32  bes16 ~ bes4~bes16.  bes32  bes32  bes16. ~ bes4~bes8 ~ bes32 bes32  bes32  bes32  bes32  bes32  bes16 ~ bes8~bes16.  bes32  bes32  bes32  bes16 ~ bes4~bes8 ~ bes16 bes32  bes32  bes32  bes16. ~ bes32 bes32  bes32  bes32  bes8  bes8 
  %{
    bes4^\f ~   bes16. bes32 bes bes bes bes ~   bes8.. bes32    bes4 ~ |
    bes8 bes32 bes32 bes32 bes32   bes8 bes32 bes32 bes16 ~ bes16. bes32 bes4. ~ |
    \time 3/4
    bes8 bes32 bes bes16 ~    bes8. bes32 bes     bes bes bes bes bes8   ~ |
    \time 2/4
    bes8 bes32 bes bes bes   bes16. bes32 bes16 bes32 bes |
  %}
  \cricket \clef percussion \berioGoalposts
  R1*5/4
  \time 3/4
  \stemNeutral
  a4.^\mp^\< b8 d e |
  \time 7/8
  \stemUp
  c4\> r8\! r4 r4 |
  \time 3/4
  \stemNeutral
  a4.^\< b8 d e |
  \time 9/8
  \stemUp
  c4\> r8\! r4 r4 r8 a8 |
  \time 4/4
  R1 |
  R1^\fermataMarkup |
  \tNormal
  a1^\ppp ~ |
  \time 6/4
  a4 \air \clef percussion \ctip \stemTrans \sustainG c4*4\>^\bravoENGLISH \glissando \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \time 4/4
  R1 | R1 | R1 | R1 | R1 | R1 | R1 |
  \normal \clef "treble_8"
  r4 a2.^\mp |
  a1 |
  cis1^\< ( ~ |
  cis2. a4 |
  a4 e4 ~ e4 ) a\ff ~ |
  \time 3/4
  a16 bes32^\f  bes32  bes32  bes32  bes32  bes32  bes4 ~bes16.  bes32 ~ bes8 ~ bes8 ~ bes16 bes32  bes32  bes32  bes16. ~ bes8 ~ bes16. bes32  bes32  bes16. ~bes4 
  r2 ees,4. r8 |
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
  \tNormal
  \time 10/8
  bes8^\f c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes \cricket c, c c \tNormal ees |
  bes c ees f g bes \cricket c, c c \tNormal ees |
  bes c ees f g bes c ges f ees |
  \transpose c bes, \relative c' {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
}

tenorWordsD = \lyricmode {
  Al -- lez
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
  Zzzhhh
  A \skip 1 pra -- ia. \skip 1
  Va -- mos. \skip 1 Fu -- ga \skip 1 con -- mi -- go.
  \skip 1 A -- mor.  \skip 1 Va -- mos. \skip 1 Ô sim \skip 1
  É tar -- de. \skip 1 Fu -- ga \skip 1 con mi -- go \skip 1 e pa -- ra \skip 1 sem -- pre. \skip 1
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
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  \repeat unfold 4 \skip 1
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  \repeat unfold 7 \skip 1
  a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a a -- pu -- a
  \repeat unfold 4 \skip 1
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
  Zzzhhh
  Cre -- do in u -- num De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om --
  I'm a lit -- tle girl.
  I'm a lit -- tle girl.
  I'm
  Schloß! " "
  Sil -- ly rab -- bit.
  ni -- um et in -- vi -- si -- bi -- li -- um. Et in u -- num Do -- mi --
  sho
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  Bang you're dead.
  \repeat unfold 5 { Ev' -- ry -- bo -- dy wants to be part of me. }
  \repeat unfold 2 { Ev' -- ry -- bo -- dy wants to part of me me. }
  \repeat unfold 3 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

