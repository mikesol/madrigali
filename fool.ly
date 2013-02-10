\version "2.14.0"
% Er hat mehr Torf als eine Kuh von Düsseldorf
% Ich wette eine Mark
% dass Düsseldorf wird für die nächsten 100 Jahre stark
\include "defs-devel.ly"

#(set-global-staff-size 15.87)

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
  title = "Fool"
  composer = "Mike Solomon"
}

marks = {
  \partial 4*3
  s2. |
  s1 |
}

globals = {
  \key a \major
}


soprano = \relative c' {
  \autoBeamOff
  \globals
  r2. |
  R1 |
  R1 |
  r2 eis4 ~ \times 2/3 { eis8 e dis } |
  cis4 r4 r2 |
  R1 |
  R1 |
  e2. ~ \times 2/3 { e8 dis d } |
  cis4 r4 r2 |
}

sopranoWords = \lyricmode {
}

mezzo = \relative c' {
  \autoBeamOff
  \globals
  a4 b cis |
  a'2 r8 gis ~ \times 2/3 { gis fis dis } |
  d2 r8 gis ~ \times 2/3 { gis fis d } |
  \times 2/3 { cis bis cis ~ } cis4 ~ cis4. r8 |
  r4 a b cis |
  a'2 r8 gis ~ \times 2/3 { gis fis dis } |
  d2 r8 b'8 gis e |
  fis gis fis4 ~ fis4. r8 |
}

mezzoWords = \lyricmode {

}

alto = \relative c' {
  \autoBeamOff
  \globals
  r2. |
  fis2 r |
  b,1 |
  \times 2/3 { ais8 gisis ais ~ } ais4 cis4 ~ \times 2/3 { cis8 c b } |
  ais4 r4 r2 |
  fis'2 r |
  b,1 |
  cis ~ |
  cis4 r4 r2 |
}

altoWords = \lyricmode {

}

tenor = \relative c' {
  \autoBeamOff
  \globals
  \clef "treble_8"
  r2. |
  e2 r |
  a,2 gis |
  fis r |
  R1 |
  e'2 r |
  a,2 gis |
  a cis4 ~ \times 2/3 { cis8 c b }
  a4 r4 r2 |
}

tenorWords = \lyricmode {

}

bass = \relative c' {
  \autoBeamOff
  \globals
  \clef bass
  r2. |
  c2 r |
  f,2. cis4 |
  fis4. fis8 cis4. cis8 |
  fis,4 r4 r2 |
  c''2 r |
  f,2 e4 e, |
  a4. a8 e'4. e8 |
  a4 r4 r2 |
}

bassWords = \lyricmode {
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" << { \numericTimeSignature \soprano } \marks >>
      \lyricsto "soprano" \new Lyrics { \sopranoWords }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"" %\markup { \concat { E \super l .} } 
} <<
      \new Voice = "mezzo" { \numericTimeSignature \mezzo }
      \lyricsto "mezzo" \new Lyrics { \mezzoWords }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
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
}

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" << { \numericTimeSignature \soprano } \marks >>
      \lyricsto "soprano" \new Lyrics { \sopranoWords }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"" %\markup { \concat { E \super l .} } 
} <<
      \new Voice = "mezzo" { \numericTimeSignature \mezzo }
      \lyricsto "mezzo" \new Lyrics { \mezzoWords }
    >>
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"Mk."
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
  \midi {}
}
