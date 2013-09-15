% AIM 28

\version "2.17.26"

<<
\new Staff \relative c''' {
  \key ees \major
  \partial 2
  g2 \glissando |
  aes,4 r f'2 \glissando |
  bes,4 r ees2 ~ |
  ees8 d f ees d c bes aes |
  g8 aes16 bes c d ees f g8-. aes8-. bes4 \glissando |
  c,4 r aes'2 ~ |
  aes8 g aes bes aes g f ees |
  f ees f g aes g f ees |
  des4 r c'2\glissando |
  aes,4 r g'2 \glissando |
  b,4^"(first)" r f'2 ~ |
  f8 ees d c d ees f4 ~ | %{ r2. b4 %}
  f4 ees g2 \glissando | %{ d4 c %}
  aes,4 r f'2 \glissando |
  bes,4 r ees2 ~ |
  ees8 d f ees d ees f4 |
  aes4 g ees'2 |
%{
  des8 c bes aes f g ees d |
  des4 c' bes g, |
  bes4 aes g8 f ees des |
  c2\trill aes'2 |
  bes8 aes ges f ees des c bes |
  aes4 bes' aes ees |
  ges4 f ees8 des c4 |
  ees4 des aes'2 |
  ges8 f ees des ces8 beses aes ges |
  aes4 aes'4 ges ees |
  ges4 fes ees8 des ces beses |
  aes4 fes' aes2 |
%}  

  c8 bes aes g f ees d c |
  bes4 c' bes d, |
  f4 ees d8 c bes aes |
  g4.\trill r8 bes4.\trill r8 |
  g'4\trill g g\trill g ~ |
  g1 |

  %g8 aes16 bes c d ees f g8-. aes8-. bes4 |
  %{
  aes,4 r aes'2 |
  b,4 r g'2 ~ |
  g8 aes g f g f ees d |
  f4 e4 g2\trill |
  bes4 aes
  %}
%{
  c,4 r aes'2 \glissando |
  d,4 r4 g2 ~ |
  g8 d f ees d c bes aes |
  g4.\trill r8 bes4.\trill r8 |
  g'4\trill g g\trill g ~ |
  g r2. |
%}
}
\new Staff \relative c'' {
  \key ees \major
  \partial 2
  ees2 \glissando |
  f,4 r d'2 \glissando |
  g,4 r c2 ~ |
  c8 bes aes g bes aes g f |
  ees8 f16 g aes bes c d ees8-. f8-. g4 \glissando |
  aes,4 r f'2 ~ |
  f8 ees f g f ees d c |
  d c d ees f ees d c |
  bes4 r aes'2 \glissando |
  f,4 r ees'2 \glissando |
  g,4 r d'2 ~ |
  d8 c b a b c b4  |
  d c ees2 \glissando |
  f,4 r c'2 \glissando |
  d,4 r bes'2 ~ |
  bes2 ~ bes8 c d4 ~ |
  d ees g2 |
%{
  aes8 g f ees d c bes aes |
  bes4 aes' g bes, |
  d c bes8 aes g f |
  ees4.\trill r8 g4.\trill r8 
  ees'4\trill ees ees\trill ees ~ |
  ees1 \bar "|." |
%}
  %{
  bes4 r g'2 \glissando |
  aes,4 r f'2 \glissando |
  bes,4 r4 aes2 ~ |
  aes8 bes aes g f aes g f |
  ees4.\trill r8 g4.\trill r8 
  ees'4\trill ees ees\trill ees ~ |
  ees r2. |
  %}
}
>>