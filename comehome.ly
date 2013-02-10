\version "2.14.0"
% Er hat mehr Torf als eine Kuh von Düsseldorf
% Ich wette eine Mark
% dass Düsseldorf wird für die nächsten 100 Jahre stark
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
  title = "Come home"
}

marks = {
\time 2/2
\tempo 2=60
}

soprano = \relative c' { \autoBeamOff
  \partial 4
  \key ees \major
  bes4 |
  f' g2 ees4 |
  f c c ees |
  f c c bes |
  bes ees2 f4 |
  f g2 ees4 |
  f c c ees |
  bes' g f ees |
  f2 g |
  ees g ees g |
  ees1 ~ |
  ees2. r4 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  r4 bes c ees |
  aes ( g ) ees ( des ) |
  c2 r |
  b r |
  bes1 |
}

sopranoWords = \lyricmode {
  So qui -- et a -- lone at night,
  My on -- ly friend, my lo -- ver.
  Dis -- qui -- et -- ing so -- li -- tude
  Since you have gone a -- way.
  Come home, come home, come home.
  Has gone a -- way come home, home, home
}

alto = \relative c' { \autoBeamOff
  \partial 4
  \key ees \major
  bes4 |
  f' g2 ees4 |
  f c c ees |
  f c c bes |
  bes ees2 f4 |
  f g2 ees4 |
  f c c ees |
  bes' g f ees |
  des2 ees |
  c r ces r4 bes |
  f' g2 ees4 |
  f c c ees |
  f c c bes |
  bes ees2 f4 |
  f g2 ees4 |
  f c c ees |
  bes' g f ees |
  f2 g |
  ees g |
  ees g |
  ees1 |
}

altoWords = \lyricmode {
  So qui -- et a -- lone at night,
  My on -- ly friend, my lo -- ver.
  Dis -- qui -- et -- ing so -- li -- tude
  Since you have gone a -- way.
  Come home, home,
  So qui -- et a -- lone at night,
  My on -- ly friend, my lo -- ver.
  Dis -- qui -- et -- ing so -- li -- tude
  Since you have gone a -- way.
}

tenor = \relative c' { \autoBeamOff
  \key ees \major
  \clef "treble_8"
  r4 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  r2. bes4 |
  aes2. bes4 |
  aes g f bes |
  g f ees bes' |
  des c bes ees |
  c bes aes ees' |
  f ees g ees |
  c d ees c' |
  bes g f ees |
  des2 ees4 ( e ) |
  f2 c' |
  fis, c' |
  g1 |
}

tenorWords = \lyricmode {
  Come home
  I can't be -- lieve I'm say -- ing this
  It star -- ted with one sim -- ple kiss
  If this is bliss then I'm re -- miced as bliss has gone a -- way
  Come home, come home, come home
}

bass = \relative c' {
  \key ees \major
  \clef bass
  r4 |
  R1*20 |
}

bassWords = \lyricmode {
}

middle = {

}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { \numericTimeSignature << \soprano \marks >> }
      \lyricsto "soprano" \new Lyrics { \sopranoWords }
    >>
    \new Staff \with { \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 1))
       instrumentName = #"Elsa" %shortInstrumentName = #"" %\markup { \concat { E \super l .} } 
} <<
      \new Voice = "alto" { \numericTimeSignature \alto }
      \lyricsto "alto" \new Lyrics { \altoWords }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature \tenor }
      \lyricsto "tenor" \new Lyrics { \tenorWords }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { \numericTimeSignature \bass }
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
\midi {}
}
