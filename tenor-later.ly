\include "defs-later.ly"

tenorOneChromA = {
r2
}

tenorOneChromB = {
ais8^\pp^\< ( b8 c'8\mf^\> b8 ais8 a8\p^\< gis8 g8^\>
fis16\p )
}

tenorOneChromC = {
c'8^\p^\< ( cis'8 d'8\mf^\> cis'8 %{[%} c'8\p ) %{]%}
}

tenorOneChromD = {
r8 g8^\f^\> ( fis8 f8 e\mp )
}

tenorOneChromE = {
g8^\pp^\< ( %{\autoBeamOn%}
gis8 a8\p^\> gis8 g8\pp^\< gis8 a8 ais8
a8 gis8\mf^\> g8 fis8 g8\pp^\< gis8 a8\p^\> gis8
g8\pp^\< gis8 a8 ais8 a8 gis8 a8 ais8
b8\mf^\> ais8 a8 ais8\p^\< b8 c'8 b8 ais8
a8 gis8 a8\f )
}

tenorOneChromF = {
r2.
}

tenorOneChromG = {
r2 r2
}

tenorOneChromH = {
e'8^\f^\> ( dis'8 d'8 cis'8 c'8 b8 ais8 a8
gis8 a8
e' dis'8
d'8 cis'8
c'8 b8
ais8 a?16\p )
}

tenorOneChromI = {
ais8^\pp^\<^\markup { \small (beginning) } %{[%} ( b8 %{]%} c'8^\> %{[%} b8\pp ) %{]%}
}

tenorOne = { \relative c' {
\globals
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\once \override Voice . FootnoteItem #'Y-extent = #ly:grob::stencil-height
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
\footnote
  \markup { "" }
  #'(0 . 0)
  #'NoteHead
  \markup { \justify { \tiny * A sustained voiceless uvular fricative (χ in IPA, think of the 'r' in French) towards the back of the throat with the lips pursed outwards
and a wide space inside the mouth.  Doing it consistantly should make your cheeks inflate and vibrate.  It should create a low and volatile gurgling/revving/purring noise.}}
c1^\f \glissando
s1
s2.*5/6 c8 \tnorm r4 |
r4 \times 2/3 { r4 g8^\mp } r2 |
% SCATTER
R1 |
% RETTACS
% SCATTER
R1 |
% RETTACS
R1 |
R1 } \tenorOneChromA \relative c { \once \override TextScript #'self-alignment-X = #LEFT e'2^\mf^\markup { \small "(beginning)" } |
R1 |
R1 |
r2 \bump \times 2/3 { r4 des8^\p^\espressivo ~ } des16 r8. | }
\tenorOneChromB
\relative c' { r8. r4 r2 |
r2... des16^\p^\espressivo |
R1 |
% SCATTER
\bump \times 4/5 { ees4-- r ees-- r ees-- } \times 4/5 { ees-- r r8 }
% RETTACS
r2 |
R1 |
r2 \times 4/5 { r4 aes,16^\mf } r4 |
R1 |
R1 |
r8 } \tenorOneChromC \relative c' {
% SCATTER
r4 |
R1 |
r2
% RETTACS
} \tenorOneChromD \relative c' { r8 r4 r2 |
r2. \times 4/5 { r8. aes8^\mp } |
R1 |
R1 |
R1 |
R1 |
r2.
% SCATTER
r8
% RETTACS
} \tenorOneChromE r4 r2 |
R1 %\tenorOneChromF
R1 |
r4 \throat
\override Staff.Glissando #'minimum-length = #30
\once \override Voice . FootnoteItem #'Y-extent = #ly:grob::stencil-height
\footnote
  \markup { "" }
  #'(0 . 0)
  #'NoteHead
  \markup { \justify { \tiny * As before, a sustained voiceless uvular fricative.}}
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c'2.^\f \glissando
s1
s1
s1
s8. c'16 \tnorm r4 r2 |
R1 |
R1 |
R1 |
R1 |
r2 r4. \tenorOneChromH r8. r4 r2 |
% SCATTER
R1 |
R1 |
% RETTACS
r2 \relative c' { \times 2/3 { r8 a8^\mp r8 } r4 |
r4 } \tenorOneChromI \relative c' {
% SCATTER
\bump \times 4/5 { r4 ees16--^\p ~ } | ees8--
% RETTACS
r8 r4 r2 |
R1 |
R1 |
g,32^\pp ees g ees g32 ees g ees g32 ees g ees r8 r4 \times 2/3 { r8 bes8^\p^\markup { \small (beginning) }  r8 } |
R1 |
R1 |
}}

tenorOnewords = \lyricmode {
\markup { " " } \markup { " " }
links
be
You
hand. No one sees the chain. But these rings %123
You
Where sharp does -- n't
deep
are the last links of
But these rings are
hand.
I know I will find you. Where smooth pricks. Where sharp does -- n't cut. You hold the ring in your left hand. I hold the ring in my right hand. No one sees the chain.
\markup { " " } \markup { " " }
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left
smooth
ning. The end. In
Where
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't
gin
}

%%%%%%%%%%%%%%%%%%%%%%
tenorTwoChromA = {
r2
}

tenorTwoChromB = {
ais8^\pp^\< ( b8 c'8\mf^\> b8 ais8 a8\p^\< gis8 g8^\>
fis16\p )
}

tenorTwoChromC = {
c'8^\p^\< ( cis'8 d'8\mf^\> cis'8 %{[%} c'8\p ) %{]%}
}

tenorTwoChromD = {
r8 g8^\f^\> ( fis8 f8 e\mp )
}

tenorTwoChromE = {
g8^\pp^\< ( %{\autoBeamOn%}
gis8 a8\p^\> gis8 g8\pp^\< gis8 a8 ais8
a8 gis8\mf^\> g8 fis8 g8\pp^\< gis8 a8\p^\> gis8
g8\pp^\< gis8 a8 ais8 a8 gis8 a8 ais8
b8\mf^\> ais8 a8 ais8\p^\< b8 c'8 b8 ais8
a8 gis8 a8\f )
}

tenorTwoChromF = {
r2.
}

tenorTwoChromG = {
r2 r2
}

tenorTwoChromH = {
e'8^\f^\> ( dis'8 d'8 cis'8 c'8 b8 ais8 a8
gis8 a8
e' dis'8
d'8 cis'8
c'8 b8
ais8 a?16\p )
}

tenorTwoChromI = {
ais8^\pp^\<^\markup { \small (beginning) } %{[%} ( b8 %{]%} c'8^\> %{[%} b8\pp ) %{]%}
}

tenorTwo = { \relative c' {
\globals
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\once \override Voice . FootnoteItem #'Y-extent = #ly:grob::stencil-height
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c1^\f \glissando
s1
s2.*5/6 c8 \tnorm r4 |
r2 r8 a8^\mp ~ \times 2/3 { a8 r4 } |
% SCATTER
R1 |
% SCATTER
R1 |
% RETTACS
R1 |
R1 } \relative c { R1 |
R1 |
R1 |
\times 2/3 { r8 fis4^\mf } r4 r2 | }
\tenorTwoChromB
\relative c' { r8. r4 r2 |
r2... des16^\p^\espressivo |
R1 |
% SCATTER
R1 |
% RETTACS
R1 |
r4 \bump \times 2/3 { r4 des8^\p^\espressivo ~ } des16 r8. r4 |
R1 |
\times 2/3 { a8^\p r4 } r4 r2 |
R1 |
r8 } \tenorTwoChromC \relative c' {
% SCATTER
r4 |
R1 |
r2
% RETTACS
} \tenorTwoChromD r8 \relative c' { \times 4/5 { r8 r16 aes8^\mp } r2 |
r4 r8. c16^\pp r2 |
R1 |
R1 |
R1 |
R1 |
r4
% SCATTER
\bump \times 4/5 { r16 ees4--^\p } \times 4/5 { r4 ees16-- ~ } \autoBeamOff ees8
% RETTACS
} \tenorTwoChromE r4 r2 |
R1 \tenorTwoChromF
\relative c' { \bump \times 2/3 { r4 des8^\p^\espressivo ~ } |
des16 r8. \throat
\override Staff.Glissando #'minimum-length = #30
\once \override Voice . FootnoteItem #'Y-extent = #ly:grob::stencil-height
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c2.^\f \glissando
s1
s1
s1
s8. c16 \tnorm r4 r2 |
R1 |
R1 |
R1 |
R1 |
r2. r8 } \tenorTwoChromH \relative c' { r8. r4 r2 |
% SCATTER
R1 | R1 |
% RETTACS
R1 |
r4 } \tenorTwoChromI \relative c' {
% SCATTER
r4 r8
% RETTACS
\bump \times 2/3 { r16 des8^\p^\espressivo ~ } des16 r8. r2 |
R1 |
R1 |
g,32^\pp ees g ees g32 ees g ees g32 ees g ees g32 ees r16 r2 |
R1 |
R1 |
}}

tenorTwowords = \lyricmode {
\markup { " " } \markup { " " }
chain.
But
hand. No one sees the chain. But these rings %123
You
You
know
are the last links of
But these rings are
left
in
Where sharp
I know I will find you. Where smooth pricks. Where sharp does -- n't cut. You hold the ring in your left hand. I hold the ring in my right hand. No one sees the chain.
You
\markup { " " } \markup { " " }
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left
ning. The end. In
You
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't
}

%%%%%%%%%%%%%%%%%%%%%%
tenorThreeChromA = {
r2
}

tenorThreeChromB = {
ais8^\pp^\< ( b8 c'8\mf^\> b8 ais8 a8\p^\< gis8 g8^\>
fis16\p )
}

tenorThreeChromC = {
c'8^\p^\< ( cis'8 d'8\mf^\> cis'8 %{[%} c'8\p ) %{]%}
}

tenorThreeChromD = {
r8 g8^\f^\> ( fis8 f8 e\mp )
}

tenorThreeChromE = {
g8^\pp^\< ( %{\autoBeamOn%}
gis8 a8\p^\> gis8 g8\pp^\< gis8 a8 ais8
a8 gis8\mf^\> g8 fis8 g8\pp^\< gis8 a8\p^\> gis8
g8\pp^\< gis8 a8 ais8 a8 gis8 a8 ais8
b8\mf^\> ais8 a8 ais8\p^\< b8 c'8 b8 ais8
a8 gis8 a8\f )
}

tenorThreeChromF = {
r2.
}

tenorThreeChromG = {
r2 r2
}

tenorThreeChromH = {
e'8^\f^\> ( dis'8 d'8 cis'8 c'8 b8 ais8 a8
gis8 a8
e' dis'8
d'8 cis'8
c'8 b8
ais8 a?16\p )
}

tenorThreeChromI = {
ais8^\pp^\<^\markup { \small (beginning) } %{[%} ( b8 %{]%} c'8^\> %{[%} b8\pp ) %{]%}
}

tenorThree = { \relative c' {
\globals
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\once \override Voice . FootnoteItem #'Y-extent = #ly:grob::stencil-height
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c1^\f \glissando
s1
s2.*5/6 c8 \tnorm r4 |
R1 |
% SCATTER
\times 4/5 { r4 ees16--^\p ~ } ees8 r8
% RETTACS
r2 |
% SCATTER
\bump \times 4/5 { r2 ees4-- r4 ees4-- } |
% RETTACS
R1 |
R1 } \relative c { R1 |
R1 |
R1 |
R1 | }
\tenorThreeChromB
\relative c' { r8. r4 r2 |
R1 | R1 |
% SCATTER
R1 |
% RETTACS
R1 |
r8 des8^\p \bump r4 r2 |
R1 |
R1 |
R1 |
r8 } \tenorThreeChromC \relative c' {
% SCATTER
r4 |
R1 |
r2
% RETTACS
} \tenorThreeChromD r8 \relative c' { r4 r4 \times 2/3 { r4 r16 bes16^\mf ~ }
\times 4/5 { bes8 r16 r8 } r4 r2 |
r8 \times 4/6 { b32^\ppp b b r16. } \times 8/12 { b32 b b r16. b32 b b r16. } \times 8/12 { b32 b b r16. b32 b b r16. } r4 |
R1 |
R1 |
R1 |
r2
% SCATTER
r4 r8
% RETTACS
} \tenorThreeChromE r4 r2 |
R1 \tenorThreeChromF
\relative c' { \bump \times 2/3 { r4 des8^\p^\espressivo ~ } |
des16 r8. \throat
\override Staff.Glissando #'minimum-length = #30
\once \override Voice . FootnoteItem #'Y-extent = #ly:grob::stencil-height
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c2.^\f \glissando
s1
s1
s1
s8. c16 \tnorm r4 r2 |
R1 |
R1 |
R1 |
c8^\mp r8 r4 } \tenorThreeChromG r4. \tenorThreeChromH r8. r4 r2 |
% SCATTER
\relative c' { \bump \times 4/5 { r2 ees4-- r ees4-- } \times 4/5 { r4 ees4-- r ees4-- r } \times 4/5 { ees-- r ees8-- } }
% RETTACS
\relative c' { r2 |
r4 } \tenorThreeChromI \relative c' {
% SCATTER
r4 |
% RETTACS
R1 |
R1 |
R1 |
g32^\pp ees g ees g32 ees g ees g32 ees g ees g32 ees g ees r2 |
r2 r16 b-|^\pp r8 r4 |
R1 |
}}

tenorThreewords = \lyricmode {
\markup { " " } \markup { " " }
Where
Where sharp
hand. No one sees the chain. But these rings %123
hold
are the last links of
But these rings are
in
sum -- mit I
sum -- mit I
sum -- mit I
sum -- mit I
sum -- mit I
I know I will find you. Where smooth pricks. Where sharp does -- n't cut. You hold the ring in your left hand. I hold the ring in my right hand. No one sees the chain.
You
\markup { " " } \markup { " " }
"[tim]"
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left
Where sharp does -- n't cut. You
ning. The end. In
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't does -- n't
pricks.
}

%%%%%%%%%%%%%%%%%%%%%%
tenorFourChromA = {
r2
}

tenorFourChromB = {
ais8^\pp^\< ( b8 c'8\mf^\> b8 ais8 a8\p^\< gis8 g8^\>
fis16\p )
}

tenorFourChromC = {
c'8^\p^\< ( cis'8 d'8\mf^\> cis'8 %{[%} c'8\p ) %{]%}
}

tenorFourChromD = {
r4 r8 g8^\f^\> ( fis8 f8 e\mp )
}

tenorFourChromE = {
g8^\pp^\< ( %{\autoBeamOn%}
gis8 a8\p^\> gis8 g8\pp^\< gis8 a8 ais8
a8 gis8\mf^\> g8 fis8 g8\pp^\< gis8 a8\p^\> gis8
g8\pp^\< gis8 a8 ais8 a8 gis8 a8 ais8
b8\mf^\> ais8 a8 ais8\p^\< b8 c'8 b8 ais8
a8 gis8 a8\f )
}

tenorFourChromF = {
r2.
}

tenorFourChromG = {
r2 r2
}

tenorFourChromH = {
e'8^\f^\> ( dis'8 d'8 cis'8 c'8 b8 ais8 a8
gis8 a8
e' dis'8
d'8 cis'8
c'8 b8
ais8 a?16\p )
}

tenorFourChromI = {
ais8^\pp^\<^\markup { \small (beginning) } %{[%} ( b8 %{]%} c'8^\> %{[%} b8\pp ) %{]%}
}

tenorFour = { \relative c' {
\globals
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\once \override Voice . FootnoteItem #'Y-extent = #ly:grob::stencil-height
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c1^\f \glissando
s1
s2.*5/6 c8 \tnorm r4 |
r2. \times 2/3 { r4 a8^\mp ~ } |
% SCATTER
\times 4/5 { a16 r4 } r4 r2 |
% RETTACS
% SCATTER
R1 |
% RETTACS
R1 |
R1  } \relative c { R1 |
r2 r4 \times 2/3 { r4 f8^\mf } |
R1 |
r2 \bump \times 2/3 { r4 des'8^\p^\espressivo ~ } des16 r8. | }
\tenorFourChromB
\relative c' { r8. r4 r2 |
R1 |
r16 bes^\mp r8 r4 r2 |
% SCATTER
R1 |
% RETTACS
R1 |
R1 |
r2. r8 \sal g16^\p^\markup { \small "(summit)" }  r16 |
R1 |
R1 |
r8 } \tenorFourChromC \relative c' {
% SCATTER
\bump \times 4/5 { r16 ees4-- } |
\bump \times 4/5 { r4 ees-- r4 ees-- r4 } |
\bump \times 4/5 { ees4-- r16 }
% RETTACS
} \tenorFourChromD r8 \relative c' { \times 4/5 { r8 aes16^\mp r8 } r2 |
r2 \times 4/5 { r8 b16^\mf r8 } r4 |
R1 |
R1 |
R1 |
R1 |
r2. r8
% RETTACS
} \tenorFourChromE r4 r2 |
R1 \tenorFourChromF
r4 |
r4 \throat
\override Staff.Glissando #'minimum-length = #30
\once \override Voice . FootnoteItem #'Y-extent = #ly:grob::stencil-height
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c'2.^\f \glissando
s1
s1
s1
s8. c'16 \tnorm r4 r2 |
R1 |
R1 |
\relative c' {
r2 r8 \times 2/3 { r8 \sal c16^\p^\markup { \small "(summit)" } } r4 |
R1 } r2. r8 \tenorFourChromH r8. r4 r2 |
% SCATTER
R1 R1 |
% RETTACS
R1 |
r4 \tenorFourChromI \relative c' {
% SCATTER
r4 r8
\bump \times 2/3 { r16 des8^\p^\espressivo ~ } des16 r8. r2 |
% RETTACS
R1 |
R1 |
g,32^\pp ees g ees g32 ees g ees g32 ees r16 r8 \times 4/5 { r8. bes'16^\mf r16 } r4 |
R1 |
R1 |
}}

tenorFourwords = \lyricmode {
\markup { " " } \markup { " " }
"[nia]"
hand.
You
hand. No one sees the chain. But these rings %123
Where
mit
are the last links of
Where sharp does -- n't
But these rings are
your
left
I know I will find you. Where smooth pricks. Where sharp does -- n't cut. You hold the ring in your left hand. I hold the ring in my right hand. No one sees the chain.
\markup { " " } \markup { " " }
mit
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left
ning. The end. In
You
does -- n't does -- n't does -- n't does -- n't
does -- n't
the
}

