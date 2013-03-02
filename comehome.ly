\version "2.15.35"

\include "defs-devel.ly"

\header {
  title = "come home"
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

marks = {
  \time 4/4
  \tempo "fragile" 4=64
  \partial 4 s4 |
  s1 |
}

soprano = \relative c'' {
}

sopranoWords = \lyricmode {
}

alto = \relative c''' {
}

altoWords = \lyricmode {
}

tenor = \relative c, {
}

tenorWords = \lyricmode {
}

bass = \relative c' {
}

bassWords = \lyricmode {
}

%%% PDF

\score {
  \removeWithTag #'midi
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { #(set-accidental-style 'neo-modern) \numericTimeSignature << { \set Staff.midiMaximumVolume = #1.0
        \soprano } { \marks  } >> }
      \lyricsto "soprano" \new Lyrics { \sopranoWords }
    >>
    \new Staff \with { \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 1))
       instrumentName = #"Elsa" %shortInstrumentName = #"" %\markup { \concat { E \super l .} } 
} <<
      \new Voice = "alto" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \alto }
      \lyricsto "alto" \new Lyrics { \altoWords }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \tenor }
      \lyricsto "tenor" \new Lyrics { \tenorWords }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \bass }
      \lyricsto "bass" \new Lyrics { \bassWords }
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
        \soprano } { \marks } >> }
      \lyricsto "soprano" \new Lyrics { \sopranoWords }
    >>
    \new Staff \with { \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 1))
       instrumentName = #"Elsa" %shortInstrumentName = #"" %\markup { \concat { E \super l .} } 
} <<
      \new Voice = "alto" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \alto }
      \lyricsto "alto" \new Lyrics { \altoWords }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \tenor }
      \lyricsto "tenor" \new Lyrics { \tenorWords }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \bass }
      \lyricsto "bass" \new Lyrics { \bassWords }
    >>
  >>
\midi {}
}
