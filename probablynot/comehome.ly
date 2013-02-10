\version "2.14.0"
% Er hat mehr Torf als eine Kuh von Düsseldorf
% Ich wette eine Mark
% dass Düsseldorf wird für die nächsten 100 Jahre stark
\include "defs.ly"

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
  title = "come home"
}

marks = {
  \tempo "avec une grande souplesse rythmique" 4=48  
  \time 4/4
  s8
  s1*11 |
  \time 2/4
  s2 |
  \time 4/4
  s1*2 |
  \time 2/4
  s2 |
}

soprano = \relative c' {
  \key ees \major
  \autoBeamOff
  \partial 8
  bes8 |
  f' g4 ees8 f c c ees |
  f c c bes bes ees4 f8 |
  f g4 ees8 f c c ees |
  bes' g f ees f4 g |
  ees g ees g |
  ees2. r8 bes |
  aes g f bes g f ees bes' |
  des c bes ees c bes aes ees' |
  f ees g ees c d ees c' |
  bes bes, ees f aes [ g ] ees [ e ] |
  f4 c' fis, c' |
  bes4 r8 g |
  f ees g bes a f c' bes |
  ees4 ees8 [ d ] g, c4 b8 ~ |
  b g4 r8 |  
}

sopranoWords = \lyricmode {
  So qui -- et
  A -- lone at night
  My on -- ly friend my lo -- ver.
  Dis -- qui -- et -- ing so -- li -- tude since
  You have gone a -- way.
  Come home.
  Come home.
  Come home.
  I can't be -- lieve I'm say -- ing this,
  It star -- ted with a sim -- ple kiss.
  If this is bliss then I'm re -- missed as
  Bliss has gone a -- way.
  Come home.
  Come home.
  Come home.
  I've passed the point of past re -- grets and
  still I wish you'd stayed.
  So
}


\score {
 \new Staff \with { instrumentName = \markup { \column { Marie Elsa Ryan Eudes } } %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { \numericTimeSignature << \soprano \marks >> }
      \lyricsto "soprano" \new Lyrics { \sopranoWords }
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
