\version "2.15.3"
#(set-default-paper-size "a4")
#(set-global-staff-size 12.60)
#(ly:set-option 'point-and-click #f)

\include "defs-later.ly"
\include "marks-later.ly"
\include "soprano-later.ly"
\include "alto-later.ly"
\include "tenor-later.ly"
\include "bass-later.ly"

\header {
  title = "LATER"
  composer = "Mike Solomon"
  poet = "Wassily Kandinsky"
  tagline = ""
}

\score {
<<
  \new ChoirStaff <<
    \new Staff << \set Staff.instrumentName = #"Soprano I" \set Staff.shortInstrumentName = #"S. I"
      \new Voice = "sopranoOne" << \sopranoOne \marks >>
      \lyricsto "sopranoOne" \new Lyrics \sopranoOnewords >>
    \new Staff << \set Staff.instrumentName = #"Soprano II" \set Staff.shortInstrumentName = #"S. II"
      \new Voice = "sopranoTwo" \sopranoTwo
      \lyricsto "sopranoTwo" \new Lyrics \sopranoTwowords >>
    \new Staff << \set Staff.instrumentName = #"Soprano III" \set Staff.shortInstrumentName = #"S. III"
      \new Voice = "sopranoThree" \sopranoThree
      \lyricsto "sopranoThree" \new Lyrics \sopranoThreewords >>
    \new Staff << \set Staff.instrumentName = #"Soprano IV" \set Staff.shortInstrumentName = #"S. IV"
      \new Voice = "sopranoFour" \sopranoFour
      \lyricsto "sopranoFour" \new Lyrics \sopranoFourwords >>
  >>
  \new ChoirStaff <<
    \new Staff << \set Staff.instrumentName = #"Alto I" \set Staff.shortInstrumentName = #"A. I"
      \new Voice = "altoOne" \altoOne
      \lyricsto "altoOne" \new Lyrics \altoOnewords >>
    \new Staff << \set Staff.instrumentName = #"Alto II" \set Staff.shortInstrumentName = #"A. II"
      \new Voice = "altoTwo" \altoTwo
      \lyricsto "altoTwo" \new Lyrics \altoTwowords >>
    \new Staff << \set Staff.instrumentName = #"Alto III" \set Staff.shortInstrumentName = #"A. III"
      \new Voice = "altoThree" \altoThree
      \lyricsto "altoThree" \new Lyrics \altoThreewords >>
    \new Staff << \set Staff.instrumentName = #"Alto IV" \set Staff.shortInstrumentName = #"A. IV"
      \new Voice = "altoFour" \altoFour
      \lyricsto "altoFour" \new Lyrics \altoFourwords >>
  >>
  \new ChoirStaff <<
    \new Staff << \set Staff.instrumentName = #"Tenor I" \set Staff.shortInstrumentName = #"T. I"
      \new Voice = "tenorOne" \with { \consists "Balloon_engraver" } \tenorOne
      \lyricsto "tenorOne" \new Lyrics \tenorOnewords >>
    \new Staff << \set Staff.instrumentName = #"Tenor II" \set Staff.shortInstrumentName = #"T. II"
      \new Voice = "tenorTwo" \with { \consists "Balloon_engraver" } \tenorTwo
      \lyricsto "tenorTwo" \new Lyrics \tenorTwowords >>
    \new Staff << \set Staff.instrumentName = #"Tenor III" \set Staff.shortInstrumentName = #"T. III"
      \new Voice = "tenorThree" \with { \consists "Balloon_engraver" } \tenorThree
      \lyricsto "tenorThree" \new Lyrics \tenorThreewords >>
    \new Staff << \set Staff.instrumentName = #"Tenor IV" \set Staff.shortInstrumentName = #"T. IV"
      \new Voice = "tenorFour" \with { \consists "Balloon_engraver" } \tenorFour
      \lyricsto "tenorFour" \new Lyrics \tenorFourwords >>
  >>
  \new ChoirStaff <<
    \new Staff << \set Staff.instrumentName = #"Bass I" \set Staff.shortInstrumentName = #"B. I"
      \new Voice = "bassOne" \with { \consists "Balloon_engraver" } \bassOne
      \lyricsto "bassOne" \new Lyrics \bassOnewords >>
    \new Staff << \set Staff.instrumentName = #"Bass II" \set Staff.shortInstrumentName = #"B. II"
      \new Voice = "bassTwo" \with { \consists "Balloon_engraver" } \bassTwo
      \lyricsto "bassTwo" \new Lyrics \bassTwowords >>
    \new Staff << \set Staff.instrumentName = #"Bass III" \set Staff.shortInstrumentName = #"B. III"
      \new Voice = "bassThree" \with { \consists "Balloon_engraver" } \bassThree
      \lyricsto "bassThree" \new Lyrics \bassThreewords >>
    \new Staff << \set Staff.instrumentName = #"Bass IV" \set Staff.shortInstrumentName = #"B. IV"
      \new Voice = "bassFour" \with { \consists "Balloon_engraver" } \bassFour
      \lyricsto "bassFour" \new Lyrics \bassFourwords >>
  >>
>>
\layout {
  \context { \Score \override TimeSignature #'style = #'numbered }
}
\midi {}
}
