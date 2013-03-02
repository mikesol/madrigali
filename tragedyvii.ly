\version "2.15.0"
\include "defs-devel.ly"

\header {
  title = "the tragedy of intent vii"
  subtitle = "the andragogs praise Conchita's adult learning"
  composer = "mike solomon"
}
%#(ly:set-option 'point-and-click #f)

#(set-global-staff-size 17.82)

\paper {
  footnote-separator-markup = \markup { \column { " "\override #`(span-factor . 1/5) { \draw-hline } }}
  footnote-padding = 3\mm
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 40))
  bottom-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1) (stretchability . 50))
  ragged-right = ##f
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.6\in
  ragged-last-bottom = ##f
}

globals = {
  \key aes \major
  \override Staff . TimeSignature #'stencil = ##f
}

marks = {
  \time 3/4
  s2. \barNumberCheck #2
  s2. \barNumberCheck #3
  \time 3/4
  s2. \barNumberCheck #4
  s2. \barNumberCheck #5
  \time 3/4
  s2. \barNumberCheck #6
  s2. \barNumberCheck #7
  s2. \barNumberCheck #8
  s2. \barNumberCheck #9
  \time 2/4
  s2 \barNumberCheck #10
  \time 3/4
  s2. \barNumberCheck #11
  s2. \barNumberCheck #12
  \time 2/4
  s2 \barNumberCheck #13
  \time 3/4
  s2. \barNumberCheck #14
  \time 3/8
  s4. \barNumberCheck #15
  \time 3/4
  s2. \barNumberCheck #16
  s2. \barNumberCheck #17
  s2. \barNumberCheck #18
  \time 2/4
  s2 \barNumberCheck #19
  \time 3/4
  s2. \barNumberCheck #20
  \time 5/8
  s1*5/8 \barNumberCheck #21
  \time 3/4
  s2. \barNumberCheck #22
  s2. \barNumberCheck #23
  \time 2/4
  s2 \barNumberCheck #24
  \time 3/4
  s2. \barNumberCheck #25
  \time 5/8
  s1*5/8 \barNumberCheck #26
  \time 2/4
  s2 \barNumberCheck #27
  \time 3/4
  s2. \barNumberCheck #28
  s2. \barNumberCheck #29
  s2. \barNumberCheck #30
  \time 4/4
  s1 \barNumberCheck #31
  \time 3/4
  s2. \barNumberCheck #32
  \time 5/8
  s1*5/8 \barNumberCheck #33
  \time 3/4
  s2. \barNumberCheck #34
  s2. \barNumberCheck #35
  \time 5/8
  s1*5/8 \barNumberCheck #36
  \time 2/4
  s2 \barNumberCheck #37
  \time 3/4
  s2. \barNumberCheck #38
  \time 5/8
  s1*5/8 \barNumberCheck #39
  \time 3/4
  s2. \barNumberCheck #40
  s2. \barNumberCheck #41
  \time 5/8
  s1*5/8 \barNumberCheck #42
  \time 2/4
  s2 \barNumberCheck #43
  \time 3/4
  s2. \barNumberCheck #44
  s2. \barNumberCheck #45
  \time 5/8
  s1*5/8 \barNumberCheck #46
  \time 3/4
  s2. \barNumberCheck #47
  \time 2/4
  s2 \barNumberCheck #48
  s2 \barNumberCheck #49
  \time 3/4
  s2. \barNumberCheck #50
  \time 5/8
  s1*5/8 \barNumberCheck #51
  \time 3/4
  s2. \barNumberCheck #52
  \time 5/8
  s1*5/8 \barNumberCheck #53
  \time 3/4
  s2. \barNumberCheck #54
  s2. \barNumberCheck #55
  \time 5/8
  s1*5/8 \barNumberCheck #56
  \time 2/4
  s2 \barNumberCheck #57
  \time 3/4
  s2. \barNumberCheck #58
  \time 5/8
  s1*5/8 \barNumberCheck #59
  \time 2/4
  s2 \barNumberCheck #60
  \time 5/8
  s1*5/8 \barNumberCheck #61
  \time 3/4
  s2. \barNumberCheck #62
  \time 5/8
  s1*5/8 \barNumberCheck #63
  \time 2/4
  s2 \barNumberCheck #64
  \time 3/4
  s2. \barNumberCheck #65
  \time 5/8
  s1*5/8 \barNumberCheck #66
  \time 3/4
  s2. \barNumberCheck #67
  s2. \barNumberCheck #68
  \time 2/4
  s2 \barNumberCheck #69
  \time 3/4
  s2. \barNumberCheck #70
  \time 3/8
  s4. \barNumberCheck #71
  \time 3/4
  s2. \barNumberCheck #72
  \time 2/4
  s2 \barNumberCheck #73
  \time 3/4
  s2. \barNumberCheck #74
  \time 5/8
  s1*5/8 \barNumberCheck #75
  \time 2/4
  s2 \barNumberCheck #76
  \time 3/4
  s2. \barNumberCheck #77
  \time 5/8
  s1*5/8 \barNumberCheck #78
  \time 2/4
  s2 \barNumberCheck #79
  \time 3/8
  s4. \barNumberCheck #80
  \time 3/4
  s2. \barNumberCheck #81
  \time 5/8
  s1*5/8 \barNumberCheck #82
  \time 2/4
  s2 \barNumberCheck #83
  \time 3/4
  s2. \barNumberCheck #84
  \time 5/8
  s1*5/8 \barNumberCheck #85
  \time 2/4
  s2 \barNumberCheck #86
  \time 3/4
  s2. \barNumberCheck #87
  \time 5/8
  s1*5/8 \barNumberCheck #88
  \time 3/4
  s2. \barNumberCheck #89
  s2. \barNumberCheck #90
  \time 5/8
  s1*5/8 \barNumberCheck #91
  \time 3/4
  s2. \barNumberCheck #92
  s2. \barNumberCheck #93
  \time 5/8
  s1*5/8 \barNumberCheck #94
  \time 3/4
  s2. \barNumberCheck #95
  \time 2/4
  s2 \barNumberCheck #96
  \time 3/4
  s2. \barNumberCheck #97
  \time 5/8
  s1*5/8 \barNumberCheck #98
  \time 2/4
  s2 \barNumberCheck #99
  \time 3/4
  s2. \barNumberCheck #100
  s2. \barNumberCheck #101
  s2. \barNumberCheck #102
  s2. \barNumberCheck #103
  \mark \markup \italic "rit."
  s2. \barNumberCheck #104
  \time 5/8
  s1*5/8 \barNumberCheck #105
  \time 3/4
  s2. \barNumberCheck #106
  \time 2/4
  s2 \barNumberCheck #107
  s2 \barNumberCheck #108
}
point = {
  \once \override NoteHead #'stencil = #point-stencil
  \once \override NoteColumn #'glissando-skip = ##t
}
parenNC = {
%  \once \override NoteColumn #'stencil = #parentheses-item::print
}
soprano = \relative c' {
  \autoBeamOff
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2 |
  r4. f8^\f ~ f4 ~ |
  f8 c'8 ~ c2 ~ |
  \times 2/3 { c4 \hairtip g8^\> ( ~ } g4 ~ |
  g2. ~ |
  g4. \glissando |
  \point f8 \point ees8 \parenNC e8\! ) r8 r4 |
  r2 r8 f8 ~ |
  f2 ~ f8 f'8 ~ |
  f2 ~ |
  f8 c8 ~ c2 ~ |
  c4. ~ c4 ~ |
  c2. ~ |
  c4. r8 r4 |
  R2 |
  r4. ees,4 ( f8 ) |
  c'4. ~ c4 ~ |
  c2 ~ |
  c2 ~ \times 2/3 { c8 c,4 ~ } |
  c2. ~ |
  c2. ~ |
  c1 ~ |
  c4 r2 |
  r4. f4 ~ |
  f f2 |
  f2. ~ |
  f4. ~ f4 ~ |
  f8 ~ f8-.
    \override Staff . BarLine #'Y-extent = ##f
    \override Staff . BarLine #'X-extent = ##f
    \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \times 9/8 { e8 ( f-. )
  e ( f-. ) e ( f-. ) e ( f8-. ) }
    \revert Staff . BarLine #'Y-extent
    \revert Staff . BarLine #'Y-extent
    f4 ~ f4 ~ |
  f2. ~ |
  f2. ~ |
  f4. ~ f8 r |
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \times 3/2 { f [ g ] } f'8 ~ |
  f4 f,8 [ g ] \times 2/3 { f'4 f,8 ~ ( } |
  \times 2/3 { f g4 ) } e'2 |
  \times 2/3 { r4 e8 ~ } e4 ~ e8 |
  r8 e ~ e2 ~ |
  e2 ~ |
  e2 ~ |
  e2 cis8 r |
  g4. ~ g4 |
  r8 g8 ( ~ g2 \glissando |
  aes4 ) r4 g8 ~ |
  g2. ~ |
  g2. ~ |
  g4. ~ g4 ~ |
  g8 r8 r4 |
  r4 des2 ~ |
  des4. ~ des4 ~ |
  des2 ~ |
  des4. ~ des4 ~ |
  des2. ~ |
  des4. aes'4 ~ |
  aes2 ~ |
  aes2 r4 |
  f'4. r4 |
  g2. ~ |
  g2. ~ |
  g4 r8 aes \glissando ( |
  f, ) r c'2 ~ |
  c4 r8 |
  f,4. r8 des [ ees ] |
  f2 \glissando ( |
  bes8 ) r bes2 ~ |
  bes2 r8 |
  \grace { bes'8 } aes2 ~ |
  aes2. |
  r8 des,4 ~ des ~ |
  des2 ~ |
  des4. ~ |
  des2. |
  r4 fes,8 ~ fes4 |
  \cricket \times 3/2 { r8 \tri c } r8 |
  r8 \tri c r4 r8 \tri c |
  r4 \times 2/3 { r8 \tri c4 } \saNormal fes8 ~ |
  fes8 fes' ~ fes c8 ~ |
  c2. ~ |
  c8 bes4 ~ bes ~ |
  bes8 r8 \times 2/3 { r4 f'4 c } |
  c,2. ~ |
  \times 2/3 { c4 aes'8 ~ } aes8 ~ aes4 ~ |
  aes4. r8 r4 |
  \times 2/3 { r2 aes'4 } aes,4 ~ |
  aes8-. r aes' aes,4 ~ |
  aes4 r ces' |
  f,, r8 c'' ~ |
  c4 ees,,2 ~ |
  ees4. ~ ees4 |
  r8 c8 ~ c4 |
  r4 c2 |
  r4 b2 ~ |
  b2. ~ |
  b2. ~ |
  b8 r r4 r8 b8 ~ ( |
  b4 \glissando c8 ~ c4 ) |
  R2. |
  R2 |
  R2 |
}

sopranoWords = \lyricmode {
  Con -- chi -- ta
  Con -- chi -- ta
  Con -- chi -- ta
  a a a
  a a a a a
  Con -- chi
  Con -- chi
  Con -- chi
  chi
  chi -- ta
  Con
  Con
  Con
  Con
  on
  a
  a
  Con
  chi
  ta
  Con --  chi -- ta
  a
  a
  Con ch ch ch ch Con i chi
}

alto = \relative c' {
}

altoWords = \lyricmode {
}

tenor = \relative c' {
}

tenorWords = \lyricmode {
}

bass = \relative c' {
  \clef "treble_8"
  f8^\markup \italic "motlo wah-wah"^\mf aes, c ees aes f |
  aes, c ees aes r4^\fermata |
  f8 aes, c ees aes f |
  aes, c ees aes r4 |
  f8 aes, c ees aes f |
  aes, c ees aes r4 |
  f8 aes, c ees aes f |
  aes, c ees aes \footnote #"" #'(0 . 0) #"Quarter notes at end of measures should be shortened a bit." r4^"*" |
  aes,8 c ees r |
  f8 aes, c ees aes f |
  aes, c ees aes r4 |
  f8 aes, c r8 |
  f8 aes, c ees aes f |
  aes, des r
  ees aes, c ees r4 |
  f8 aes, c ees aes f |
  aes, c ees aes r4 |
  f8 aes, c r8 |
  f8 aes, c ees aes f |
  aes, c ees aes f8 |
  ees aes, c ees aes f |
  aes, c ees aes r4 |  
  f8 aes, c r8 |
  f8 aes, c ees aes f |
  aes, c ees aes r8 |
  f8 aes, des r8 |
  f8 aes, c ees aes f |
  aes, c ees aes r4 |  
  f8 aes, c ees aes f |
  aes, c ees aes r4 %{cut in audio %} aes,8 c |
  f8 aes, c ees aes f |
  aes, c ees aes r8 |
  f8 aes, c ees aes r |
  f8 aes, c ees aes f |
  aes, c ees aes r8 |
  aes, c ees r8 |
  f8 aes, c ees aes f |
  aes, c ees aes f |  
  f8 aes, c ees aes r8 |
  f8 aes, c ees aes f |
  aes, c ees aes r |  
  aes, c ees r8 |
  f8 aes, c ees aes r |
  f8 aes, c ees aes f |
  aes, c ees aes r |  
  f8 aes, c ees aes f |
  aes, c ees r |
  f aes, d r |
  f8 aes, c ees aes f |
  aes, c ees aes r |  
  f8 aes, c ees aes f |
  aes, c ees aes f |  
  f8 aes, c ees aes r |
  f8 aes, c ees aes f |
  aes, c ees aes r |  
  f aes, des r |
  f8 aes, c ees \footnote #"" #'(0 . 0) #"Only Zelenka would be so fucking cruel." a^"*" f |
  aes, c ees aes r |
  f aes, c r |
  f8 aes, c ees aes |
  f8 aes, c ees aes f |
  aes, c ees aes r8 |
  f aes, c r |
  f8 aes, c ees aes f |
  aes, c ees aes f |
  f aes, c ees aes r8 |
  f aes, c ees aes f |
  f aes, des r |
  f aes, c ees aes r8 |
  f aes, d
  f aes, c ees aes r |
  f aes, des r |
  f8 aes, c ees aes f |
  aes, c ees aes r |
  f aes, des r |
  f8 aes, c ees aes f |
  aes, c ees aes r |
  f aes, des r |
  f aes, des |
  f8 aes, c ees aes f |
  aes, c ees aes f |
  f aes, des r |
  f8 aes, c ees aes f |
  aes, c ees aes r |
  f aes, d r |
  f8 aes, c ees aes f |
  aes, c ees aes f |
  f8 aes, c ees aes r8 |
  f8 aes, c ees aes f |
  aes, c ees aes f |
  f8 aes, c ees aes r8 |
  f8 aes, c ees aes f |
  aes, c ees aes f |
  f8 aes, c ees aes r8 |
  f aes, des r |
  f8 aes, c ees aes f |
  aes, c ees aes f |
  f aes, des r |
  f8 aes, c ees aes f |
  f8 aes, c ees aes r |
  f8 aes, c ees aes f |
  f8 aes, c ees aes r8 |
  f8 aes, c ees aes f |
  aes, c ees aes r8 |
  f8 aes, c ees aes f |
  aes, c ees r8 |
  f aes, c r8 \bar "|."
}
 
bassWords = \lyricmode {
}

\score {
  \new ChoirStaff <<
    \new Staff = "sopstaff" <<
      \set Staff.instrumentName = #"Elsa"
      \new Voice = "soprano" {
        << { \globals \soprano } \marks >>
      }
      \lyricsto "soprano" \new Lyrics { \sopranoWords }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Marie"
      \new Voice = "alto" {
        \globals \alto
      }
      \lyricsto "alto" \new Lyrics { \altoWords }
    >>
    \new Staff = "tenstaff" <<
      \set Staff.instrumentName = #"Ryan"
      \new Voice = "tenor" {
        \globals \tenor
      }
      \lyricsto "tenor" \new Lyrics { \tenorWords }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Mike"
      \new Voice = "bass" {
        \globals \bass
      }
      \lyricsto "bass" \new Lyrics { \bassWords }
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
\midi{}
}

