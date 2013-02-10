\version "2.15.35"

\include "defs-devel.ly"

\header {
  title = "Les demoiselles"
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
falsettoFRENCH = \markup \italic \column { "voix de fausset" }
falsettoENGLISH = \markup \italic \column { "falsetto" }

marksBeginning = {
  \time 4/4
  \tempo "j'♥ christopher wool" 4=120
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
  \tempo 4.=156
  s1.*5/4
  s1.*5/4 |
  \time 2/8
  s4 |
  \time 2/4
  s2 | s2 | s2 | s2 | s2 |
  s2 | s2 | s2 | s2 |
  \time 7/16
  s1*7/16 |
  \time 15/8 |
  s1.*5/4 |
  \compoundMeter #'((12 8) (3 16))
  s1. s8. |
  \time 2/2
  s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

sopranoBeginning = \relative c'' {
  gis4^-^\f ( \glissando \gSkip c8 \gSkip e16 gis ) fis,8^- ( \glissando \gSkip gis16 a ) \times 2/3 { fis8^_ e'^_ r8 } |
  \times 2/3 { e,8^- ( \glissando b'-. ) gis } r8 \acciaccatura { dis'16 } fis,8 ~ fis dis \acciaccatura { dis16 } cis4^- ( \glissando |
  b'8^\> ) dis16 b fis8-. g-. \acciaccatura { gis16 } dis8.^- ~ \bendAfter # 2 dis16 \times 2/3 { a''8 gis, g } |
  \times 2/3 { d fis e } \acciaccatura { e16 } d8.^- ~ \bendAfter #2 d16 g8^. e^- \times 2/3 { r8 fis dis ~ } |
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
  c c16 c ~ c4 ~ |
  c16 r8. c16 c c c ~ |
  c4 r4 |
  r16 c c c c8. r16 |
  r4 c16 c c c ~ |
  c8 r r8. |
  R1.*5/4 |
  R1*27/16 |
  R1 |
  \saNormal
  r8 e8 dis e eis fis g gis |
  a4-. r4 r2 |
  R1 |
  r8 e8 dis e eis fis g gis |
  a4-. r4 r2 |
  r8 e8 dis e eis fis g gis |
  a gis fisis gis a ais b bis |
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
  fun, comme j'ai vu ta mère en short
  est-ce qu'elle est en -- ter -- rée en "short ?"
  fun comme j'ai vu ta mère en short
}

altoBeginning = \relative c''' {
  r16 a8.^-^\f ( ~ a4 \glissando \gSkip a8 [ \gSkip a16 bes16 ) ] c,4 ~ |
  \times 2/3 { \bendAfter #2 c8^. r8 b4^. a^- ~ } a8 a r \acciaccatura { f'16 } d8^- ( \glissando |
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
  ees'8.^\mf des16 ~ des4 r4. |
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
  r8. c16 c c r |
  \saNormal r1. cis4 e8 |
  fis4 a8 fis4 e8 cis4 e8 a,8. cis a |
  a1 ~ |
  a2. r4 |
  R1 |
  r8 gis' fisis gis a ais b bis |
  cis4-. r4 r2 |
  r8 b ais b bis cis d dis |
  e4 dis8 e f4 f |
  e8 eis fis4 fis eis8 fis |
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
  \repeat unfold 3 { you're so nice }
  and you're
  ev' -- ry -- thing that love me to be and fun
  tu sa -- vais "pas ?" ma mère est morte
  mon père "l'a" fou -- tu à la porte
}

tenorBeginning = \relative c' {
  \clef "treble_8"
  r4 cis8^\f^- ( \glissando \gSkip d16 e ) cis8^. d^. c^- ( \glissando \gSkip d16 f^. )  |
  r16 c8^. c16^- ( \glissando \gSkip d f ) c^. cis^. r32 eis16. r32 cis16. \acciaccatura { c16 } bes8.^- ( \glissando ges'16 ) |
  r16 des^.^\> des^. des^. \bendAfter #3 des8^. des8^| r16 \bendAfter #3 f8.^- r16 f des bes |
  \times 2/3 { c8^_ bes^_ r8 } r8 des^- ( \glissando \gSkip e4 \gSkip a8 bes8-. ) |
  r8 c,4 b8 b4 r8 b |
  r8 \bendAfter #1 bes8^- r8 bes ~ \bendAfter #1 bes^. r r b |
  r8 \bendAfter #1 b^- r4 r8 bes^- r4 |
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
  R2 | R2 | R2 | R2 |
  R1*7/16 |
  \time 15/8
  fis,4 gis8 b4 gis8 fis4 gis8 e4 r8 r4. |
  R1*27/16 |
  R1 | R1 | R1 | R1 | R1 |
  R1 | R1 | R1 |
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
  cra -- zy love is cra -- zy one and you're
  ev' -- ry -- thing that love me to be and fun
}

bassBeginning = \relative c' {
  \clef "treble_8"
  cis8^\f^- ( \glissando \gSkip d16 fis ) \cricket \tri cis \tri cis \tri cis \tNormal cis!^_ ~ \bendAfter #2 cis8 c^- ( \glissando \times 2/3 { \gSkip e a ) \cricket \tri cis, } |
  \tri c \tNormal b8^- ( \glissando \times 2/3 { fis' ) \cricket \tri c \tri c } \tNormal \times 2/3 { b4^- ( \glissando e8 ) } \cricket \tri c16 \tri c \tNormal bes8^- ( \glissando |
  \times 2/3 { e8^\> ) \cricket \tri c \tri c } \tri c \tNormal b b4^- ( \glissando \times 2/3 { c'16 ) d,8 b8 gis16 } |
  r32 b16. r8 b4^- ( \glissando a'8^. ) bes,8 \times 2/3 { fis'8 \bendAfter #3 a,4^- } |
  r16 ees'8.^- ( \glissando \times 2/3 { a,4 ) gis8 } \times 2/3 { g fis fis ~ } \times 4/5 { \bendAfter #2 fis^- \cricket \tri c'^. \tNormal f,16 ~ } |
  \bendAfter #2 f8^- \cricket \tri c'^. \bNormal fis,4^_ \times 2/3 { fis8 ( e ) r } e r |
  r16 \bendAfter #3 f8.^- r16 e r8 r8 e \times 2/3 { r8 e ( cis^\p ) } |   
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
  R1*7/16 |
  r1. cis,,4 e8 |
  fis4 a8 fis4 e8 cis4 e8 a,8. cis a |
  a1 ~ |
  a1 ~ |
  a1 ~ |
  a1 ~ |
  a1 ~ |
  a1 ~ |
  a1 ~ |
  a1 ~ |
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
  s at t at and you're
  ev' -- ry -- thing that love me to be and fun
  fun
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
%{    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
} <<
      \new Voice = "mike" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \mikeBeginning \mikeHolyShit \mikeUbiquitous \mikeCat }
      \lyricsto "mike" \new Lyrics { \mikeWords }
    >> %}
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
