\version "2.14.0"
% copy and paste from larger version
\include "defs-devel.ly"
\include "marksHelsinki.ly"
\include "sopranoHelsinki.ly"
\include "altoHelsinki.ly"
\include "tenorHelsinki.ly"
\include "bassHelsinki.ly"

#(set-global-staff-size 12.60)
%#(set-default-paper-size "b4" 'landscape)
#(set-default-paper-size "a4")
#(ly:set-option 'point-and-click #f)

\header {
  title = "J-sho"
  composer = "Mike Solomon"
}

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 5\mm
  %top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  %bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  %ragged-right = ##f
  %left-margin = 0.75\in
  %right-margin = 0.75\in
  %top-margin = 0.5\in
  %bottom-margin = 0.6\in
  %ragged-last-bottom = ##f
}

\score {
<<
  \new ChoirStaff <<
    \new Staff = "sopstaff" <<
      \set Staff.instrumentName = #"Soprano I"
      \set Staff.shortInstrumentName = #"S.I"
      \new Voice = "sopranoA" {
        << \sopranoA \marks >>
      }
      \lyricsto "sopranoA" \new Lyrics { \sopranoWordsA }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Soprano II"
      \set Staff.shortInstrumentName = #"S.II"
      \new Voice = "sopranoB" {
        \sopranoB
      }
      \lyricsto "sopranoB" \new Lyrics { \sopranoWordsB }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Soprano III"
      \set Staff.shortInstrumentName = #"S.III"
      \new Voice = "sopranoC" {
        \sopranoC
      }
      \lyricsto "sopranoC" \new Lyrics { \sopranoWordsC }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Soprano IV"
      \set Staff.shortInstrumentName = #"S.IV"
      \new Voice = "sopranoD" {
        \sopranoD
      }
      \lyricsto "sopranoD" \new Lyrics { \sopranoWordsD }
    >>
  >>
  \new ChoirStaff <<
    \new Staff <<
      \set Staff.instrumentName = #"Alto I"
      \set Staff.shortInstrumentName = #"A.I"
      \new Voice = "altoA" {
        \altoA
      }
      \lyricsto "altoA" \new Lyrics { \altoWordsA }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Alto II"
      \set Staff.shortInstrumentName = #"A.II"
      \new Voice = "altoB" {
        \altoB
      }
      \lyricsto "altoB" \new Lyrics { \altoWordsB }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Alto III"
      \set Staff.shortInstrumentName = #"A.III"
      \new Voice = "altoC" {
        \altoC
      }
      \lyricsto "altoC" \new Lyrics { \altoWordsC }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Alto IV"
      \set Staff.shortInstrumentName = #"A.IV"
      \new Voice = "altoD" {
        \altoD
      }
      \lyricsto "altoD" \new Lyrics { \altoWordsD }
    >>
  >>
  \new ChoirStaff <<
    \new Staff <<
      \set Staff.instrumentName = #"Tenor I"
      \set Staff.shortInstrumentName = #"T.I"
      \new Voice = "tenorA" {
        \tenorA
      }
      \lyricsto "tenorA" \new Lyrics { \tenorWordsA }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Tenor II"
      \set Staff.shortInstrumentName = #"T.II"
      \new Voice = "tenorB" {
        \tenorB
      }
      \lyricsto "tenorB" \new Lyrics { \tenorWordsB }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Tenor III"
      \set Staff.shortInstrumentName = #"T.III"
      \new Voice = "tenorC" {
        \tenorC
      }
      \lyricsto "tenorC" \new Lyrics { \tenorWordsC }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Tenor IV"
      \set Staff.shortInstrumentName = #"T.IV"
      \new Voice = "tenorD" {
        \tenorD
      }
      \lyricsto "tenorD" \new Lyrics { \tenorWordsD }
    >>
  >>
  \new ChoirStaff <<
    \new Staff <<
      \set Staff.instrumentName = #"Bass I"
      \set Staff.shortInstrumentName = #"B.I"
      \new Voice = "bassA" {
        \bassA
      }
      \lyricsto "bassA" \new Lyrics { \bassWordsA }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Bass II"
      \set Staff.shortInstrumentName = #"B.II"
      \new Voice = "bassB" {
        \bassB
      }
      \lyricsto "bassB" \new Lyrics { \bassWordsB }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Bass III"
      \set Staff.shortInstrumentName = #"B.III"
      \new Voice = "bassB" {
        \bassB
      }
      \lyricsto "bassB" \new Lyrics { \bassWordsB }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Bass IV"
      \set Staff.shortInstrumentName = #"B.IV"
      \new Voice = "bassD" {
        \bassD
      }
      \lyricsto "bassD" \new Lyrics { \bassWordsD }
    >>
  >>
  >>
  \layout {
%  \context { \Score \override NonMusicalPaperColumn #'allow-loose-spacing = ##f }
   \context {
     \Voice
     \remove "Forbid_line_break_engraver"
     \override Beam #'breakable = ##t
     \override TupletBracket #'breakable = ##t
     \override TupletNumber #'breakable = ##t
     \override TextScript #'layer = #5
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
      \override LyricText #'layer = #5
      \override LyricHyphen #'layer = #5
    }
    \context {
      \TabStaff
      \override TimeSignature #'style = #'numbered
    }
  }
}

