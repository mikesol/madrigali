#(set-global-staff-size 15.87)

%%%%%% ending with E major
%%%%%% then D major
%%%%%% then B major (if happy)
%%%%%% then D major (why oh why)
%%%%%% C-major happy going down

\version "2.17.0"
\include "defs-devel.ly"

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

\header {
  %title = "wal'dOz"
  title = "The Tragedy of Intent VI"
  subtitle = \markup \center-column { "bi-curious + three tongues" "pour Marie et Elsa" }
  composer = "Mike Solomon"
}

%pluslent = \tempo 4=120
%listesso = \tempo 4=180

pluslent = \tempo "plus lent"
listesso = \tempo "l'istesso tempo"

diatonicScale = \relative c' { c d e f g a b }

firstPart = {
  \modalTranspose c b, \diatonicScale \relative c'' {
    \berioGoalposts
    \override NoteHead #'style = #'harmonic-mixed
    c4 b8 b \bar "" r2 \bar ""
    a4 c8 b \bar "" r8 a4 r8 b4\bendAfter #-2 \bar "" r2 \bar ""
    c4 ( \glissando a8 ) \bar "" r4 \bar ""
    g4 d'8 c4 \bar "" r4. \bar ""
    b4 r8 \bar "" c4.\bendAfter #-3 \bar "" r4. \bar "" b2\bendAfter #-3 \bar "" r4. \bar ""
    a4 r8 \bar "" a e'4 d2 r8 \bar ""
    a8 a8 \times 2/3 { a8 b d } \times 2/3 { b a4 ~ } a8 r4 \bar ""
    \times 2/3 { r8 a a } \times 2/3 { a8 b d } \times 2/3 { b a4 } b8 ( \glissando a4 ) r4 \bar ""
    a8 c \times 2/3 { b4 b8 } \times 2/3 { b c e } d8 c4 r8 \bar ""
    \times 2/3 { b4 d c } \times 2/3 { r4 c8 } \times 2/3 { c8 d f } e d \bar ""
    e4\bendAfter #-2 r8 e4\bendAfter #-2 r8 \bar ""
    c8 d \bar ""
  }
}

marks = {
  \tempo "libero (ma insieme)"
  \cadenzaOn
  $(skip-of-length firstPart)  
}

firstPartWords = \lyricmode {
  Damn nig -- ga
  Damn nig -- ga, uh, uh
  Damn
  Damn nee -- ga
  Damn uh, uh
  Damn Con -- chi -- ta
  Damn Con -- chi -- ta Gon -- za -- lez
  Damn Con -- chi -- ta Gon -- za -- lez, uh
  Damn nig -- ga, Con -- chi -- ta Gon -- za -- lez
  Con -- chi -- ta, Con -- chi -- ta Gon -- za -- lez, uh, uh
  Damn
}

soprano = {
  \autoBeamOff
  \firstPart
  \relative c'' {
  }
}

sopranoWords = \lyricmode {
  \firstPartWords
}

mezzo = {
  \autoBeamOff
  \firstPart
}

mezzoWords = \lyricmode {
  \firstPartWords
}

%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Marie" %shortInstrumentName = #"M."
} <<
      \new Voice = "soprano" { << { \numericTimeSignature 
        \soprano
      } {
        \marks
      } >> }
      \lyricsto "soprano" \new Lyrics {
        \sopranoWords
      }
    >>
    \new Staff \with { instrumentName = #"Elsa" %shortInstrumentName = #"R."
} <<
      \new Voice = "mezzo" { \numericTimeSignature
        \mezzo
      }
      \lyricsto "mezzo" \new Lyrics {
        \mezzoWords
      }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override TextScript #'layer = #6
      \override NoteHead #'layer = #7
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Metronome_mark_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override TimeSignature #'whiteout = ##t
    }
    \context {
      \Lyrics
      %\override LyricText #'whiteout = ##t
      \override LyricText #'layer = #6
    }
    \context {
      \Score
      \remove "Metronome_mark_engraver"
      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
  \midi {}
}
