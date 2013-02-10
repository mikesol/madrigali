\include "defsHelsinki.ly"

bassA = \relative c' {
  \time 6/16
  \partial 16
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
  \time 3/8
  c4. |
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
  \time 4/8
  R2 |
  \time 4/4
  \normal
  \clef "bass"
  c,4 ~ c2 ~ c8 \cricket \clef percussion r8 |
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
  c1^\f^\vacuumENGLISH ~ |
  c1 ~ |
  c1 ~ |
  c1 ~ |
  c2. r4^\markup \italic "voice muffled" |
  \FatTextManual #'(-0.2 . 0.2)
  \MonoShift
  \override TextScript #'whiteout = ##t
  s4*4/3-"Attention" s4*4/3-"K-Mart" s4*4/3-"shoppers."
  s4*4/3-"Today's" s4*4/3-"Blue" s4*4/3-"Light"
  s4*4/5-"Special" s4*4/5-"can" s4*4/5-"be" s4*4/5-"found" s4*4/5-"in"
  s4-"asile" s4-"seven." s2
  \once \override Score . TimeSignature #'layer = #6
  %s4-"Asile" s4-"seven" s4-"K-Mart" s4-"shoppers."
  s1-"Asile seven K-Mart shoppers."
  \unFatText
  \unMonoShift
  \time 3/8
  R4. |
  \time 6/16
  R4.
  R4.
  R4.
  R4.
  R4.
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
  R2. |
  \time 2/4
  R2 |
  \time 3/4
  R2. |
  \time 5/8
  R8*5 |
  \time 5/4
  R1*5/4 |
  \time 5/8
  R1*5/8
  \time 3/4
  R2. |
  \time 4/4
  \cricket
  \hideNotes
  \stemUp
  s2.\!^\paENGLISH e'4^\mf
  \time 7/8
  \repeat unfold 3 e1*7/24
  \unHideNotes
  R1*7/8
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
  \time 3/4
  c2.^\markup { \italic \column {"vocal fry" "with hands cupped over mouth"} } ~ |
  \time 3/8
  c4. |
  \time 3/4
  \slash c2.^\rubENGLISH |
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
  c,4^\f ~ c16 r |
  \time 5/16
  \cricket
  c'8. ~ c8 |
  \time 3/8
  \bNormal
  a,8 a a |
  \time 4/4
  \cricket \berioGoalposts
  R1 | R1 | R1 | R1 | R1 | R1 |
  R1 |
  R1 |
  R1 |
  \time 3/4
  R2. |
  \time 5/8
  R8*5 |
  \time 4/4
  \normal \clef bass
  g4^_^\ff g4^_ g4^_ g4^_ |
  g4^_ g4^_ g4^_ g4^_ |
  \time 2/4
  g4^_ g8 \cricket \clef percussion \berioGoalposts r |
  \time 4/4
  r2 r8 f''^\f ~ f4 |
  \stemNeutral
  R1 |
  R1 |\cricket
  \diamond c1^\mf^\mooENGLISH
  R1 |
  \time 6/16
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  \time 9/16
  R4.*3/2 |
  \time 2/2
  \normal \clef bass
  c,8^\mp^\< b c d e dis e f |
  g fis g a bes\f r4. |
  f4-.^\mp f-. f-. f-. |
  f4-. f-. f-. f-. |
  f4-. f-. f-. f-. |
  f4-. f-. f-. |
  \time 2/4
  \cricket \clef percussion c'32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "bass"
  \times 2/3 { fis,4^\mf dis r } r |
  \time 5/4
  fis4 r8 dis^\rubbingENGLISH ~ dis4 r2 |
  \time 3/4
  \cricket r8 c'2:16^\shallowENGLISH r8 |
  \time 6/4
  \normal \clef bass
  r8^\punctuateENGLISH  dis,4. r8 dis4. r2 |
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
  R1 | R1 | R1 |
  R1 |
  R1 |
  R1 |
  R1 | R1 | R1 | R1 |
  \time 4/4
  \normal \clef bass
  %{
    bes16.^\f bes32 bes bes bes bes ~     bes16 bes32 bes ~ bes8 ~    bes8.. bes32     bes bes bes bes bes bes bes16 ~ |
    bes8. bes32 bes    bes bes bes8. ~     bes16 bes32 bes bes bes bes bes   bes bes bes bes bes bes16. ~ |
    \time 3/4
    bes8 bes32 bes bes bes     bes bes bes8. ~    bes4 ~    |
    \time 2/4
    bes32 bes bes bes bes bes16. ~ bes16 bes32 bes32 ~ bes16. bes32
  %}
  bes32^\f  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16. ~bes16  bes32  bes32 ~ bes8 ~ bes4~bes16  bes32  bes32 ~ bes8 ~ bes16. bes32 ~ bes8~bes4 ~ bes32 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16 ~ bes8 ~ bes8 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes8 ~ bes4~bes32  bes32  bes32  bes32  bes8 
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
  c1:^\markup { \italic \column { "rolled \"r\"" "(drumroll)" }}
  R1^\fermataMarkup |
  \normal \clef bass
  f,1^\ppp ~ |
  \time 6/4
  f4 \air \clef percussion \ctip \sustainG c'4*4\>^\bravoENGLISH \glissando \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \time 4/4
  R1 | R1 | R1 | R1 | R1 | R1 | R1 |
  \normal \clef bass
  r4 a,2.^\mp |
  a1 |
  a1^\< ~ |
  a1 ~ |
  a2. r4\roundFFdynamic |
  bes32^\f  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes4 ~ bes16 bes32  bes32  bes8 ~bes8 ~ bes32 bes32  bes32  bes32 ~ bes4~bes16.  bes32  bes32  bes32  bes32  bes32 |
  \bNormal
  r2... ees32 ees |
  \cricket \clef percussion
  \time 3/16
  \stemUp
  c'8 c16 |
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
  \transpose c bes, \relative c {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
}

bassWordsA = \lyricmode {
  shhh
  Al -- lez
  \skip 1
  \repeat unfold 5 { Bang, you're dead. }
  Schloß!
  shhh
  \repeat unfold 3 \skip 1
  Zzzhhh
  Sil -- ly "ra -"
  Sil -- ly "ra -"
  Al -- lez.
  Schloß!
  %Je suis un mon -- stre.
  %Mon -- stre doit man -- ger.
  %Mon -- stre~ne touche pas d'al -- lo -- ca -- ti -- on so -- ci -- ale.
  %Je suis un mon -- stre.
  \override LyricText #'extra-spacing-height = #'(0 . 5)
  \override LyricText #'extra-offset = #'(0 . 5)
  \override LyricText #'whiteout = ##t
  Asile seven K-Mart shoppers.
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
  %Je suis un mon -- stre.
  %Mon -- stre~est chô -- meur en fin de droits.
  %Mon -- stre mange son bé -- bé.
  No! No! No! No! No! No! No! No! No! No!
  fuck!
  mooooooooo
  back back back back back back back back
  back back back back back
  Merck Merck Merck Merck Merck Merck Merck Merck
  Merck Merck Merck Merck Merck Merck Merck
  Al -- lez
  J -- sho
  J -- sho
  " " sho sho
  J -- sho
  Cre -- do in u -- num De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi -- li -- um. Et in u -- num Do --
  se -- ven six five four four four four
  \skip 1
  Schloß! \skip 1
  Sil -- ly "ra -"
  mi -- num IE -- SUM CHRIS -- TUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum. Et ex Pa -- tre na -- tum an -- te om -- ni -- a sæ --
  J -- sho
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  \repeat unfold 10 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

bassB = \relative c' {
  \time 6/16
  \partial 16
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
  \time 3/8
  c4. |
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
  \time 4/8
  R2 |
  \time 4/4
  \normal
  \clef "bass"
  c,4 ~ c2 ~ c8 \cricket \clef percussion r8 |
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
  c1^\f^\vacuumENGLISH ~ |
  c1 ~ |
  c1 ~ |
  c1 ~ |
  c2.  r4 |
  R1*5 |
  \time 3/8
  R4. |
  \time 6/16
  R4.
  R4.
  R4.
  R4.
  R4.
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
  R2. |
  \time 2/4
  R2 |
  \time 3/4
  R2. |
  \time 5/8
  R8*5 |
  \time 5/4
  R1*5/4 |
  \time 5/8
  R1*5/8
  \time 3/4
  R2. |
  \time 4/4
  \cricket
  \stemUp
  R1 |
  \time 7/8
  R1*7/8
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
  c2.^\markup { \italic \column {"vocal fry" "with hands cupped over mouth"} } ~ |
  \time 3/8
  c4. |
  \time 3/4
  \slash c2.^\rubENGLISH |
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
  c,4^\f ~ c16 r |
  \time 5/16
  \cricket
  c'8. ~ c8 |
  \time 3/8
  \bNormal
  a,8 a a |
  \time 4/4
  \cricket \berioGoalposts
  R1 | R1 | R1 | R1 | R1 | R1 |
  R1 |
  R1 |
  R1 |
  \time 3/4
  R2. |
  \time 5/8
  R8*5 |
  \time 4/4
  \normal \clef bass
  g4^_^\ff g4^_ g4^_ g4^_ |
  g4^_ g4^_ g4^_ g4^_ |
  \time 2/4
  g4^_ g8 \cricket \clef percussion \berioGoalposts r |
  \time 4/4
  r2 r8 f''^\f ~ f4 |
  \stemNeutral
  R1 |
  R1 |\cricket
  \diamond c1^\mf^\mooENGLISH
  R1 |
  \time 6/16
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  \time 9/16
  R4.*3/2 |
  \time 2/2
  \normal \clef bass
  c,8^\mp^\< b c d e dis e f |
  g fis g a bes\f r4. |
  f4-.^\mp f-. f-. f-. |
  f4-. f-. f-. f-. |
  f4-. f-. f-. f-. |
  f4-. f-. f-. |
  \time 2/4
  \cricket \clef percussion c'32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "bass"
  \times 2/3 { fis,4^\mf dis r } r |
  \time 5/4
  fis4 r8 dis^\rubbingENGLISH ~ dis4 r2 |
  \time 3/4
  \cricket r8 c'2:16^\shallowENGLISH r8 |
  \time 6/4
  \normal \clef bass
  r8^\punctuateENGLISH  dis,4. r8 dis4. r2 |
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
  R1 | R1 | R1 |
  R1 |
  R1 |
  R1 |
  R1 | R1 | R1 | R1 |
  \time 4/4
  \normal \clef bass
  %{
    bes16.^\f bes32 bes bes bes bes ~     bes16 bes32 bes ~ bes8 ~    bes8.. bes32     bes bes bes bes bes bes bes16 ~ |
    bes8. bes32 bes    bes bes bes8. ~     bes16 bes32 bes bes bes bes bes   bes bes bes bes bes bes16. ~ |
    \time 3/4
    bes8 bes32 bes bes bes     bes bes bes8. ~    bes4 ~    |
    \time 2/4
    bes32 bes bes bes bes bes16. ~ bes16 bes32 bes32 ~ bes16. bes32
  %}
  bes32^\f  bes16. ~ bes16 bes32  bes32 ~ bes4~bes8 ~ bes32 bes32  bes32  bes32  bes4 ~bes8 ~ bes32 bes32  bes32  bes32  bes8 ~ bes32 bes32  bes32  bes32  bes8 ~ bes16. bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16. ~ bes16 bes32  bes32 ~ bes8 ~ bes16 bes32  bes32  bes8 ~ bes16. bes32  bes32  bes32  bes32  bes32  bes8 ~bes4 
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
  c1:^\markup { \italic \column { "rolled \"r\"" "(drumroll)" }}
  R1^\fermataMarkup |
  \normal \clef bass
  f,1^\ppp ~ |
  \time 6/4
  f4 \air \clef percussion \ctip \sustainG c'4*4\>^\bravoENGLISH \glissando \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \time 4/4
  R1 | R1 | R1 | R1 | R1 | R1 | R1 |
  \normal \clef bass
  r4 a,2.^\mp |
  a1 |
  a1^\< ~ |
  a1 ~ |
  a2. r4\roundFFdynamic |
  %{
    bes4^\f ~   bes8 bes32 bes bes bes    bes bes bes8. |
    \times 2/3 { bes16 bes \cricket \berioGoalposts \clef percussion b'16 b b b } \times 2/3 { g8 g a8 ~ } a16 g g f \times 2/3 { f8 f f } |
  %}
  bes32^\f  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16. ~ bes32 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16. ~bes4 ~ bes32 bes32  bes32  bes32  bes8 ~bes8 ~ bes16 bes32  bes32 
  \bNormal
  r2... ees32 ees |
  \cricket \clef percussion
  \time 3/16
  \stemUp
  c'8 c16 |
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
  \transpose c bes, \relative c {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
}

bassWordsB = \lyricmode {
  shhh
  Al -- lez
  \skip 1
  \repeat unfold 5 { Bang, you're dead. }
  Schloß!
  shhh
  \repeat unfold 3 \skip 1
  Zzzhhh
  Sil -- ly "ra -"
  Sil -- ly "ra -"
  Al -- lez.
  Schloß!
  %Je suis un mon -- stre.
  %Mon -- stre doit man -- ger.
  %Mon -- stre~ne touche pas d'al -- lo -- ca -- ti -- on so -- ci -- ale.
  %Je suis un mon -- stre.
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
  %Je suis un mon -- stre.
  %Mon -- stre~est chô -- meur en fin de droits.
  %Mon -- stre mange son bé -- bé.
  No! No! No! No! No! No! No! No! No! No!
  fuck!
  mooooooooo
  back back back back back back back back
  back back back back back
  Merck Merck Merck Merck Merck Merck Merck Merck
  Merck Merck Merck Merck Merck Merck Merck
  Al -- lez
  J -- sho
  J -- sho
  " " sho sho
  J -- sho
  Cre -- do in u -- num De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi -- li -- um. Et
  se -- ven six five four four four four
  \skip 1
  Schloß! \skip 1
  Sil -- ly "ra -"
  in u -- num Do -- mi -- num IE -- SUM CHRIS -- TUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum. Et ex Pa -- tre na -- tum an -- te om -- ni -- a sæ -- cu --
  J -- sho
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  \repeat unfold 10 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

bassC = \relative c' {
  \time 6/16
  \partial 16
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
  \time 3/8
  c4. |
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
  \time 4/8
  R2 |
  \time 4/4
  \normal
  \clef "bass"
  c,4 ~ c2 ~ c8 \cricket \clef percussion r8 |
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
  c1^\f^\vacuumENGLISH ~ |
  c1 ~ |
  c1 ~ |
  c1 ~ |
  c2. r4 |
  R1*5 |
  \time 3/8
  R4. |
  \time 6/16
  R4.
  R4.
  R4.
  R4.
  R4.
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
  R2. |
  \time 2/4
  R2 |
  \time 3/4
  R2. |
  \time 5/8
  R8*5 |
  \time 5/4
  R1*5/4 |
  \time 5/8
  R1*5/8
  \time 3/4
  R2. |
  \time 4/4
  \cricket
  \stemUp
  R1 |
  \time 7/8
  \repeat unfold 3 e1*7/24
  R1*7/8
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
  c2.^\markup { \italic \column {"vocal fry" "with hands cupped over mouth"} } ~ |
  \time 3/8
  c4. |
  \time 3/4
  \slash c2.^\rubENGLISH |
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
  c,4^\f ~ c16 r |
  \time 5/16
  \cricket
  c'8. ~ c8 |
  \time 3/8
  \bNormal
  a,8 a a |
  \time 4/4
  \cricket \berioGoalposts
  R1 | R1 | R1 | R1 | R1 | R1 |
  R1 |
  R1 |
  R1 |
  \time 3/4
  R2. |
  \time 5/8
  R8*5 |
  \time 4/4
  \normal \clef bass
  g4^_^\ff g4^_ g4^_ g4^_ |
  g4^_ g4^_ g4^_ g4^_ |
  \time 2/4
  g4^_ g8 \cricket \clef percussion \berioGoalposts r |
  \time 4/4
  r2 r8 f''^\f ~ f4 |
  \stemNeutral
  R1 |
  R1 |\cricket
  \diamond c1^\mf^\mooENGLISH
  R1 |
  \time 6/16
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  \time 9/16
  R4.*3/2 |
  \time 2/2
  \normal \clef bass
  c,8^\mp^\< b c d e dis e f |
  g fis g a bes\f r4. |
  f4-.^\mp f-. f-. f-. |
  f4-. f-. f-. f-. |
  f4-. f-. f-. f-. |
  f4-. f-. f-. |
  \time 2/4
  \cricket \clef percussion c'32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "bass"
  \times 2/3 { fis,4^\mf dis r } r |
  \time 5/4
  fis4 r8 dis^\rubbingENGLISH ~ dis4 r2 |
  \time 3/4
  \cricket r8 c'2:16^\shallowENGLISH r8 |
  \time 6/4
  \normal \clef bass
  r8^\punctuateENGLISH  dis,4. r8 dis4. r2 |
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
  R1 | R1 | R1 |
  R1 |
  R1 |
  R1 |
  R1 | R1 | R1 | R1 |
  \time 4/4
  \normal \clef bass
  %{
    bes16.^\f bes32 bes bes bes bes ~     bes16 bes32 bes ~ bes8 ~    bes8.. bes32     bes bes bes bes bes bes bes16 ~ |
    bes8. bes32 bes    bes bes bes8. ~     bes16 bes32 bes bes bes bes bes   bes bes bes bes bes bes16. ~ |
    \time 3/4
    bes8 bes32 bes bes bes     bes bes bes8. ~    bes4 ~    |
    \time 2/4
    bes32 bes bes bes bes bes16. ~ bes16 bes32 bes32 ~ bes16. bes32
  %}
  bes32^\f  bes32  bes16 ~ bes8 ~ bes16. bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16 ~ bes8 bes32  bes16. ~ bes8~bes8 ~ bes32 bes32  bes32  bes32  bes32  bes32  bes32  bes32 ~ bes8~bes8 ~ bes32 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes8 ~ bes8 ~ bes32 bes32  bes32  bes32  bes32  bes32  bes16 ~ bes8 ~ bes4~bes16  bes32  bes32  bes8 
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
  c1:^\markup { \italic \column { "rolled \"r\"" "(drumroll)" }}
  R1^\fermataMarkup |
  \normal \clef bass
  f,1^\ppp ~ |
  \time 6/4
  f4 \air \clef percussion \ctip \sustainG c'4*4\>^\bravoENGLISH \glissando \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \time 4/4
  R1 | R1 | R1 | R1 | R1 | R1 | R1 |
  \normal \clef bass
  r4 a,2.^\mp |
  a1 |
  a1^\< ~ |
  a1 ~ |
  a2. r4\roundFFdynamic |
  %{
    bes4^\f ~   bes8 bes32 bes bes bes    bes bes bes8. |
    \times 2/3 { bes16 bes \cricket \berioGoalposts \clef percussion b'16 b b b } \times 2/3 { g8 g a8 ~ } a16 g g f \times 2/3 { f8 f f } |
  %}
  bes32^\f  bes32  bes16 ~ bes8 ~ bes4~bes16  bes32  bes32  bes32  bes32  bes32  bes32 ~ bes4~bes8  bes32  bes16. ~ bes8 ~ bes32 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32 
  \bNormal
  r2... ees32 ees |
  \cricket \clef percussion
  \time 3/16
  \stemUp
  c'8 c16 |
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
  \transpose c bes, \relative c {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
}

bassWordsC = \lyricmode {
  shhh
  Al -- lez
  \skip 1
  \repeat unfold 5 { Bang, you're dead. }
  Schloß!
  shhh
  \repeat unfold 3 \skip 1
  Zzzhhh
  Sil -- ly "ra -"
  Sil -- ly "ra -"
  Al -- lez.
  Schloß!
  %Je suis un mon -- stre.
  %Mon -- stre doit man -- ger.
  %Mon -- stre~ne touche pas d'al -- lo -- ca -- ti -- on so -- ci -- ale.
  %Je suis un mon -- stre.
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
  %Je suis un mon -- stre.
  %Mon -- stre~est chô -- meur en fin de droits.
  %Mon -- stre mange son bé -- bé.
  No! No! No! No! No! No! No! No! No! No!
  fuck!
  mooooooooo
  back back back back back back back back
  back back back back back
  Merck Merck Merck Merck Merck Merck Merck Merck
  Merck Merck Merck Merck Merck Merck Merck
  Al -- lez
  J -- sho
  J -- sho
  " " sho sho
  J -- sho
  Cre -- do in u -- num De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi -- li -- um. Et in u -- num Do -- mi -- num IE --
  se -- ven six five four four four four
  \skip 1
  Schloß! \skip 1
  Sil -- ly "ra -"
  SUM CHRIS -- TUM, Fi -- li -- um De -- i un -- i -- gen -- i -- tum. Et ex Pa -- tre na -- tum an -- te om --
  J -- sho
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  \repeat unfold 10 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

bassD = \relative c' {
  \time 6/16
  \partial 16
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
  \time 3/8
  c4. |
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
  \time 4/8
  R2 |
  \time 4/4
  \normal
  \clef "bass"
  c,4 ~ c2 ~ c8 \cricket \clef percussion r8 |
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
  c1^\f^\vacuumENGLISH ~ |
  c1 ~ |
  c1 ~ |
  c1 ~ |
  c2. r4 |
  R1*5 |
  \time 3/8
  R4. |
  \time 6/16
  R4.
  R4.
  R4.
  R4.
  R4.
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
  \times 2/3 { f4^\mf^\< g8 } g8 a8 \times 2/3 { b8\> a8 g\! } |
  \time 2/4
  R2 |
  \time 3/4
  f4^\< ~ \times 2/3 { f8 f f } \times 2/3 { g8 g a\> ~ } |
  \time 5/8
  a8 g\! r8 r4 |
  \time 5/4
  f4^\< ~ \times 2/3 { f8 f f } g g a4\> ~ \times 2/3 { a8 g g\! }
  \time 5/8
  R1*5/8
  \time 3/4
  \times 2/3 { f4^\mf^\< g8 } g8 a8 \times 2/3 { b8\> a8 g\! } |
  \time 4/4
  \cricket
  \stemUp
  R1 |
  \time 7/8
  R1*7/8
  R1*7/8
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
  \time 3/4
  c2.^\markup { \italic \column {"vocal fry" "with hands cupped over mouth"} } ~ |
  \time 3/8
  c4. |
  \time 3/4
  \slash c2.^\rubENGLISH |
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
  c,4^\f ~ c16 r |
  \time 5/16
  \cricket
  c'8. ~ c8 |
  \time 3/8
  \bNormal
  a,8 a a |
  \time 4/4
  \cricket \berioGoalposts
  R1 | R1 | R1 | R1 | R1 | R1 |
  \times 2/3 { f'4^\mf^\< g8 } g8 a8 \times 2/3 { b8\> a8 g } \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \cricket
  r2. \times 2/3 { r4 b8 ~ } |
  \times 4/5 { b8^\< b16 b a } \times 2/3 { b4 g8 } a16\> a a g  \times 2/3 { g4 f8\! } |
  \time 3/4
  r2 a8.^\< g16 |
  \time 5/8
  g8\> g \times 2/3 { f8 f f\! } r8
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
  R1 |\cricket
  \diamond c1^\mf^\mooENGLISH
  R1 |
  \time 6/16
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  R4. |
  \time 9/16
  R4.*3/2 |
  \time 2/2
  \normal \clef bass
  c,8^\mp^\< b c d e dis e f |
  g fis g a bes\f r4. |
  f4-.^\mp f-. f-. f-. |
  f4-. f-. f-. f-. |
  f4-. f-. f-. f-. |
  f4-. f-. f-. |
  \time 2/4
  \cricket \clef percussion c'32^\f c8.. ~ c4 |
  \time 3/4
  \normal \clef "bass"
  \times 2/3 { fis,4^\mf dis r } r |
  \time 5/4
  fis4 r8 dis^\rubbingENGLISH ~ dis4 r2 |
  \time 3/4
  \cricket r8 c'2:16^\shallowENGLISH r8 |
  \time 6/4
  \normal \clef bass
  r8^\punctuateENGLISH  dis,4. r8 dis4. r2 |
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
  R1 | R1 | R1 |
  R1 |
  R1 |
  R1 |
  R1 | R1 | R1 | R1 |
  \time 4/4
  \normal \clef bass
  %{
    bes16.^\f bes32 bes bes bes bes ~     bes16 bes32 bes ~ bes8 ~    bes8.. bes32     bes bes bes bes bes bes bes16 ~ |
    bes8. bes32 bes    bes bes bes8. ~     bes16 bes32 bes bes bes bes bes   bes bes bes bes bes bes16. ~ |
    \time 3/4
    bes8 bes32 bes bes bes     bes bes bes8. ~    bes4 ~    |
    \time 2/4
    bes32 bes bes bes bes bes16. ~ bes16 bes32 bes32 ~ bes16. bes32
  %}
  bes32^\f  bes16. ~ bes8 ~ bes8 ~ bes16. bes32  bes32  bes32  bes32  bes32  bes8 ~ bes8 ~ bes16 bes32  bes32 ~bes4..  bes16 ~bes4  bes8  bes32  bes32  bes32  bes32  bes8 ~ bes32 bes16. ~ bes8 ~ bes16 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16. ~ bes32 bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes32  bes16. 
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
  c1:^\markup { \italic \column { "rolled \"r\"" "(drumroll)" }}
  R1^\fermataMarkup |
  \normal \clef bass
  f,1^\ppp ~ |
  \time 6/4
  f4 \air \clef percussion \ctip \sustainG c'4*4\>^\bravoENGLISH \glissando \grace { \hideNotes c8 \unHideNotes } r4\! \normalG |
  \time 4/4
  R1 | R1 | R1 | R1 | R1 | R1 | R1 |
  \normal \clef bass
  r4 a,2.^\mp |
  a1 |
  a1^\< ~ |
  a1 ~ |
  a2. r4\roundFFdynamic |
  bes4^\f ~   bes8 bes32 bes bes bes    bes bes bes8. |
  \times 2/3 { bes16 bes \cricket \berioGoalposts \clef percussion b'16 b b b } \times 2/3 { g8 g a8 ~ } a16 g g f \times 2/3 { f8 f f } |
  \bNormal
  r2... ees32 ees |
  \cricket \clef percussion
  \time 3/16
  \stemUp
  c'8 c16 |
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
  \transpose c bes, \relative c {
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  bes c ees f g bes c ges f ees |
  }
}

bassWordsD = \lyricmode {
  shhh
  Al -- lez
  \skip 1
  \repeat unfold 5 { Bang, you're dead. }
  Schloß!
  shhh
  \repeat unfold 3 \skip 1
  Zzzhhh
  Sil -- ly "ra -"
  Sil -- ly "ra -"
  Al -- lez.
  Schloß!
  %Je suis un mon -- stre.
  %Mon -- stre doit man -- ger.
  %Mon -- stre~ne touche pas d'al -- lo -- ca -- ti -- on so -- ci -- ale.
  %Je suis un mon -- stre.
  Mi -- nä o -- len hir -- vi -- ö
  Hir -- vi -- ön täy -- tyy syö -- dä
  Hir -- vi -- ö ei saa tu -- ki -- a
  Mi -- nä o -- len hir -- vi -- ö
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
  %Je suis un mon -- stre.
  %Mon -- stre~est chô -- meur en fin de droits.
  %Mon -- stre mange son bé -- bé.
  Mi -- nä o -- len hir -- vi -- ö
  Hir -- vi -- öl -- tä lop -- puv työt -- tö -- myys -- kor -- va -- us
  Hir -- vi -- ö syö lap -- sen -- sa
  No! No! No! No! No! No! No! No! No! No!
  fuck!
  mooooooooo
  back back back back back back back back
  back back back back back
  Merck Merck Merck Merck Merck Merck Merck Merck
  Merck Merck Merck Merck Merck Merck Merck
  Al -- lez
  J -- sho
  J -- sho
  " " sho sho
  J -- sho
  Cre -- do in u -- num De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cæ -- li et ter -- ræ, vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi -- li -- um. Et in
  se -- ven six five four four four four
  \skip 1
  Schloß! \skip 1
  Sil -- ly "ra -"
  u -- num Do -- mi -- num IE -- SUM CHRIS -- TUM, Fi --
  Hir -- vi -- ö ei o -- le ko -- vin us -- kon -- nol -- li -- nen
  J -- sho
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  Bang, you're dead.
  \repeat unfold 10 { Ev' -- ry -- bo -- dy wants to be part of me. }
}

