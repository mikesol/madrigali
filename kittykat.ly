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
  title = "kitty kat"
  subtitle = "for Ryan"
  composer = "Mike Solomon"
}

%pluslent = \tempo 4=120
%listesso = \tempo 4=180

pluslent = \tempo "plus lent"
listesso = \tempo "l'istesso tempo"

marks = {
  \time 2/4
  \tempo 4=180
  \partial 4
  s4 |
  s2*7 |
  \pluslent
  \time 7/16
  s1*7/16 |
  \time 2/4
  s2*3 |
  \time 3/4
  s2 \listesso s4 |
  \time 2/4
  s2*2 |
  \time 3/16
  s1*3/16 |
  \pluslent
  \time 7/16
  s1*7/16 |
  \time 3/8
  s4. |
  \time 11/16
  s1*7/16 \listesso s4 |
  \time 3/8
  s4. |
  \time 7/16
  s1*7/16 |
  \time 2/4
  s2 |
  \time 8/12
  s1*8/12 |
  \time 5/16
  s1*5/16 |
  \time 7/12
  s1*7/12 |
  \time 7/16
  s1*7/16 |
  \time 3/8
  s4. |
  \time 7/16
  s1*7/16 |
  \time 4/4
  s1 |
  s1 |
  \time 2/4
  s2 |
  s2 |
  s2 |
  \time 3/4
  s2. |
  \time 5/4
  s1*5/4 |
  s1*5/4 |
  \time 4/4
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  \time 5/4
  s1*5/4 |
  \time 4/4
  s1 |
  s1 |
  s1 |
  \time 2/4
  s2 |
  s2 |
  \time 3/4
  s2. |
  \time 4/4
  s1 \bar "|."
}

alto = \relative c' {
  \autoBeamOff
  fis8^\f g |
  a4 a |
  a8 b a b |
  a4 \berioGoalposts r16 \harm f'8. ~ |
  \harm f16 \harm e,16 \harm e \harm e \saNormal fis8 g |
  a \berioGoalposts \harm b8 \harm f'4 |
  \harm e,16 \harm e \harm e r \saNormal fis8 g |
  a \berioGoalposts \harm f'8 \harm e,16 \harm e \harm e r |
  \saNormal g8 d16 e8 c |
  \cricket c2 ~ |
  c16 \saNormal g'8 d16 e8 c |
  \cricket c2 ~ |
  c16 \saNormal g'8 d16 e8 \cricket c8 \saNormal fis8 [ g ] |
  a4 a |
  a8 b a8 \berioGoalposts r16 \harm f' |
  \harm f \harm f r |
  \saNormal g,8 d16 e8 c |
  \cricket c4. |
  \saNormal
  g'8 d16 e8 r fis8 [ g ] |
  a8 \berioGoalposts \harm f'16 \harm f \harm f r |
  \saNormal g,8 d16 e8 c |
  \cricket r4 \times 2/3 { c8 c c } |
  c4 r4 \times 2/3 { r4 }
  \saNormal g'8 d16 e16 \cricket c16 ~ |
  c4 \times 2/3 { c8 c c c } |
  \saNormal
  a'8 b a r16 |
  a8 b a |
  \berioGoalposts \harm f'8 \harm d16 \harm e16 \cricket c,8. |
  c16 c c c c c8. ~ c2 ~ |
  c4.. c16 c c c c \saNormal fis8 g |
  a4 a |
  a8 b16 \berioGoalposts \harm f'16 ~ \harm f4 |
  \harm e,16 \harm e \harm e r \times 2/3 { \harm c'8 \harm c \harm d } |
  \times 2/3 { \harm d8 \harm c \cricket c, ~ } c4. r8 |
  \saNormal \berioGoalposts \harm c'16 \harm c \harm d r \times 2/3 { \harm c8 \harm c \harm d } \times 2/3 { \harm d8 \harm c \cricket c,8 ~ } c4 \saNormal fis8 g |
  \times 2/3 { a4 c,8 ~ } c2 ~ c8 r fis g |
  a8 r16 a \cricket c,8. \saNormal \berioGoalposts \harm f'16 ~ \harm f16 \harm e, \harm e \harm e \cricket \times 4/5 { c16 c c c c } |
  \saNormal
  a'2 ~ a8 b \times 2/3 { a r fis ~ } |
  \times 2/3 { fis4 e8 } d8. a'16 ~ a b8 \cricket c,16 ~ c4 |
  \saNormal
  \times 2/3 { r4 c d } \times 2/3 { fis e d } |
  \times 2/3 { r4 c d } fis8 g a4 |
  a8 b a b a b a4 fis8 g |
  \times 2/3 { a4 a8 } \times 2/3 { b \cricket c,4 ~ } \times 2/3 { c8 c c } \times 2/3 { c8 c c } | 
  c2. ~ \times 2/3 { c8 c c } |
  \times 2/3 { c8 c4 ~ } c4 ~ \times 2/3 { c8 c c } \saNormal fis8 g |
  a4 a |
  a8 b \times 2/3 { \cricket c, \saNormal e8 f } |
  g8 r \berioGoalposts e4 ( \glissando f'8 ) \cricket c,8 ~ |
  c2 r8 c r4 |
}

altoWords = \lyricmode {
  kit -- ty kat kat
  kit -- ty kit -- ty kat
  aww kit -- ty kat
  kit -- ty kat kit aww
  kit -- ty kat
  kit -- ty kat
  aww kit -- ty kat
  and the band played
  χ
  and the band played
  χ
  and the band χ oh
  kat kat
  kit -- ty kat kit -- ty kat
  and the band played
  χ
  and the band oh
  kat kit -- ty kat
  and the band played
  o -- pe -- ra
  χ
  and the band
  χ
  o -- pe -- ra -- tion
  kit -- ty kat
  kit -- ty kat
  and the band
  χ
  o -- pe -- ra -- tion -- al
  χ
  o -- pe -- ra -- tion -- al
  and the band played kit -- ty
  aww kit -- ty kat
  o -- pe -- ra -- tion -- al
  χ
  o -- pe -- ra
  o -- pe -- ra -- tion -- al
  χ
  and the band
  ki
  and the band ki
  χ
  aww kit -- ty kat
  o -- pe -- ra -- tion -- al
  and ty kat
  and the band
  kit -- ty
  χ
  o -- pe -- ra -- tion -- al
  o -- per
  and the band
  kit -- ty kit -- ty kit -- ty kat
  and the band
  kit -- ty
  χ
  o -- pe -- ra -- tion -- al
  χ
  o -- pe -- ra
  χ
  o -- per
  and the 
  band played kit -- ty
  k and the band
  hi
  touch hi
}

tenor = \relative c' {
  \autoBeamOff
  \clef "treble_8"
  r4 |
  d4^\f d |
  d d |
  cis r |
  \cricket
  r4. c8 ~ |
  c r4. |
  \bNormal
  r4 r16 g,8. ~ |
  g8 r r4 |
  \cricket r16 c' ~ c ~ c8 r |
  \bNormal r16 g,8. ~ g4 ~ |
  g8. r16 r4 |
  g2 ~ |
  g16 r16 r8 r8 g8 r4 |
  \clef "treble_8"
  d''4 d |
  cis cis |
  b8. |
  \clef bass r8 a,16 ~ a4 |
  \cricket r8 c'4 |
  \bNormal
  r8. r16 bes,16 ~ bes8 ~ bes8 r |
  \clef "treble_8"
  r8 bes' ees16 r |
  R1*7/16 |
  \cricket c4 r4 |
  r4 \times 2/3 { c8 c c } \times 2/3 { c8 c }  |
  R1*5/16 |
  c4 %{\brackVis%} \times 2/3 { r2 } |
  \saNormal
  r16 e'8\bendAfter #3 r16 r8 r16 |
  r16 e8\bendAfter #3 r16 r8
  \berioGoalposts r8 \harm f8 ~ f8. |
  \cricket r2. c,4 ~ |
  c4.. r16 r2 |
  R2 |
  \tNormal
  d4 d |
  cis8 r8 \times 2/3 { r4 cis8 } |
  \times 2/3 { cis8 c r8 } r4 \berioGoalposts \times 2/3 { \harm f8 \harm f \harm f } |
  r4 \times 2/3 { \harm f8 \harm f \tNormal cis8 } \times 2/3 { cis cis r } \times 2/3 { r8 gis gis } \times 2/3 { gis r4 } |
  \times 2/3 { r4 d'8 ~ } d4 r4 r8 b r4 |
  r8. d16 ~ d4 ~ d8 r8 r4 |
  \cricket r4 c8 c c r8 r4 |
  \tNormal
  \berioGoalposts r8. \harm f16 ~ \harm f8 \harm e,16 \harm e \harm e r8. r4 |
  \tNormal
  \times 2/3 { r4 a b } \times 2/3 { c b a }
  r2 c4 d |
  d8 d cis cis cis cis b4 r |
  d r8 cis ~ cis4 r4 |
  \berioGoalposts
  r4 \harm f4 ~ \harm f4 ~ \times 2/3 { \harm f8 r4 } |
  r4 \harm b4 ~ \times 2/3 { \harm b8 r4 } r4 |
  \tNormal
  r4 d, |
  cis8 cis cis cis |
  r2 r8 \cricket c8 ~ |
  c2 r4 \times 2/3 { c8 c c }
}

tenorWords = \lyricmode {
  kat kat kit kit kat
  χ
  oo
  χ
  oo
  oo
  oo
  kat kat kat kat kat
  oo
  ç
  oo
  kat kat
  χ
  o -- pe -- ra -- tion -- al
  χ
  wuh wuh eow
  χ
  kit kit kat
  ra -- tion -- al
  o -- pe -- ra
  o -- pe -- ra -- tion -- al
  ra -- tion -- al
  kit kat kat
  the band played
  aww kit -- ty kat
  o -- pe -- ra -- tion -- al
  ra band kit -- ty
  kit -- ty kit -- ty kat
  band kit
  ô ô
  played kit -- ty kit -- ty
  touch de -- moi -- selles
}

%%% SCORE

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Mike" %shortInstrumentName = #"M."
} <<
      \new Voice = "alto" { << { \numericTimeSignature 
        \alto
      } {
        \marks
      } >> }
      \lyricsto "alto" \new Lyrics {
        \altoWords
      }
    >>
    \new Staff \with { instrumentName = #"Ryan" %shortInstrumentName = #"R."
} <<
      \new Voice = "tenor" { \numericTimeSignature
        \tenor
      }
      \lyricsto "tenor" \new Lyrics {
        \tenorWords
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
