\version "2.17.15"

#(set-global-staff-size 15.87)
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

\header {
  title = "Relou la fille"
  composer = \markup \override #'(baseline-skip . 0) \column { "Jean le Branleur (1514-157?)" "connu pour sa médiocrité" }
}

introRelou = {
  \tag #'midi {
    \tempo "Andante" 2=60
    \time 2/2
    %s1*2
  }
}

marksRelou = {
  \tag #'score {
    \tempo "Andante" 2=60
    \time 2/2
  }
  s1*131
  \set Timing.measureLength = #(ly:make-moment 4 2)
  s\breve \bar "|."
}

sopranoRelou = \relative c'' {
  \key f \major
  \autoBeamOff
  R1 |
  R1 |
  R1 |
  R1 |
  a2 a4 a |
  f1 |
  r4 g c e, |
  f ^( a g f ) |
  e c d e |
  f1 ~ |
  f2 r |
  r2 c' |
  c4 a bes c |
  d ( c bes a ) |
  bes2. a4 |
  g g c bes |
  a1 |
  bes2 bes4 bes |
  g1 |
  a2 a4 a |
  f1 |
  g2 g4 g |
  e4 bes' a g |
  a2. ( g4 ) |
  fis1 |
  R1 |
  R1 |
  a2 a4 a |
  fis4 c' b a |
  g ( fis e2 ) |
  r4 ais b2 ~ |
  b4 ais b cis |
  d2 ( cis ) |
  b2 b |
  c b4 ( a ) | %to 36
  g4 e fis g |
  a2. ( g4 ) |
  fis fis g a |
  b b b g |
  e c' b a |
  b2 ( a ) |
  g1 |
  r4 e fis g |
  a a d d |
  d b r d |
  d ( b ) c ( d ) |
  e,2 r4 c' |
  c ( a ) b ( c ) |
  d,2 b' |
  c4 e d c |
  b2 ( a ) |
  g1 |
  r4 g a bes |
  c a f' f |
  f d r d |
  d ( bes ) c ( d ) |
  g,2. c4 |
  c ( a ) bes ( c ) |
  f,2. bes4 |
  bes ( g ) a ( bes ) |
  g d' c bes |
  c c d ees |
  d2 ( c ~ |
  c ) bes ( ~ |
  bes aes ~ | % 7th of bes
  aes ) g4 f | % 3rd of ees down to
  ees4 r2. |
  r4 c' b a |
  b2 ( a ) |
  g2 
}

sopranoLyricsRelou = \lyricmode {
  Re -- lou la fille
  qui fait chi -- er grave
  qui fait chi -- er
  qui fait
  qui fait chi -- er
  grave qui fait qui fait chi -- er
  Re -- lou la fille
  Re -- lou la fille
  Re -- lou la fille
  qui fait chi -- er grave
  Re -- lou la fille qui fait chi -- er
  qui fait qui fait chi -- er grave
  qui fait chi -- er
  Re -- lou la fil -- le
  Re -- lou la fille
  Re -- lou la fille
  qui fait chi -- er grave
  et puis voi -- là
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  et puis
  et puis voi -- là
  quoi
  et puis voi -- là
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là quoi
  puis voi -- là
  et puis voi -- là quoi
}

mezzoRelou = \relative c' {
  \key f \major
  \autoBeamOff
  f2 f4 f |
  d1 |
  R1 |
  R1 |
  R1 |
  f2 f4 f |
  d2. c4 |
  b ^( f' e d ) |
  e4 r2. |
  R1 |
  r4 d e f |
  g1 |
  a4 f g a |
  bes ( a g f ) |
  g2 d |
  e g |
  fis1 |
  g4 a g f |
  e1 |
  f4 g f e |
  d1 |
  e4 f e d |
  cis2 cis4 e |
  d2 ( cis ) |
  d1 |
  R1 |
  g2 g4 g |
  e1 |
  R1 |
  r2. g4 |
  fis2. fis4 |
  e2 e |
  fis1 |
  fis2 fis |
  fis fis |
  e1 ~ |
  e1 |
  d2 d4 d |
  d4 d d d |
  c c d e |
  d1 |
  d1 |
  R1 |
  r4 fis g a |
  b g r2 |
  R1 |
  r4 e fis g |
  a1 |
  a2 ( g4) fis |
  e c' b a |
  g2 ( fis ) |
  d1 |
  R1 |
  r4 f bes a |
  a bes r2 |
  r2. f4 |
  g ( ees ) f ( g )  |
  a4 f g4 a |
  bes d, ees f |
  g2 f4 ( ees ) |
  ees2 g |
  g4 ees bes' bes |
  bes ( aes g f |
  ees2 f ~ |
  f2 ) d4 ( c |
  bes ) bes c d |
  ees ees d c |
  d a' g fis |
  g2 ( fis ) |
  d
}

mezzoLyricsRelou = \lyricmode {
  Re -- lou la fille
  Re -- lou la fille
  chi -- er grave
  qui fait chi -- er
  fait
  qui fait chi -- er
  grave qui fait chi -- er
  fille qui fait chi -- er
  fille qui fait chi -- er
  fille qui fait chi -- er
  fait chi -- er grave
  Re -- lou la fille chi -- er
  qui fait chi -- er grave
  qui fait chi -- er
  Re -- lou la fille
  Re -- lou la fille qui fait chi -- er grave
  et puis voi -- là quoi
  et puis voi -- là quoi
  et puis
  et puis voi -- là quoi
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là
  voi -- là
  et puis
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là quoi
}

altoRelou = \relative c' {
  \key f \major
  \autoBeamOff
  R1 |
  d2 d4 d |
  bes2 r |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  r4 a bes c |
  d2. d4 |  
  e2 e |
  f2 f4 f |
  d1 |
  f1 |
  e2 e4 e |
  fis2 d |
  d2 d4 d |
  e2 c |
  c2 c4 c |
  d2 d |
  d2 d4 d |
  e4 e e e |
  f2 ( e2 ) |
  d2 d4 d |
  b1 |
  R1 |
  R1 |
  b2 b4 c |
  b a g2 |
  r4 cis d2 |
  e b |
  b ( cis ) |
  d dis |
  dis dis  |
  b2 b |
  c4 a b c |
  d1 ~ |
  d4 d d d |
  e e d c |
  b2 ( c ) |
  b b |
  c1 |
  c1 |
  b4 b r2 |
  R1 |
  r2. a4 |
  a2 a |
  d1 |
  c4 a b e |
  d1 |
  d2 d |
  ees1 |
  c |
  c4 d r2 |
  R1 |
  r4 g, a bes |
  c ees d c |
  d bes c d |
  bes1 ~ |
  bes2 c4 d |
  ees ees f g |
  f2 ( ees ~ |
  ees ) d ( ~ |
  d4 ees f2 ~ |
  f2 ees4 ) bes |
  c4 c c c |
  b d d d |
  d2 ( c ) |
  b2
}

altoLyricsRelou = \lyricmode {
  Re -- lou la fille
  qui fait chi -- er
  chi -- er qui
  Re -- lou la fille
  grave
  Re -- lou la fil -- le
  Re -- lou la fil -- le
  Re -- lou la fil -- le
  Re -- lou la fille
  qui fait chi -- er
  Re -- lou la fille
  Re -- lou la fille
  qui fait
  qui fait fait chi -- er grave
  qui fait chi -- er
  Re -- lou Re -- lou la fille
  Re -- lou la fille
  qui fait chi -- er grave
  et puis voi -- là quoi
  et puis voi -- là
  puis et puis voi -- là quoi
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là
  puis voi -- là
  et puis voi -- là quoi
  voi -- là
  et puis voi -- là
  et puis voi -- là quoi
}

tenorRelou = \relative c' {
  \key f \major
  \clef "treble_8"
  \autoBeamOff
  R1 |
  R1 |
  r4 g a bes |
  c2. ( bes4 ) |
  a1 |
  R1 |
  R1 |
  r4 g a b |
  c2. ( bes4 ) |
  a2 r |
  r2. d4 |
  c d c bes |
  a ees' d c |
  bes1 |
  bes2 d |
  g,2 c4 c |
  c4 a bes c |
  bes1 ~ |
  bes4 g a bes |
  a1 ~ |
  a4 f g a |
  g g c bes |
  a1 |
  a2 a4 a |
  a1 |
  b2 b4 b |
  g2 r2 |
  R1 |
  R1 |
  r4 d' cis b |
  ais g fis a |
  g2 b |
  b ( ais ) |
  b b |
  a2 g4 ( fis ) |
  g1 ~ |
  g2 a |
  a a |
  g4 g g g |
  g g g g |
  g2 ( fis ) |
  g g |
  a2. a4 |
  d d d d |
  d d r b |
  b ( g ) a ( b ) |
  c2. e,4 |
  fis2 fis |
  g2. g4 |
  g2 g |
  g ( a ) |
  b b |
  c1 |
  a |
  f4 f r bes |
  bes2 aes |
  g f |
  ees g |
  f1 |
  R1 |
  r4 bes bes bes |
  g g g g |
  bes1 |
  ees4 ( d c bes |
  aes g f2 ~ |
  f ) g |
  g4 g g g |
  g fis g a |
  g2 ( a ) |
  b 
}

tenorLyricsRelou = \lyricmode {
  qui fait chi -- er grave
  qui fait chi -- er grave
  chi -- er
  qui fait chi -- er
  Re -- lou la fille
  Re -- lou
  Re -- lou la fille
  qui fait chi -- er
  qui fait chi -- er
  qui fait chi -- er
  qui fait chi -- er
  Re -- lou la fille
  Re -- lou la fille
  qui fait chi -- er
  qui fait chi -- er
  chi -- er grave
  qui fait chi -- er
  Re -- lou la fille
  Re -- lou la fille
  qui fait chi -- er grave
  et puis voi -- là
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là quoi
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là quoi
  voi -- là
  et puis voi -- là
  et puis voi -- là quoi
}

bassRelou = \relative c {
  \key f \major
  \clef bass
  \autoBeamOff
  R1 |
  R1 |
  R1 |
  r4 c d e |
  f1 |
  R1 |
  R1 |
  R1 |
  R1 |
  r4 f g a |
  bes2. a4 |
  g4 bes a g |
  f2 r | 
  d2 d4 d |
  bes4 g a bes |
  c1 |
  d2 d4 d |
  g1 |
  c,2 c4 c |
  f1 |
  bes,2 g'4 f |
  e1 |
  a2 a |
  a,2 a4 a |
  d1 |
  R1 |
  r4 e fis g |
  a g fis e |
  dis2 fis4 fis |
  e1 |
  R1 |
  r2 g, |
  fis1 |
  b2 r |
  r b |
  e1 |
  r2 a, |
  d c |
  b4 g a b |
  c a b c |
  d1 |
  g, |
  r4 g' fis e |
  d c b a |
  g g r2 |
  R1 |
  r2 a |
  d d, |
  g g |
  c2. c4 |
  d1 |
  g, |
  r4 bes' a g |
  f ees d c |
  bes bes d f |
  bes2 bes, |
  ees d |
  c c |
  f ( ees4 ) d |
  d ( bes ) c ( d ) |
  ees f ees d |
  c c c c |
  f1 |
  bes |
  bes, |
  ees2. d4 |
  c c c c |
  d d d d |
  d1 |
  g,2
}

bassLyricsRelou = \lyricmode {
  qui fait chi -- er
  qui fait chi -- er
  chi -- er
  qui fait chi -- er
  Re -- lou la fille
  qui fait chi -- er
  Re -- lou la fille
  Re -- lou la fille
  Re -- lou la fille
  Re -- lou
  Re -- lou la fille
  Re -- lou la fille
  qui fait chi -- er
  fait chi -- er
  chi -- er grave
  chi -- er
  Re -- lou la fille
  Re -- lou la fille
  qui fait chi -- er grave
  et puis voi -- là
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là
  et puis
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là quoi
}

introEtPuis = {
}

marksEtPuis = {
}


sopranoEtPuis = \relative c'' {
  %\key f \major
  %\autoBeamOff
  r2 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  r2 f ~ |
  f1 |
  ees2 bes |
  c c |
  r c ~ |
  c4 c bes4 aes |
  bes g c2 ~ |
  c4 b c d |
  ees2 ( d%{\trill%} )|
  c1 |
  r2 aes |
  g d |
  e c ~ |
  c1 |
}

sopranoLyricsEtPuis = \lyricmode {
  et puis voi -- là quoi
  quoi
  et puis et puis voi -- là
  et puis voi -- là quoi
  et puis voi -- là quoi
}

mezzoEtPuis = \relative c'' {
  %\key f \major
  %\autoBeamOff
  r2 |
  R1 |
  R1 |
  R1 |
  r2 des |
  c g |
  aes f |
  r e |
  f4 ( g ) aes ( g |
  f2 ) f |
  g2 g |
  ees4 c f g |
  aes1 ~ |
  aes4 aes g f |
  g2. g4 |
  aes4 aes g f |
  g2 aes |
  g d |
  e? c ~ |
  c1 ~ |
  c1 |
}

mezzoLyricsEtPuis = \lyricmode {
  et puis voi -- là quoi
  voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  et puis
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là quoi
}

altoEtPuis = \relative c'' {
  %\key f \major
  %\autoBeamOff
  aes2 |
  g d |
  ees c |
  r2 f |
  ees2 %{d%} e2 ~ |
  e e |
  c f |
  e c |
  f2 f ( ~ |
  f4 ees des c |
  bes ) f' ees des |
  c2. bes4 |
  aes2 c |
  des2 f |
  ees2. ees4 |
  f2 ees4 d |
  c2 ( b ) |
  c1 ~ |
  c1 |
  r2 c |
  bes g |
  a1 |
}

altoLyricsEtPuis = \lyricmode {
  et puis voi -- là quoi
  voi -- là quoi
  voi -- là
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là
  puis voi -- là quoi
  et puis voi -- là
}

tenorEtPuis = \relative c' {
  %\key f \major
  %\clef "treble_8"
  %\autoBeamOff
  r2 |
  R1 |
  r2 c2 |
  b g |
  c c ~ |
  c1 |
  r2 des2 |
  c g |
  aes f |
  bes2. aes4 |
  g2 g |
  aes2 aes4 g |
  f1 ~ |
  f2 r |
  R1 |
  R1 |
  R1 |
  r2 aes2 |
  g d |
  e c |
  c' c4 bes |
  a1 |
}

tenorLyricsEtPuis = \lyricmode {
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  voi -- là
  puis voi -- là
  et puis voi -- là quoi
  Re -- lou la fille
}

bassEtPuis = \relative c' {
  %\key f \major
  %\clef bass
  %\autoBeamOff
  r2 |
  R1 |
  r2 aes |
  g d |
  ees c ( ~ |
  c4 d ) e2 |
  f f |
  g bes |
  aes1 |
  R1 |
  r2 ees |
  aes, bes |
  c aes |
  des1 |
  R1 |
  r2 aes' |
  g d |
  ees c ~ |
  c1 ~ |
  c1 |
  c2 c |
  f1 |
}

bassLyricsEtPuis = \lyricmode {
  et puis voi -- là quoi
  voi -- là et
  puis voi -- là
  voi -- là
  et puis voi -- là
  et puis voi -- là quoi
  puis voi -- là
}

introRecap = {
}

marksRecap = {
}


sopranoRecap = \relative c'' {
  R1 |
  R1 |
  R1 |
  a2 a4 a |
  f1 |
  r4 g c e, |
  f ^( a g f ) |
  e c d e |
  f1 ~ |
  f2 r |
  r2 c' |
  c4 a bes c |
  d ( c bes a ) |
  bes2. a4 |
  g g c bes |
  a2 a |
  bes bes |
  a f |
  R1 |
  r2 f' |
  e g |
  c,2. c4 |
  d d c bes |
  c1 |
  c1 ~ |
  c4 f, g a |
  bes2 bes |
  bes r |
  r2 c2 |
  c1 |
  f,2 f4 f |
  d1 |
  R1 |
  R1 |
  r2 f' |
  d bes |
  g1 |
  R1 |
  r2 c |
  c ( bes ) |
  a\breve |
}

sopranoLyricsRecap = \lyricmode {
  Re -- lou la fille
  qui fait chi -- er grave
  qui fait chi -- er
  qui fait
  qui fait chi -- er
  grave qui fait qui fait chi -- er
  et puis voi -- là quoi
  et puis voi -- là
  et puis
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  Re -- lou la fille
  Re -- lou la fille
  chi -- er grave
}

mezzoRecap = \relative c' {
  f2 f4 f |
  d1 |
  g2 g4 g |
  e1 |
  d1 |
  f2 f4 f |
  d2. c4 |
  b ^( f' e d ) |
  e4 r2. |
  R1 |
  r4 d e f |
  g1 |
  a4 f g a |
  bes ( a g f ) |
  g2 d |
  e g |
  f4 d e f |
  g g c c |
  c a r c |
  c ( a ) bes ( c ) |
  bes2. bes4 |
  bes ( g ) a ( bes ) |
  a g f e |
  d bes' a g |
  a2 ( g ~ |
  g ) f ( ~ |
  f ees ~ |
  ees ) d4 c |
  bes f' e d |
  c bes' a g |
  a2 ( g ) |
  f r |
  r4 d e f |
  g1 |
  r4 e f g |
  a1 |
  r4 a bes f |
  d1 ~ |
  d4 bes' a g |
  a1 ( |
  g ) |
  f\breve |
}

mezzoLyricsRecap = \lyricmode {
  Re -- lou la fille
  Re -- lou la fil -- le
  Re -- lou la fille
  chi -- er grave
  qui fait chi -- er
  fait
  qui fait chi -- er
  grave qui fait chi -- er
  et puis voi -- là
  et puis voi -- là quoi
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là
  et puis voi -- là quoi
  puis voi -- là
  et puis voi -- là
  et puis voi -- là quoi
  qui fait chi -- er
  qui fait chi -- er
  qui fait chi -- er
  qui fait chi -- er grave
}

altoRecap = \relative c' {
  d2 d4 d |
  bes2 r |
  R1 |
  R1 |
  d2 d4 d |
  b b c c |
  d1 |
  c1 |
  r4 a bes c |
  d2. d4 |  
  e2 e |
  f2 f4 f |
  d1 |
  f1 |
  e2 e4 e |
  f2 r |
  r4 e e e |
  f f r a |
  a ( f ) g ( a ) |
  bes ( a g f ) |
  g2 g4 g |
  f1 |
  f2 f4 f |
  f2 e |
  f4 c d ees |
  f1 |
  f4 f f f |
  d d c bes |
  c2 c |
  c1 |
  c1 |
  d2 d4 d |
  bes1 |
  R1 |
  R1 |
  f'2 f4 f |
  f1 ~ |
  f4 f d d |
  c1 ~ |
  c |
  c\breve |
}

altoLyricsRecap = \lyricmode {
  Re -- lou la fille
  Re -- lou la fille
  qui fait chi -- er grave
  qui fait chi -- er
  chi -- er qui
  Re -- lou la fille
  grave
  Re -- lou la fille
  et puis voi -- là quoi
  et puis voi -- là
  Re -- lou la fille
  Re -- lou la fille
  et puis
  et puis voi -- là
  quoi et puis voi -- là
  et puis voi -- là    
  voi -- là quoi
  Re -- lou la fille
  Re -- lou la fille
  qui fait chi -- er grave
}

tenorRecap = \relative c' {
  R1 |
  r4 g a bes |
  c2. ( bes4 ) |
  a1 |
  R1 |
  g2 g4 a |
  g4 g a b |
  c2. ( bes4 ) |
  a2 r |
  r2. d4 |
  c d c bes |
  a ees' d c |
  bes1 |
  bes2 d |
  g,2 c4 c |
  c2 c |
  c c |
  a4 ( bes ) c2 |
  f2 f4 f |
  d1 |
  e2 e4 e |
  c1 |
  d2 e4 d |
  c2 ( bes ~ |
  bes ) a ~ |
  a1 ~ |
  a2 bes4 a |
  g g g g |
  a g f g |
  f2 ( e ) |
  f4 f g a |
  bes2. ( a4 ) |
  g g4 a bes |
  c2. ( bes4 ) |
  a a bes c |
  d1 |
  bes2 bes4 bes |
  g g f g |
  f1 ( |
  e ) |
  f\breve |
}

tenorLyricsRecap = \lyricmode {
  qui fait chi -- er grave
  Re -- lou la fille
  qui fait chi -- er grave
  chi -- er
  qui fait chi -- er
  Re -- lou la fille
  Re -- lou
  Re -- lou la fille
  et puis voi -- là quoi
  Re -- lou la fille
  Re -- lou la fille
  Re -- lou
  voi -- là quoi
  puis voi -- là
  et puis voi -- là
  et puis voi -- là quoi
  qui fait chi -- er grave
  qui fait chi -- er grave
  qui fait chi -- er
  Re -- lou la fille
  qui fait chi -- er grave
}

bassRecap = \relative c {
  R1 |
  R1 |
  r4 c d e |
  f1 |
  R1 |
  R1 |
  R1 |
  R1 |
  r4 f g a |
  bes2. a4 |
  g4 bes a g |
  f2 r | 
  d2 d4 d |
  bes4 g a bes |
  c1 |
  f4 f e d |
  c bes a g |
  f ( g8 [ a ] ) bes [ c ] d [ e ] |
  f4 c a f |
  bes2 d |
  c e |
  f4 ( e ) d c |
  bes2 g |
  c1 |
  f |
  f, |
  bes2. c4 |
  d2. d4 |
  c4 g a bes |
  c2 ( bes ) |
  a1 |
  R1 |
  R1 |
  r4 c4 d e |
  f1 |
  R1 |
  R1 |
  r4 g,4 a bes |
  c1 ~ |
  c1 |
  f,\breve |
}

bassLyricsRecap = \lyricmode {
  qui fait chi -- er
  qui fait chi -- er
  chi -- er
  qui fait chi -- er
  Re -- lou la fille
  qui fait chi -- er grave
  et puis voi -- là
  et puis voi -- là quoi
  et puis
  et puis voi -- là
  et puis voi -- là quoi
  et puis voi -- là quoi
  voi -- là
  et puis voi -- là
  et puis voi -- là quoi
  qui fait chi -- er
  qui fait chi -- er
  grave
}

\score {
  \keepWithTag #'score \removeWithTag #'midi
  %\transpose d e
  \new ChoirStaff <<
    \new Staff \with { instrumentName = "Marie" } <<
      \new Voice = "soprano" << { \marksRelou \marksEtPuis \marksRecap } { \sopranoRelou \sopranoEtPuis \sopranoRecap } >>
      \new Lyrics \lyricsto "soprano" { \sopranoLyricsRelou \sopranoLyricsEtPuis \sopranoLyricsRecap }
    >>
    \new Staff \with { instrumentName = "Elsa" } <<
      \new Voice = "mezzo" { \mezzoRelou \mezzoEtPuis \mezzoRecap }
      \new Lyrics \lyricsto "mezzo" { \mezzoLyricsRelou \mezzoLyricsEtPuis \mezzoLyricsRecap }
    >>
    \new Staff \with { instrumentName = "Mike" } <<
      \new Voice = "alto" { \altoRelou \altoEtPuis \altoRecap }
      \new Lyrics \lyricsto "alto" { \altoLyricsRelou \altoLyricsEtPuis \altoLyricsRecap }
    >>
    \new Staff \with { instrumentName = "Ryan" } <<
      \new Voice = "tenor" { \tenorRelou \tenorEtPuis \tenorRecap }
      \new Lyrics \lyricsto "tenor" { \tenorLyricsRelou \tenorLyricsEtPuis \tenorLyricsRecap }
    >>
    \new Staff \with { instrumentName = "Eudes" } <<
      \new Voice = "bass" { \bassRelou \bassEtPuis \bassRecap }
      \new Lyrics \lyricsto "bass" { \bassLyricsRelou \bassLyricsEtPuis \bassLyricsRecap }
    >>
  >>
  \layout {}
}

\score {
  \keepWithTag #'midi \removeWithTag #'score
  \unfoldRepeats
  %\transpose d e
  \new ChoirStaff <<
    \new Voice = "soprano" << { \introRelou \marksRelou \marksEtPuis \marksRecap } { \introRelou \sopranoRelou \sopranoEtPuis \sopranoRecap } >>
    \new Voice = "mezzo" { \introRelou \mezzoRelou \mezzoEtPuis \mezzoRecap }
    \new Voice = "alto" { \introRelou \altoRelou \altoEtPuis \altoRecap }
    \new Voice = "tenor" { \introRelou \tenorRelou \tenorEtPuis \tenorRecap }
    \new Voice = "bass" { \introRelou \bassRelou \bassEtPuis \bassRecap }
  >>
  \midi {}
}