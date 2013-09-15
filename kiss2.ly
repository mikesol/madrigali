% AIM 28

\version "2.17.26"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Le rêve du compositeur"
  composer = "Mike Solomon"
}

\paper {
  %indent = 0
  %line-width = 120
}

\transpose c c, <<
\new Staff \with { instrumentName = "Marie" } \relative c''' {
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
  f4 ees ges,2 ~ |
  %ges8 f ees des c des ees4 |
  ges4 f aes g8 f |
  aes4 g bes4 aes8 g |
  bes8 aes g f aes g f ees |
  d16 f g aes bes c d ees f8-. g8-. aes4 |
  c,4 bes des2 %{\glissando%}
  ees,4 r d'2 ~ |
  d8 f,8 g aes bes c d4 |
  f2 %{\glissando%} g,2\trill
  bes\trill g'2\trill |
  g2
}
\new Staff \with { instrumentName = "Elsa" } \relative c'' {
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
  des'4 c8 bes a4 c |
  bes2 b |
  c4. d8 e4 c |
  f4 bes,8 aes c8 bes aes g |
  f16 d ees f g aes bes c d8-. ees8-. f4 |
  aes,4 g bes2 %{\glissando%} |
  c,4 r f2 ~ |
  f8 d ees f g aes bes4 |
  d2 %{\glissando%} ees,2\trill |
  g\trill bes2\trill |
  bes2 \bar "|."
}
>>