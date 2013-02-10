\version "2.14.0"
% Er hat mehr Torf als eine Kuh von Düsseldorf
% Ich wette eine Mark
% dass Düsseldorf wird für die nächsten 100 Jahre stark
\include "defs.ly"

prayer = \markup \italic \column { "interspersed with" "hebrew prayer" }
horse = \markup \italic \column { "falling" "horse sound" }
seal = \markup \italic \column { "rising" "seal sound" }

pocoapoco = {
  \set crescendoText = \markup { \italic { cresc. poco a poco } }
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dotted-line
  \override DynamicTextSpanner #'bound-details #'left-broken #'text = #"(cresc.)"
}

nopocoapoco = {
  \unset crescendoText
  \unset crescendoSpanner
  \revert DynamicTextSpanner #'style
  \revert DynamicTextSpanner #'bound-details #'left-broken #'text
}

xx = 
#(define-music-function (parser location music) (ly:music?)
#{
  \tag #'layout $music
  \tag #'midi $(ly:music-compress (ly:music-deep-copy music) (ly:make-moment 4 3))
#})

xxx = 
#(define-music-function (parser location music) (ly:music?)
#{
  \tag #'layout $music
  \tag #'midi $(ly:music-compress (ly:music-deep-copy music) (ly:make-moment 10 9))
#})

yy = 
#(define-music-function (parser location music) (ly:music?)
#{
  \tag #'layout $music
  \tag #'midi $(ly:music-compress (ly:music-deep-copy music) (ly:make-moment 2 3))
#})

yyy = 
#(define-music-function (parser location music) (ly:music?)
#{
  \tag #'layout $music
  \tag #'midi $(ly:music-compress (ly:music-deep-copy music) (ly:make-moment 8 9))
#})

#(set-global-staff-size 17.82)

walking = \markup \italic "walking bass"

noswing = \markup \italic "(unswung)"

swing = \markup \italic "(swung)"

pocoaccel = \markup \italic "poco accel."

solo = \markup \italic "solo"

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
  title = "norman (age 29) wakes up"
}

marksFaithful = \relative c' {
  \tempo "calm" 4=76
  \time 3/4
  s2.*4 |
  \unfoldChange #76 #84 #12
  s2. s2.
  \unfoldChange #84 #160 #18
  \unfoldSwingChange #160 #180 #30 |
  \tempo "smooth" 2.=165
  \repeat unfold 9 \unfoldSwing #166
}

sopranoFaithful = \relative c' {
  \key b \major
  eis4^\p eis eis |
  eis4 gis fis |
  eis2 dis4 |
  cis2. |
  \pocoapoco
  b'4.^\p\< ais8 gis fis |
  e4. dis'4. |
  cis2. |
  ais4 b cis |
  dis gis,2 |
  fisis4 gis b |
  cis4 dis2 |
  cis4 dis e |
  fis8 b,4 ais gis8 |
  fis4 gis ais8 b |
  cis4 dis fis |
  r8 a8^\f ~ a2 |
  \nopocoapoco
  r8 gis,4^\mf gis8 gis4 |
  r8 g4 g8 g4 |
  r8 fis4 fis8 fis4 |
}

altoFaithful = \relative c' {
  \key b \major
  cis4^\p cis cis |
  cis eis dis |
  cis2 bis4 |
  cis2. |
  \pocoapoco
  gis'4.^\< fis8 e dis |
  cis4. b' |
  ais4. b8 ais gis |
  fisis4 gis ais |
  b4. ais8 gis fis |
  e4. dis |
  b'4. ais8 gis fis |
  a2 gis4 |
  fis2. |
  e4 dis cis |
  ais b dis |
  r8 fis8^\f ~ fis2 \nopocoapoco |
  gis4 ais b |
  ais b cis |
  dis8 b4 ais gis8 |  
}

tenorFaithful = \relative c {
  \key b \major
  \clef "treble_8"
  eis4^\p gis cis |
  bis ais ais |
  gis2 gisis4 |
  ais2. |
  \pocoapoco
  e'2^\< fis,4 |
  gis ais b |
  cis dis e4 |
  dis4. e8 dis cis |
  b4 dis,2 |
  cis'4 b cis |
  ais b cis |
  dis4. cis8 b ais |
  b4 fis b |
  ais4. gis |
  fis4 fis'2 |
  r8 dis^\f ~ dis2 \nopocoapoco |
  r8 e4^\mf e8 e4 |
  r8 dis4 dis8 dis4 |
  r8 dis4 dis8 dis4 |
}

bassFaithful = \relative c {
  \key b \major
  \clef bass
  R2. | R2. | R2. | R2. |
  \pocoapoco
  cis2.^\p\< |
  fis,2. |
  b2 cis4 |
  dis4. cis8 b ais |
  gis4 b dis |
  ais' gis2 |
  g,2 b'4 |
  a8 d,4 cis b8 |
  r8 fis4 fis8 fis4 |
  r8 fis4 fis8 fis4 |
  r8 fis4 fis8 fis4 |
  r8 c'4^\f \nopocoapoco fis,4 dis'8 |
  cis4 dis cis |
  b ais gis |
  fis gis ais |
}

sopranoWordsFaithful = \lyricmode {
  Nor -- man he stopped and he tied his shoe.
  Have you ev -- er heard my name
  Ro -- sen -- blatt Nor -- man
  He could -- n't be here
  I took a mes -- sage say -- ing
  leave it on the stoop af -- ter five.
  dat da da
  dat da da
  dat da da
}

altoWordsFaithful = \lyricmode {
  Nor -- man he stopped and he tied his shoe.
  Have you ev -- er heard my,
  have you ev -- er Ro -- sen -- blatt
  Have you ev -- er Nor -- man
  Have you ev -- er Nor -- man  Ro
  Ro -- sen -- blat stoop af -- ter five
  Sli -- ces and di -- ces and cof -- fee cof -- fee
}

tenorWordsFaithful = \lyricmode {
  Nor -- man he stopped and he tied his shoe.
  Ro -- sen -- blatt was a prize -- fight -- er
  Have you ev -- er Nor -- man
  He could -- n't
  Ro -- sen -- blatt
  Have you ev -- er
  Ro -- sen -- blatt
  Nor -- man
  stoop at five
  dat da da
  dat da da
  dat da da
}

bassWordsFaithful = \lyricmode {
  Nor -- man Ro -- sen
  Have you ev -- er
  Ros -- en -- blatt's hun -- gry
  Nor -- man's thir -- sty
  Nor -- man
  Ro -- sen -- blatt
  Ro -- sen -- blatt
  Ro -- sen -- blatt
  five Nor -- man
  Sli -- ces and di -- ces and makes a mean
}

%%% PDF
\score {
  \removeWithTag #'midi
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { #(set-accidental-style 'neo-modern) \numericTimeSignature << { \set Staff.midiMaximumVolume = #1.0
        \sopranoFaithful } { \marksFaithful } >> }
      \lyricsto "soprano" \new Lyrics { \sopranoWordsFaithful }
    >>
    \new Staff \with { \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 1))
       instrumentName = #"Elsa" %shortInstrumentName = #"" %\markup { \concat { E \super l .} } 
} <<
      \new Voice = "alto" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \altoFaithful }
      \lyricsto "alto" \new Lyrics { \altoWordsFaithful }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \tenorFaithful }
      \lyricsto "tenor" \new Lyrics { \tenorWordsFaithful }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
\bassFaithful }
      \lyricsto "bass" \new Lyrics { \bassWordsFaithful }
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
        \sopranoFaithful } { \marksFaithful } >> }
      \lyricsto "soprano" \new Lyrics { \sopranoWordsFaithful }
    >>
    \new Staff \with { \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 1))
       instrumentName = #"Elsa" %shortInstrumentName = #"" %\markup { \concat { E \super l .} } 
} <<
      \new Voice = "alto" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \altoFaithful }
      \lyricsto "alto" \new Lyrics { \altoWordsFaithful }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \tenorFaithful }
      \lyricsto "tenor" \new Lyrics { \tenorWordsFaithful }
    >>
    \new Staff \with { instrumentName = #"Eudes" %shortInstrumentName = #"P." %\markup { \concat { E \super u . } }
} <<
      \new Voice = "bass" { #(set-accidental-style 'neo-modern) \numericTimeSignature \set Staff.midiMaximumVolume = #1.0
        \bassFaithful }
      \lyricsto "bass" \new Lyrics { \bassWordsFaithful }
    >>
  >>
\midi {}
}
