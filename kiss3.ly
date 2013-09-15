% AIM 28

\version "2.17.26"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Le rêve du compositeur"
  composer = "Mike Solomon"
}

\paper {
  indent = 0
  line-width = 110
}
#(set-global-staff-size 17.18)

\score {
\transpose c c, <<
\new Staff \with { %instrumentName = "Marie"
} \relative c''' {
  \key ees \major
  \partial 2
  \override Score.RehearsalMark.outside-staff-priority = #1
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \tempo "Adagio, molto legato"
  %\mark \markup \italic "molto legato"
  \once \override TextScript.self-alignment-X = #CENTER
  g2_\markup \italic "(sur \"a\")" %{\glissando%} |
  aes,4 r f'2 %{\glissando%} |
  bes,4 r ees2 ~ |
  ees8 d f ees d c bes aes |
  g8 aes16 bes c d ees f g8-. aes8-. bes4 %{\glissando%} |
  c,4 r aes'2 ~ |
  aes8 g aes bes aes g f ees |
  f ees f g f ees d c |
  bes4 r c'2 |
  d,4 r4 bes'2 |
  e,4 r g2 ~ |
  g8 f e d e f g4 |
  bes aes ees'2 |
  f,4 r des'2 ~ |
  des8 c bes aes bes c des4
  f4 ees8 des c bes a4 |
  ges'4 f8 ees des c bes4 |
  aes'4 g8 f e d c bes |
  c4 g8 aes bes4 aes8 g |
  aes4 f8 g aes c16 bes aes g f ees |
  f16 f g aes bes c d ees f8-. g8-. aes-. bes |
  c,4 r g'2 |
  aes,4 r f'2 ~ |
  f8 ees d c bes aes g f |
  g2\trill bes\trill |
  g'1\trill |
  g2 \bar "|."
}
\new Staff \with { %instrumentName = "Elsa"
} \relative c'' {
  \key ees \major
  \partial 2
  \once \override TextScript.self-alignment-X = #CENTER
  ees2_\markup \italic "(sur \"a\")" %{\glissando%} |
  f,4 r d'2 %{\glissando%} |
  g,4 r c2 ~ |
  c8 bes d c bes aes g f |
  ees8 f16 g aes bes c d ees8-. f8-. g4 %{\glissando%} |
  aes,4 r f'2 ~ |
  f8 ees f g f ees d c |
  d c d ees d c bes aes |
  g4 r aes'2 |
  bes,4 r g'2 |
  g,4 r bes2 ~ |
  bes8 aes g f g aes bes4 |
  des4 c ges'2 |
  des4 r4 bes'2 |
  ees,8 aes g f g aes bes ees, |
  des'4 c8 bes a ges f ees |
  des ees' des c bes aes g f 
  e f' e d c f, e d |
  e4 e8 f g4 f8 e |
  f2 ees |
  d16 d ees f g aes bes c d8-. ees8-. f-. g |
  aes,4 r ees'2 |
  f,4 r d'2 ~ |
  d8 c bes aes g f ees d |
  ees2\trill g\trill
  bes1\trill |
  bes2 \bar "|."
}
>>
\layout {} \midi {}
}
