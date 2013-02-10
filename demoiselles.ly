\version "2.15.35"

\include "defs-devel.ly"

\header {
  title = "Les demoiselles"
  subtitle = "pour Olivier Salon - you're so pretty!"
  composer = "Mike Solomon"
}

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

highFRENCH = \markup \italic \column { "très aigu, grincement" "pas fort" }
highENGLISH = \markup \italic \column { "high screech" "not too loud" }
falsettoFRENCH = \markup \italic \column { "voix de tête" "gras" }
falsettoENGLISH = \markup \italic \column { "falsetto" }
coupFRENCH = \markup \italic \column { "coup de" "glotte" }
coupENGLISH = \markup \italic { glottal }
generatorFRENCH = \markup \italic { generateur }
generatorENGLISH = \markup \italic { générator }
powerFRENCH = \markup \italic { ligne électrique }
powerENGLISH = \markup \italic { power line }
shakyFRENCH = \markup \italic { bancal }
shakyENGLISH = \markup \italic { shaky }

welcome = \tempo "Cultish" 4=140
secret = \tempo "Ein honkytonklich Tempo" 4.=160
secretShort = \tempo "E.h.T." 4.=160
secretQuarter = \tempo "rave" 4=160
debut = \tempo "हिजड़े" 4=120
onetwenty = \tempo "moderato" 4=120
debutSlower = \tempo "Calm" 4=88

marksBeginning = {
  \time 4/4
  \debut
  s1*9 |
  \time 5/4
  s1*5/4 |
  \time 3/4
  s2. |
  \time 7/8
  s1*7/8 |
  s1*7/8 |
  s1*7/8 |
  \time 5/4
  s1*5/4 |
  \time 15/8
  \secret
  s1.*5/4
  s1.*5/4 |
  \time 2/8
  \welcome
  s4 |
  \time 2/4
  s2 | s2 | s2 | s2 | s2 |
  %\tempo "like totally quarter note equals eighty-four LOLs :-) your bff"
  \tempo "LOL!" 4=84
  \set Score.tempoWholesPerMinute = #(ly:make-moment 84 4 0 1)
  s2 | s2 | s2 | s2 |
  \secret
  \compoundMeter #'((15 8) (1 8))
  s1.*5/4 s8 |
  s1.*5/4 s8 |
  \time 6/8
  s2. |
  \tempo "R&B - B + R (R&R)" 4=112
  \time 5/8
  s1*5/8 |
  \time 7/8
  s1*7/8 |
  \time 3/4
  s2. |
  \time 10/16
  s1*10/16 |
  \time 4/8
  s2 |
  \tempo "soaring" 4=96
  \time 4/4
  s1 |
  s1 |
  \time 9/8
  \secret
  s1*9/8 |
  \time 8/8
  s1*8/8 |
  \time 12/8
  s1*12/8 |
  \time 2/4
  \debutSlower
  s2 |
  s2 |
  \time 6/8
  s1*6/8 |
  \secret
  \time 12/8
  s1*12/8 |
  \time 6/8
  s1*6/8 |
  \time 9/8
  s1*9/8 |
  \time 6/8
  s2. |
  \welcome
  \time 2/4
  s2*7 |
  \time 3/4
  \tempo "più mosso" 4=160
  s2.
  \time 5/16
  s1*5/16 |
  \time 4/4
  \tempo "marcato" 4=160
  s1 |
  s1 |
  s1 |
  \tempo \markup \column { "Joe Namath" "guarantees" "that we will win" "Eurovision" "in 2014" } %4=120
  \set Score.tempoWholesPerMinute = #(ly:make-moment 120 4 0 1)
  s4 \tempo 4=120 s2.
  s1*4 |
  \time 6/8
  \secret
  s2. |
  \time 9/8
  s1*9/8 |
  \time 6/8
  s2. |
  \time 4/4
  \set Score.tempoWholesPerMinute = #(ly:make-moment 56 4 0 1)
  s1 |
  \onetwenty
  s1 |
  s1 |
  \time 3/4
  s2. |
  \time 2/8
  \welcome
  s4 |
  \time 2/4
  s2*3 |
  \tempo "Trance" 4=108
  s2 |
  \time 4/4
  \set Score.tempoWholesPerMinute = #(ly:make-moment 40 4 0 1)
  s2. \set Score.tempoWholesPerMinute = #(ly:make-moment 108 4 0 1) s4 |
  s1 |
  s1 |
  s1 |
  \time 6/8
  \secretShort
  s2. |
  \time 9/8
  s1*9/8
  \time 4/4
  \secretQuarter
  s1 |
  s1 |
  \time 3/4
  s2. |
  \time 7/16
  \tempo "agitato" 4=120
  s1*7/16 |
  s1*7/16 |
  \time 4/4
  s1 |
  s1 |
  \tempo "swung" 4=188
  \time 3/4
  \repeat unfold 3 \unfoldSwing #188
  \time 4/4
  \repeat unfold 4 \unfoldSwing #188
  \repeat unfold 4 \unfoldSwing #188
  \tempo "unswung" 4=172
  s1 |
  \time 2/4
  s2 |
  \time 12/8
  \secretShort
  s1. |
  \compoundMeter #'((9 8) (4 8))
  s1*13/8 |
  \time 5/8
  s1*5/8 |
  \time 9/8 |
  s1*9/8 |
  \time 8/8
  s1 |
  \time 7/8
  s1*7/8 |
  \compoundMeter #'((6 8) (4 8))
  s1*10/8
  \time 2/4
  \onetwenty
  s2*6 |
  \tempo "tender" 4=80
  s2*2 |
  \time 3/4
  s2. |
  s2. |
  \time 2/4
  s2 |
  \time 4/4
  \tempo "The Platters" 4=56
  \repeat unfold 32 \unfoldSwing #56 |
  \tempo 4=60
  s1*4 |\bar "|."
}

sopranoBeginning = \relative c'' {
  gis4^-^\f ( \glissando \gSkip c8 \gSkip e16 gis ) fis,8^- ( \glissando \gSkip gis16 a ) \times 2/3 { fis8^_ e'^_ r8 } |
  \times 2/3 { e,8^- ( \glissando b'-. ) gis } r8 \acciaccatura { dis'16 } fis,8 ~ fis dis \acciaccatura { dis16 } cis4^- ( \glissando |
  b'8^\> ) dis16 b fis8-. g-. \acciaccatura { gis16 } dis8.^- ~ dis16\bendAfter # 2  \times 2/3 { a''8 gis, g } |
  \times 2/3 { d fis e } \acciaccatura { e16 } d8.^- ~ d16\bendAfter #2  g8^. e^- \times 2/3 { r8 fis dis ~ } |
  \times 2/3 { dis4 \cricket c8^\mp } \times 2/3 { c c r } r8 c16 c \times 2/3 { c8 c4 } |
  r4 \times 2/3 { r4 c8 } c c16 c ~ c8. r16 |
  r2 \times 2/3 { r8 c c } c16 c8. ~ |
  c16 r8. r4 \times 2/3 { r4 c8 } c8 r16 c16 |
  c4 r4 r \times 2/3 { r8 c c } |
  c16 c8. ~ c4 r2 \saNormal \times 2/3 { dis8^\mf fis r } |
  b8. a16 ~ a4 r4 |
  a8. g16 ~ g4 r4. |
  g8. f16 ~ f4 r4. |
  des'8. ces16 ~ ces4 r4. |
  ces8. beses16 ~ beses4 r4 r2 |
  R1.*5/4 |
  R1.*5/4 |
  R4 |
  R2 | R2 | R2 | \cricket r4. c,8^\mf |
  c c16 c ~ c8 r |
  r4 c16 c c c ~ |
  c4 r4 |
  r16 c c c c8. r16 |
  r4 c16 c c c |
  \saNormal
  R8*16
  fis4^\f gis8 b4 gis8 fis4 gis8 e4 r8 cis4 e8 r |
  fis4 gis8 b8 r4 |
  R1*5/8 |
  r8. a16^\mf^\shakyFRENCH ~ a8 ~ a16 gis ( fis8 ) r4 |
  \times 2/3 { gis4^\f fis e } r4 |
  R1*10/16 |
  \cricket
  r8. c16 ~ c c8 r16 |
  \saNormal
  b'1^\mp^\< |
  \times 2/3 { c4^\f bes r } %\fatText \monoShift \cricket s2^\markup \whiteout "Haha, I'm pretty" |
  %\fatText \monoShift s4.^\markup \whiteout "like an" |
  \cricket r16 c, c r r c c c |
  c4 c8 ~ c r4 r4. |
  R1*8/8 |
  r2. r8. c16 c c c8 c \tri c |
  \saNormal
  cis'16^\mf b8. r4 |
  b8. a16 ~ a8 r |
  a8. g16 ~ g8 r r g8 |
  f4. r4. r2. |
  R2. |
  bes4.^\f des4 bes8 aes4 bes8 |
  des,4. r4. |
  R2 |
  g8^\mf e r8 fis8^\p^\< ~ |
  fis2 ~ |
  fis4.^\mf\> e8\p |
  a2\mf ~ |
  a2 ~ |
  a8-. r fis8^\p e8 |
  \cricket c4^\f r2 |
  R1*5/16 |
  \saNormal
  r4 \times 2/3 { ees4^\f ees8 } aes4-. r4 |
  R1 |
  \clef alto
  r8 r16 aes,16 ~ aes bes8 des16 ~ des4 ~ des8. r16 |
  r16 f,8 aes16 ~ aes des8 r16 r2 |
  \clef treble
  r8 g4^\mf f8 ~ f ees4 f8 |
  d8 r4 b'8^\f ~ b8 a4 r8 |
  \cricket r4.. c,16^\markup \italic "really?" c c8. c8. c16 |
  \saNormal r2 b'8. a16 ~ a8 r |
  R2. |
  a4 b8 d4 b8 a4 b8 |
  e,4. r4. |
  b1^\mf^\fermata |
  R1 |
  r2. \times 2/3 { r8 cis8 dis } |
  gis8 fis8 ~ fis8 r r4 |
  fis4 |
  e4. b8^\> |
  dis fis dis fis |
  b r4 fis'8^\mp |
  R2 |
  r2.^\fermata r4 |
  R1 |
  \clef alto \times 4/5 { r16 e,16^\p gis, a gis } \times 4/5 { b fisis gis r8 }  r4 \clef treble r16 b'8.^\f ~ |
  b4 gis8-. cis-. fisis,8 ( gis4 ) e8 |
  \cricket
  r4. r4 c8 ~ |
  c4. r2. |
  r2 r8 c8 r c |
  r c r c r c r c |
  r c r2 |
  \saNormal
  ais'8.^\mf gis8 r |
  gis8. fis8 r |
  \cricket
  r2
  \override Stem #'stencil = #bendy
  \override NoteColumn #'Y-offset = #(lambda (grob) (rand-me -1 1))
  \override NoteHead #'style = #'mensural
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \override Stem #'Y-extent = #ly:grob::stencil-height
  c4*1/8^\mp^\markup \italic \column { "chanson d'accouplement" "d'un écureuil" } c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 |
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  \revert Stem #'stencil
  \revert NoteColumn #'Y-offset
  \revert NoteHead #'style
  \revert Stem #'Y-extent
  r4 |
  R2. |
  R1 |
  \saNormal
  r2. b4^\mf |
  R1 |
  R2 |
  fis'4^\f gis8 b4 gis8 fis4 gis8 e4. |
  fis4. e d fis4 a |
  a,4. r4 |
  \cricket
  r8 c4 ~ c2. ~ |
  c4 \tri c8 r r2 |
  R1*7/8 |
  R1*10/8 |
  R2 |
  \saNormal
  a'8.^\mf g16 ~ g8 \cricket \times 2/3 { c,16 c c } |
  r4. c16 c |
  R2 |
  R2 |
  \saNormal
  \times 2/3 { bes'4^\< ( f\!^\> ) ges } |
  ges8^\mf f ees des |
  R2 |
  R2. |
  fis8 e4 r8 r4 |
  R2 |
  \key b \major
  \cricket
  r2... c16^\markup \italic "not swung"
  c8 c16 r r4 r8 c16 c c c r8 |
  R1 |
  R1 |
  \saNormal
  fis4^\mp ~ ( \times 2/3 { fis8 dis fis ~ } fis b ~ b4 ~ |
  b2 ais |
  gis ais |
  gis4 g fis2 ) |
  r2. r16 gis8^\mf gisis16 |
  ais8^\< a gis g fis\!^\> g gis ais ( |
  cis4^\mf ) r4 r16 b^\p r8 \cricket r4 |
  r8 c,16^\mf c c c8. r2 |
}

sopranoWordsBeginning = \lyricmode {
  Hi!
  Hi, sim -- mer.
  Hi, sit.
  I sir
  I, zi -- bid
  a a I
  See ya a uh oo
  an see an see
  a see so pret -- ty
  \repeat unfold 5 { You're so pret -- ty }
  You're so
  \repeat unfold 5 { pret -- ty }
  \repeat unfold 4 { you're so pret -- ty }
  \repeat unfold 1 { cra -- zy love is what I'm done and you }
  cra -- zy lo
  oh my
  nine and five
  oh God
  pre
  pret -- ty
  Ha -- ha, I'm pret -- ty like a
  he he he you're so p
  \repeat unfold 4 { pret -- ty }
  I got a sec -- ret you
  but -- ter pret -- ty
  fake
  pret -- ty
  sss
  po -- ny up
  cra -- zy love
  can you see
  oh l'au -- tre oh ouais
  pret -- ty
  I'm an her -- bi -- vore.
  pret -- ty
  cra -- zy love is what I'm gun
  love
  you're so pret -- ty
  pret -- ty
  Wel -- come I want to find bind
  oh I wan -- na kill your face
  ba ba ba a da
  par
  par uh uh uh uh uh uh
  pret -- ty pret -- ty
  \repeat unfold 40 \skip 1
  yeah
  par -- ty on is one and two
  I've got a se -- cret
  four
  sss k
  pret -- ty you're so nice
  pret -- ty
  oh fake
  par -- ty one two
  pret -- ty
  But Mis -- ter, she's my sis -- ter
  ooo
  doo ba
  doo doo doo doo doo doo doo doo
  Schloß
  you're so pret -- ty
}

altoBeginning = \relative c''' {
  r16 a8.^-^\f ( ~ a4 \glissando \gSkip a8 [ \gSkip a16 bes16 ) ] c,4 ~ |
  \times 2/3 { c8^.\bendAfter #2  r8 b4^. a^- ~ } a8 a r \acciaccatura { f'16 } d8^- ( \glissando |
  \times 2/3 { \gSkip f4 ais4^\> ) b, } \times 2/3 { a'16 ( gis a ) } cis,8 \acciaccatura { c16 } gis8.^>^- \glissando ( a16^. ) |
  \times 2/3 { cis8 gis g } \times 2/3 { f4 bes8 } \times 2/3 { a8 e ees } \cricket \stemUp r8 c16^\mp c |
  c16 c8. \times 2/3 { r8 c c } c4 r |
  R1 |
  c8 c c4 r2 |
  r4 \times 2/3 { r8 c c } c4 r |
  r4. c8 \times 2/3 { c c4 } r4 |
  r2 \times 2/3 { r8 c c } c4 r |
  R2. |
  R1*7/8 |
  \saNormal
  ees'8.^\mf des16 ~ des16 r8. r4. |
  \cricket \stemNeutral r4 \tri c4^\highFRENCH ~ \tri c4. ~ |
  \tri c2. ~ \tri c2 |
  \saNormal
  fis,4^\f gis8 b4 gis8 fis4 gis8 e4 r8 cis4 e8 |
  fis4 a8 fis4 e8 cis4 e8 a,8. cis a a |
  R4 |
  R2 |
  r4 e'8^\mf^\> gis |
  b fis b dis |
  b dis fis a |
  r a^\mp r4 |
  R2 |
  \cricket
  r16 c,,^\mf c c ~ c4 |
  R2 |
  c16 c c8 r4 | 
  \saNormal
  fis4^\f gis8 b4 gis8 fis4 gis8 e4 r8 cis4 e8 r |
  r1. cis4 e8 r |
  fis4 gis8 b8 e,8^|^\coupFRENCH r |
  fih4..^\generatorFRENCH r16 a8^^^. |
  dis,4. cis8 ~ cis8 r16 dis8. |
  \cricket
  r2 \times 2/3 { c8^\mf c \saNormal e8^\f ~ } |
  e8. dis16 ~ dis8. cis8.
  \cricket
  r8. c16 ~ c c8 r16 |
  r4 r16 \ottava #1 c'32^\mf c c c c c
    c c c c c16 c32 c32 c16 c32 c c16 c32 c |
  c16 c32 c c16 c32 c32 c16 c32 c c16 c32 c32 c16 c32 c c16 c32 c32 c16 c32 c c16 c32 c32 \ottava #0 |
  \saNormal
  g4.^\f f ees4.
  g4 bes4 g8 f4 g8 |
  bes,4 r8 r4. r2. |
  a'16^\mf g8. r4 |
  g8. f16 ~ f8 r |
  f8. ees16 ~ ees8 r r ees8 |
  des4. r4. \times 3/4 { fis8^\mp gis b gis } \times 3/4 { fis gis e4 } |
  \times 3/4 { fis8 e d r } r4. |
  R1*9/8 |
  R1*6/8 |
  R2 |
  R2 |
  c8^\mf^\> r g c |
  r e r4 |
  g8 e c \cricket c ~ |
  c8 r \saNormal f8 r |
  f^\p r r4 |
  R2. |
  dis8.^\mf cis8 |
  \cricket r2... c16^\p^\markup \italic "whisper" |
  c r8. r4 r2 |
  \saNormal \clef alto r2 r16 aes8 f16 ~ f des8 \clef treble aes''16^\f ~ |
  aes2 bes4 aes8 aes ~ |
  aes g4. ~ g4 r8 d |
  f8 g4 bes8 r bes bes bes |
  bes a aes g r a g d |
  c4 d8 c f d c4 |
  \cricket r4. c4. ~ |
  c4. r2. |
  R2. |
  \cricket
  r4
  \override Stem #'stencil = #bendy
  \override NoteColumn #'Y-offset = #(lambda (grob) (rand-me -1 1))
  \override NoteHead #'style = #'mensural
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \override Stem #'Y-extent = #ly:grob::stencil-height
  c4*1/8^\markup \italic \column { "écureuil castré" "fou d'amour" } c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  \revert Stem #'stencil
  \revert NoteColumn #'Y-offset
  \revert NoteHead #'style
  \revert Stem #'Y-extent
  \saNormal
  r4 fis^\mf ~ \times 2/3 { fis8 d b } a4 |
  R1 |
  \cricket r8. c16 c c c8 \times 2/3 { c8 c c } |
  c4 |
  R2 |
  R2 |
  \saNormal \clef alto \times 2/3 { r4 e8 } \times 2/3 { gis,8 a gis }
  b8. fisis16 ~ fisis8 \cricket \tri c' |
  \saNormal \clef alto r2.^\fermata e16 gis, a gis |
  b8. fisis16 ~ fisis8 gis ~ gis r8 e'16 gis, a gis |
  b8. fisis16 ~ fisis8 gis ~ gis r8 e'16 gis, a gis |
  b8. fisis16 ~ fisis8 gis ~ \times 2/3 { gis r8 fis'-. } \cricket r16 c8.^\f |
  \saNormal
  ais'4. gis |
  fis4 gis8 b4 gis8 fis4 gis8 |
  gis2 r |
  R1 |
  \cricket
  r4. c,4. |
  R1*7/16 |
  r8.
  \override Stem #'stencil = #bendy
  \override NoteColumn #'Y-offset = #(lambda (grob) (rand-me -1 1))
  \override NoteHead #'style = #'mensural
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \override Stem #'Y-extent = #ly:grob::stencil-height
  c4*1/8^\mp^\markup \italic \column { "chanson d'accouplement" "d'un écureuil" } c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 |
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  \revert Stem #'stencil
  \revert NoteColumn #'Y-offset
  \revert NoteHead #'style
  \revert Stem #'Y-extent
  r4 |
  \saNormal
  R2. |
  b''1^\mp^\markup \italic "tiny" ~ |
  b2. dis,,4^\mf |
  \cricket
  c8 c c4 r4. c8 |
  c c r4 |
  R1. |
  R1*13/8 |
  R1*5/8 |
  \saNormal
  r4. gis'2. ~ |
  gis4 r4 r4. cis'8^\p ~ |
  cis2 ~ cis4. |
  gis,4^\f ais8 cis4 ais8 gis4 ais8 fis8 ~ |
  fis4 \cricket c^\markup \italic "manly" |
  R2 |
  \times 2/3 { c16 c c } r4. |
  R2 |
  r4 \times 2/3 { r16 c16^\p c } r8 |
  \saNormal
  f4^\mp ees |
  R2 |
  \cricket \times 2/3 { r8 c^\mf c } c8. r16 |
  R2. |
  \saNormal
  r4 dis''2^\p ~ |
  dis2 ~ |
  \key b \major
  dis2 r |
  \cricket
  r4 \times 2/3 { c,,16^\mp c r } r8 r2 |
  \saNormal
  b'2^\mf^\< ( fis^\f^\> ) |
  b^\mf^\< ( g4^\f^\> fis ) |
  dis2^\mp ( fis |
  gis ais4 fis8 f |
  e2 fis |
  cis2. d4 ) |
  r8 dis4^\mf d8 cis8 \times 2/3 { cis16 e gis } b16^\f dis8^\mf d16 |
  cis16^\< ais fis dis cis gis cis' b ais^\> fis e cis ais fis g' fis^\mf |
  r8 fis ~ \times 2/3 { fis8 f e } r  \cricket
  \fatText \monoShift s8^\markup \whiteout "[laughter]" s4 |
  s1 |
}

altoWordsBeginning = \lyricmode {
  Hi see see I see I see
  I would ties
  hic -- cup
  I ah I you so nice
  You're so pret -- ty
  \repeat unfold 5 { You're so nice }
  pret -- ty
  â
  cra -- zy love is what I'm done and you
  are ev' -- ry -- thing I want to be and one
  Wel -- come sign is Sond -- heim
  And fa -- ther dat dat
  \repeat unfold 2 { you're so nice }
  \repeat unfold 1 { cra -- zy love is what I'm done and you }
  \repeat unfold 1 { and you }
  cra -- zy love i
  zzhh
  bait
  Bil -- ly Bill
  slow -- er 
  nine and five
  oh God
  oh my God you're so pret -- ty and you're so nice
  \repeat unfold 10 { pret -- ty nice } pret -- ty
  par -- ty and
  I've got a sec -- ret
  will
  \repeat unfold 4 { pret -- ty }
  cra -- zy love is what I'm fun par -- ty and
  Wel I want find bind of a sss kind a
  pret -- ty
  pret -- ty
  cra -- zy love
  l'un vient de l'au -- tre
  oh ouais c'est ça, tu es mon tout ce~qu'il y a
  I say to -- day's gon -- na be a good
  sss
  \repeat unfold 24 \skip 1
  my on -- ly face
  I'm gon -- na say pret -- ty five times
  oh I wan -- na kill your f
  oh I wan -- na kill your face
  oh I wan -- na kill your face
  oh I wan -- na kill your face
  pret shhh
  par -- ty
  cra -- zy love we're gon -- na par
  shhh
  \repeat unfold 64 \skip 1
  weee
  yeah
  oh my God
  oh my God
  yeah
  eee
  cra -- zy love is what I'm done
  nice
  oh my God
  mom -- my
  pret -- ty
  oh my God
  eee
  pret -- ty
  ooo
  ooo
  ooo
  doo doo doo doo doo doo doo doo ba
  \repeat unfold 8 { doo ba }
}

tenorBeginning = \relative c, {
  \clef bass
  fis2^\mf^\espressivo
  \clef "treble_8"
  %r4 cis8^\f^- ( \glissando \gSkip d16 e )
    cis''8^.^\f d^. c^- ( \glissando \gSkip d16 f^. )  |
  r16 c8^. c16^- ( \glissando \gSkip d f ) c^. cis^. r32 eis16. r32 cis16. \acciaccatura { c16 } bes8.^- ( \glissando ges'16 ) |
  r16 des^.^\> des^. des^. des8^.\bendAfter #3  des8^| r16 f8.^-\bendAfter #3  r16 f des bes |
  \times 2/3 { c8^_ bes^_ r8 } r8 des^- ( \glissando \gSkip e4 \gSkip a8 bes8-. ) |
  r8 c,4 b8 b4 r8 b |
  r8 bes8^-\bendAfter #1  r8 bes ~ \bendAfter #1 bes^. r r b |
  r8 b^-\bendAfter #1  r4 r8 bes^- r4 |
  r16 \acciaccatura { a16 } gis8.^\p r4 r2 |
  R1 |
  R1*5/4 |
  R2. |
  R1*7/8 |
  R1*7/8 |
  R1*7/8 |
  R1*5/4 |
  r1. cis,4^\f e8 |
  fis4 a8 fis4 e8 cis4 e8 a,8. cis a a |
  \cricket c'8 c |
  \tNormal
  r4. b,8^\mf^\> |
  e a b, fis' |
  b r e b |
  a e' fis dis |
  b dis^\mp r4 |
  R2 | R2 | R2 | \cricket r8. c16^\mf c r8. |
  R1*16/8 |
  \tNormal
  fis,4^\f gis8 b4 gis8 fis4 gis8 e4 r8 r4. r8 |
  fis4 gis8 b8 r4 |
  R1*5/8 |
  R1*7/8 |
  \times 2/3 { e4 dis cis } \times 2/3 { r4 gis'8 ~ } |
  gis8. fis16 ~ fis8. e8. |
  d4 r4 |
  r8. a'16^\mp^\< ~ a4 d2^\mf ~ |
  d16 r8. r4 r8. \cricket \tri c,16^\f ~ \tri c r8. |
  c8. c r4. r4 c8^\mf^\markup \italic "croassement" |
  c8 r8 r2. |
  R1*12/8 |
  r4 r16 c8 r16 |
  R2 |
  R1*6/8 |
  \tNormal bes4^\f c8 ees4 c8 bes4 c8 aes4. |
  bes4. aes |
  bes4. des4 bes8 aes4 bes8 |
  des,4 \cricket c'8^\mf c r4 |
  \tNormal c,8^\> g' c g |
  c e c e |
  g e g bes |
  g bes c g |
  c e c r |
  \clef treble
  g' \cricket c,,4 \saNormal bes''8^\p |
  R2 |
  \tNormal r4 \times 2/3 { cis,,4^\f e8 } e,4 |
  R1*5/16 |
  ees2.^\ff r4 |
  r4 e'-.^\mp\espressivo c'-.^\p\espressivo r8 aes^\mp^\espressivo |
  r16 ees,4.^\ff r16 \cricket c'16^\mf c c8 \times 2/3 { c c c } |
  c16 c c4.^\f^\markup \italic "loogie" ~ c4 r |
  \tNormal r8 ees4^\mf d8 ~ d c4 bes8 |
  d8 ees4 f8 r8 d d d |
  d8 des c b r c b d |
  g,4 ges8 ges \cricket \times 2/3 { c8 c c } \times 2/3 { c c c } |
  c4. r4.
  R1*9/8 |
  \tNormal
  d4.^\mf dis |
  e1^\fermata |
  r2. r16 a,8 a16 |
  a8 a a a a a16 a ~ a r8. |
  R2. |
  \cricket
  r8 c8 ~ |
  c c4 c8 ~ |
  c r8 r4 |
  R2 |
  R2 |
  r2.^\fermata r4 |
  \tNormal \clef bass r2. e,16 gis, a gis |
  b8. fisis16 ~ fisis8 gis ~ gis r8 e'16 gis, a gis |
  b8. fisis16 ~ fisis8 gis ~ gis r8 r4 |
  R2. |
  r4. \cricket c'4.^\f ~ c4 r8 |
  r8 c c c c c c c |
  c c r c r c r c |
  c c c c c c |
  R1*7/16 |
  \tNormal e8.^\mf d8 r |
  R1 |
  \cricket
  \override NoteHead #'stencil = #cloud
  \override NoteHead #'Y-extent = #ly:grob::stencil-height
  \override Stem #'stencil = ##f
  r2.
  c4*1/4^\f^\markup \italic \column { "cri de guerre maori" } c c c
  \revert NoteHead #'Y-extent
  \revert NoteHead #'stencil
  \revert Stem #'stencil
  R2. |
  R1 |
  \tNormal
  b8^\mf cis dis e r4 g4 |
  \cricket
  r2 \times 2/3 { r8 c, c } \times 2/3 { c c r } |
  R2 |
  R1*12/8 |
  \tNormal
  fis,4.^\f e d fis4 a |
  a, \cricket c'8^\mf c r |
  \tNormal
  fis,4^\f gis8 b4 gis8 fis8 r e8 |
  R1 |
  R1*7/8 |
  r2. gis4 ais |
  eis'2 |
  r8. \cricket c16^\f^\markup \italic "whisper" ~ c8 c16 c |
  c c c r r4 |
  \tNormal
  r8 \times 9/8 { b16-.^\p^\< ais-. b-.
  c-. cis-. d-. dis-.
  e-.^\mf } \cricket \tri c16^>^\f r4 |
  R2 |
  \tNormal
  bes8^\mf aes ges f |
  R2 |
  \cricket r4 c'2^\f |
  \tNormal
  r2 r8. e16^\mf ~ |
  e8 d4 r8 |
  \key b \major
  \cricket r2 r8 c ~ \times 2/3 { c r4 } |
  R1 |
  \tNormal gis'2^\mf^\< ( d^\f^\> ) |
  gis^\mf^\< ( e4^\f^\> cis ) |
  b2^\mp ( dis4 ~ dis16 fis8. |
  e2^\mp cis ~ |
  cis1 |
  b2 ais ) |
  r8^\f   \cricket
  \fatText \monoShift s2..^\markup \whiteout "Oh Norman, that lump on your left testicle." |
  \fatText \monoShift s2^\markup \whiteout "It's not cancerous."  \fatText \monoShift s2^\markup \whiteout "It's just an ingrown hair." |
  \fatText \monoShift s1^\markup \whiteout "[laughter]" |
  s1 |
}

tenorWordsBeginning = \lyricmode {
  Hi!
  Sot pot.
  Hi, shoe.
  Ay, soo bot.
  ha ha Hi
  zib -- bit uh
  ay uh ay
  zib -- bit uh a a
  Hi, sup. Hi, hi.
  Su, ah, ah.
  Zit a a.
  ay
  and you
  are ev' -- ry -- thing I want to be and one
  Wel -- come
  Wel -- come I wel -- come sign
  I was in a sign wel -- come at
  Thank you.
  cra -- zy love is what I'm done
  cra -- zy lo
  nine and five
  nine and five ten
  ty
  pre
  shhh
  dad -- dy
  â â
  nice
  cra -- zy love is what I'm fun
  par -- ty
  I got a sec -- ret you wel -- come
  Wel -- come I want to find in a bind of a kind in a mind on a rind the hind sss signed
  sec -- ret four
  FRAME
  ßolhcs
  "what ?"
  you
  FRAME
  Oh my God, that was so her -- pes chhhhut
  oh l'au -- tre oh ouais c'est ça tu es mon tout ce~qu'il y a
  I say to -- day's gon -- na
  Oh my God, you're so nice.
  Bro
  cra -- zy
  love
  He's the best darn shoot -- er in the West
  that's so nice...
  oh I wan -- na kill your face
  oh I wan -- na kill your face
  nice
  we're gon -- na par
  I wan -- na par
  uh uh uh
  you know I X D D ah
  pret -- ty
  \repeat unfold 4 \skip 1
  give 'im the stick yeah
  you're so pret -- ty
  I've got a se -- cret four
  Wel -- come
  par -- ty on is one par
  cra -- zy love
  shhh no one has to know
  \repeat unfold 8 da
  f
  par -- ty one two
  tsss
  pret -- ty
  nice
  ooo
  ooo
  ooo
}

bassBeginning = \relative c' {
  \clef "treble_8"
  cis8^\f^- ( \glissando \gSkip d16 fis ) \cricket \tri cis \tri cis \tri cis \tNormal cis!^_ ~ cis8\bendAfter #2  c^- ( \glissando \times 2/3 { \gSkip e a ) \cricket \tri cis, } |
  \tri c \tNormal b8^- ( \glissando \times 2/3 { fis' ) \cricket \tri c \tri c } \tNormal \times 2/3 { b4^- ( \glissando e8 ) } \cricket \tri c16 \tri c \tNormal bes,8^- ( \glissando |
  \times 2/3 { e8^\> ) \cricket \tri c' \tri c } \tri c \tNormal b b4^- ( \glissando \times 2/3 { c'16 ) d,8 b8 gis16 } |
  r32 b16. r8 b,4^- ( \glissando a'8^. ) bes8 \times 2/3 { fis'8 a,4^-\bendAfter #3  } |
  r16 ees'8.^- ( \glissando \times 2/3 { a,4 ) gis8 } \times 2/3 { g fis fis ~ } \times 4/5 { fis^-\bendAfter #2  \cricket \tri c'^. \bNormal f,,16 ~ } |
  f8^-\bendAfter #2  \cricket \tri c''^. \bNormal fis,4^_ \times 2/3 { fis8 ( e ) r } e r |
  r16 f8.^-\bendAfter #3  r16 e r8 r8 e \times 2/3 { r8 e ( cis^\p ) } |   
  R1*2 |
  R1*5/4 |
  R2. |
  R1*7/8 |
  R1*7/8 |
  f'8.^\mf^\falsettoFRENCH ees16 ~ ees4 r4. |
  ees8. des16 ~ des4 r4 r2 |
  R1.*5/4 |
  R1.*5/4 |
  R4 |
  b,8^\mf^\> fis' b fis |
  b dis b dis |
  fis dis fis a |
  r8 \cricket \tri c, \bNormal a' r8 |
  \cricket \tri c, \bNormal a'^\mp r4 |
  R2 | R2 | R2 | R2 |
  r1. cis,,4^\f e8 r |
  r1. cis4 e8 r |
  R2. |
  \cricket
  r8 c'8^\powerFRENCH  ~ c4 ~ c16 r |
  \bNormal
  dis,2^\mf ~ dis8 r4 |
  R2. |
  dis'4 ~ dis8. ~ dis8. |
  R2 |
  R1 |
  b8^\f cis16 e16 ~ e cis16 b8 cis16 a8.^\> b8. a16^\mf ~ |
  a4. g2. |
  r2. bes,4^\f ~ |
  bes4. ~ bes8 bes4 ~ bes2. |
  R2 |
  r8. f'16-.^\mf r8 ees8 |
  ges,8-. r16 ges aes8-. ees'-. des-. r8 |
  aes4-. r8 des4-. r8 fes4. r8 c'4^\f ~ |
  c8 r4 r8 g'8^\mf f |
  R1*9/8 |
  des,4.^\f ees4. |
  f4 aes8 c,8^\mf^\> |
  g' c g c |
  e r4 e8 |
  r4 e8 c |
  e g r c, |
  e r e \cricket c ~ |
  c \bNormal g'^\p r8. \cricket c,16^\mf^\markup \italic "californien" ~ |
  c4 r2 |
  R1*5/16 |
  R1 |
  \bNormal
  r4 c4-.^\mp\espressivo r8 \cricket c^\f c c |
  c c c c r4 \saNormal g'''4^\mp^\markup \italic "squeak" ~ |
  g1 ~ |
  g2 \bNormal r8 f,,,4^\mf f8 |
  bes,8 r4 f8 bes8 r4 f8 |
  bes8 r d g, r d' g, d' |
  ees r c a r f r f |
  R2. |
  R1*9/8 |
  d'4. b |
  g1^\fermata |
  r2. r16 a8 a16 |
  a8 a a a a a16 a ~ a r8. |
  \cricket
  r2 r16 c' c c |
  R4 |
  \bNormal
  b,8^\> fis' b fis |
  b dis b dis |
  fis dis fis b^\f |
  \cricket r8 c,4.^\mf^"fry" ~ |
  c2.^\fermata ~ c4 |
  R1 |
  \saNormal r4.. gis'''16^\mp ~ gis4.. r16 |
  \cricket r2.. \tri c,,,8^\mf |
  r8. \tri c r \tri c |
  %r4. r8 c4 ~ c c8 |
  R1*9/8 |
  r2. c4^\f ~
  c8 r8
  \bNormal
  \times 2/3 { gis4 ais cis } r8 fis8 ~ |
  fis4. r8 r \cricket c |
  R1*7/16 |
  R1*7/16 |
  R1 |
  \override NoteHead #'stencil = #cloud
  \override NoteHead #'Y-extent = #ly:grob::stencil-height
  \override Stem #'stencil = ##f
  r2.
  c4*1/4^\markup \italic \column { "cri de guerre maori" } c c c
  \revert NoteHead #'Y-extent
  \revert NoteHead #'stencil
  \revert Stem #'stencil
  \bNormal
  c2.^\mp^\markup \italic "tiny" ~ |
  c1 ~ |
  c2. e,,4^\mf |
  R1 |
  r4 fis4 |
  R1. |
  R1*13/8 |
  a4^\mf b4 cis8 |
  \cricket
  r2. r4 c'8 ~ |
  c c4 c c4 r8 |
  R1*7/8 |
  \bNormal
  r2. gis,4^\f gis |
  cis,8 \cricket c''4.
  \bNormal
  fis,,2^\mp ~ |
  fis ~ |
  fis ~ |
  fis ~ |
  fis8 r4. |
  R2 |
  r4. \cricket c''16^\mf c
  c c8. r2 |
  R2. |
  R2 |
  \bNormal \key b \major fis,,4^\mf r8 dis' cis4 \times 2/3 { r8 gis g } |
  fis8 fis \times 4/5 { r8 fis16 dis' fis, } d'16 cis8 r16 r cis8 ais16 |
  a4 r8 b cis e r b |
  r8 a^\< ~ \times 2/3 { a cis e } b'4^\f^\> ais |
  b8^\mf ais gis fis gis fis e dis |
  cis dis e gis fis4. r8 |
  cis dis e gis fis4. r8 |
  e^\< gis ais b cis^\> fis, gis ais^\mf |
  r16 fis,2... ~ |
  fis2^\fermata ~ \times 2/3 { fis4 gis ais } |
  \times 2/3 { r4 dis d } r8 ais4. |
  \cricket
  \fatText \monoShift s1^\markup \whiteout "[fry]" |
}

bassWordsBeginning = \lyricmode {
  Hi! Dib -- bit uh
  Hi, she
  zib -- bit ay duh fuh
  ay dil -- kuh
  Hi zib -- bit duh
  ay ay
  zi -- bit duh
  ah ooze
  ah dit ay, ah
  zi -- fit duh
  ay dut ay dut
  a a see
  a sit a a
  \repeat unfold 2 { pret -- ty }
  Wel -- come I wind sign I
  wel -- come sign I well that
  s at t at
  \repeat unfold 2 { and you }
  zzhh
  Bill
  ten
  cra -- zy love is what I'm done
  par -- ty and
  you're so
  dum dum dum doo dat dum dum
  dum dum dum
  craze
  pret -- ty
  will you keep it
  Wel -- come I want to find bind kind in a mind a rind be sss had
  nice
  ßolhcs
  DAS IST EIN GRO -- ßE PRET -- TY. 
  eeee
  dum ba
  dut ba dut ba dut da dum da dum da dum da dum dum dum 
  cra -- zy
  love
  He's the best darn shoot -- er in the West
  fat Bud -- dah
  Wel -- come I want to find in a bind of a kind
  uhhh
  eee
  t t t
  %awww shit
  yeah
  cra -- zy love par
  ah
  \repeat unfold 4 \skip 1
  weee
  yeah
  nice
  will you keep
  you're so vio -- lent
  cra -- zy love
  sss
  ooo
  you're so pret -- ty
  dum ba dum ba da
  dum dum
  ba dum ba da dum dum ba
  dum ba dum ba
  ba
  dum ba da dum dum
  girl I love you, girl I love you,
  girl I love you so,
  gir -- ly please oh please
  gir -- ly please oh girl I love you
  doom
}

%%% PDF

\score {
  \removeWithTag #'midi
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { #(set-accidental-style 'neo-modern) \numericTimeSignature << { \set Staff.midiMaximumVolume = #1.0
        \sopranoBeginning } { \marksBeginning  } >> }
      \lyricsto "soprano" \new Lyrics { \sopranoWordsBeginning }
    >>
    \new Staff \with { \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 1))
       instrumentName = #"Elsa" %shortInstrumentName = #"" %\markup { \concat { E \super l .} } 
} <<
      \new Voice = "alto" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \altoBeginning }
      \lyricsto "alto" \new Lyrics { \altoWordsBeginning }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \tenorBeginning }
      \lyricsto "tenor" \new Lyrics { \tenorWordsBeginning }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \bassBeginning }
      \lyricsto "bass" \new Lyrics { \bassWordsBeginning }
    >>
  >>
  \layout {
    \context {
      \Voice
      autoBeaming = ##f
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
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
}

%%% MIDI
\score {
  \removeWithTag #'layout
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { #(set-accidental-style 'neo-modern) \numericTimeSignature << { \set Staff.midiMaximumVolume = #1.0
        \sopranoBeginning } { \marksBeginning } >> }
      \lyricsto "soprano" \new Lyrics { \sopranoWordsBeginning }
    >>
    \new Staff \with { \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 1))
       instrumentName = #"Elsa" %shortInstrumentName = #"" %\markup { \concat { E \super l .} } 
} <<
      \new Voice = "alto" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \altoBeginning }
      \lyricsto "alto" \new Lyrics { \altoWordsBeginning }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \tenorBeginning }
      \lyricsto "tenor" \new Lyrics { \tenorWordsBeginning }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \bassBeginning }
      \lyricsto "bass" \new Lyrics { \bassWordsBeginning }
    >>
  >>
\midi {}
}
