\include "defs-later.ly"

altoOneChromA = {
r2. d'8^\mf ( dis'8\pp^\< d'8 cis'8^\p ) r4
}

altoOneChromB = {
c'8^\pp^\< ( b8 ais8\mf^\> b8 c'8 cis'8\p^\< d'8 dis'8^\>
e'16\p )
}

altoOneChromC = {
R1
}

altoOneChromD = {
r4 r2
}

altoOneChromE = {
r2 r8 cis'8^\pp\< ( c'8 cis'8 |
d'8\mf^\> dis'8 e'8 dis'8\pp d'8 ) r8 r4 |
r2 r8 cis'8^\mp ( c'8
b8\mf^\> c'8 cis'8 c'8^\p^\< b8 ais8 b8 c'8
cis'8 d'8 cis'8^\f )
}

altoOneChromF = {
r2 r8
c'8^\p
}

altoOneChromG = {
c'8^\f^\> ( cis'8 d'8 dis'8 e'8 f'8 fis'8 g'8
gis'8 g'8\p )
}

altoOneChromH = {
c'8^\f^\> ( ~
\times 2/3 { c'4 cis'4 d'4 }
\times 2/3 { dis'4 e'4 f'4 ~ }
\times 2/3 { f'4 fis'2 }
g'4 gis'4
g'16\p )
}


altoOneChromI = {
d'8^\pp^\<^\markup { \small (beginning) } %{[%} ( cis'8 %{]%} c'8^\> %{[%} cis'8\pp ) %{]%}
}

altoOne = { \relative c' {
\globals
R1 R1 R1 |
r2 \times 2/3 { r16 fis8^\p } r8 r4 |
% SCATTER
R1 |
% SCATTER
R1 |
% RETTACS
\once \override TextScript #'self-alignment-X = #LEFT e2^\mf^\markup { \small "(beginning)" } ~ e8. r16 r4 |
} \altoOneChromA r2 |
\relative c'' { R1 |
R1 |
r4 g32^\pp ees g ees g ees r16 r2 | }
\altoOneChromB
\relative c' { r8. r4 r2 |
r2 r4 r8. ees16^\p^\espressivo |
R1 |
% SCATTER
f8.-- r16 f8.-- r16 f8.-- r16 f8. r16 |
f8.-- r16
\times 8/12 { f16.--
% RETTACS
r16. r8. } r2 |
r4 \bump \times 2/3 { r4 ees8^\p^\espressivo ~ } ees16 r8. r4 |
R1 |
R1 |
R1 |
} \altoOneChromC \relative c' {
% SCATTER
R1 |
R1 |
% RETTACS
R1 |
R1 |
b16^\p r16 r8 r4 r2 |
r2 cis'4^\mf^\espressivo \glissando ( \times 2/3 { ais4 ) cis8^\espressivo ~ } |
cis4 cis4^\espressivo\glissando ( ais4 ) cis4^\espressivo ~ |
cis8 cis8^\espressivo ~ cis4 ~ \bump \times 2/3 { cis8 cis4^\espressivo ~ } \bump \times 2/3 { cis4 cis8^\espressivo\glissando ( } |
ais4. ) r8
% SCATTER
r2 |
% RETTACS
} \altoOneChromE r4 r2 |
R1 \altoOneChromF \relative c' { \times 2/3 { r4 ees8 ~ } |
ees16 r8. r4 r2
R1
R1
R1
R1
R1
R1
R1
r4. } \altoOneChromG r4 \altoOneChromH \relative c' { r8. r4 r2 |
% SCATTER
% RETTACS
R1 | R1 | R1 |
r8 \times 2/3 { b32^\f b b } r16 } \altoOneChromI \relative c' {
% SCATTER
f8.--^\p r16
f8--
% RETTACS
\bump r8 r4 r2 |
R1 |
R1 |
\revert Staff . TextScript #'self-alignment-X
g32^\pp ees r16 r8 r4 r2 |
R1 |
R1 |
}}

altoOnewords = \lyricmode {
the
be
I hold the ring %123
does -- n't does -- n't does -- n't
hand. No one sees the chain. But these rings %123
You
Where sharp does -- n't cut. You
You
I
these _
these
these _
these
these
these
these _
Where smooth pricks. Where sharp does -- n't cut. I hold the ring in my right hand. No one sees the chain.
The
You
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left hand. I
sum -- mit I
ning. The end. In
Where sharp
does -- n't
}

%%%%%%%%%%%%%%%%%%

altoTwoChromA = {
r2. d'8^\mf ( dis'8\pp^\< d'8 cis'8^\p ) r4
}

altoTwoChromB = {
c'8^\pp^\< ( b8 ais8\mf^\> b8 c'8 cis'8\p^\< d'8 dis'8^\>
e'16\p )
}

altoTwoChromC = {
r2.
}

altoTwoChromD = {
r4 r2
}

altoTwoChromE = {
r2 r8 cis'8^\pp\< ( c'8 cis'8 |
d'8\mf^\> dis'8 e'8 dis'8\pp d'8 ) r8 r4 |
r2 r8 cis'8^\mp ( c'8
b8\mf^\> c'8 cis'8 c'8^\p^\< b8 ais8 b8 c'8
cis'8 d'8 cis'8\f )
}

altoTwoChromF = {r2 r8
c'8^\p
}

altoTwoChromG = {
c'8^\f^\> ( cis'8 d'8 dis'8 e'8 f'8 fis'8 g'8
gis'8 g'8\p )
}

altoTwoChromH = {
c'8^\f^\> ( ~
\times 2/3 { c'4 cis'4 d'4 }
\times 2/3 { dis'4 e'4 f'4 ~ }
\times 2/3 { f'4 fis'2 }
g'4 gis'4
g'16\p )
}


altoTwoChromI = {
d'8^\pp^\<^\markup { \small (beginning) } %{[%} ( cis'8 %{]%} c'8^\> %{[%} cis'8\pp ) %{]%}
}

altoTwo = { \relative c' {
\globals
R1 R1 r2. b4^\p ~ |
b4 ~ \times 2/3 { b8 r4 } r2 |
R1 | R1 | R1 |
} \altoTwoChromA r2 |
\relative c'' { g32^\pp ees g ees g ees g ees g ees g ees g ees g ees g ees g ees g ees g ees r4 |
R1 |
r2 \bump \times 2/3 { r4 ees8^\p^\espressivo ~ } ees16 r8. | }
\altoTwoChromB
\relative c' { r8. r4 r2 |
r2. bes16^\mf r8. |
R1 |
% SCATTER
R1 |
R1 | R1 |
r2. \sal ees8^\mf^\markup { \small "(summit)" } r8 |
R1 |
R1 |
} \altoTwoChromC \relative c' {
% SCATTER
f8.--^\p r16 |
f8.-- r16 f8.-- r16 f8.-- r16 f8.-- r16 |
f8.-- r16
% RETTACS
}
\altoTwoChromD
\relative c' {
r2. \times 2/3 { r8 ees8^\p r8 }
R1 |
R1 |
R1 |
R1 |
r2 \bump \times 2/3 { r8 cis'4^\espressivo^\mp ~ } \bump \times 2/3 { cis4 r8 } |
r2
% SCATTER
r2
% RETTACS
 } \altoTwoChromE r4 r2 |
R1 \altoTwoChromF \relative c' { r4 |
R1 |
R1
R1
R1
R1
R1 |
R1 |
r2 \times 2/3 { d16^\mf r8 } r8 r4 |
r4. } \altoTwoChromG r4 \altoTwoChromH \relative c' { r8. r4 r2 |
% SCATTER
R1 |
R1 |
R1 | }
% RETTACS
r4 \altoTwoChromI r4
\relative c' {
% SCATTER
% RETTACS
\bump r8 \times 2/3 { r16
ees8^\p^\espressivo ~ } ees16 r8. r2 |
R1 |
R1 |
\revert Staff . TextScript #'self-alignment-X
g32^\pp ees g ees g ees g ees g ees g ees g ees r16 r4 \times 2/3 { r4 f8^\p }
R1 |
R1 |
}}

altoTwowords = \lyricmode {
the
I hold the ring %123
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't does -- n't
You
hand. No one sees the chain. But these rings %123
will
sum
Where sharp does -- n't cut. You
hand.
these
Where smooth pricks. Where sharp does -- n't cut. I hold the ring in my right hand. No one sees the chain.
The
the
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left hand. I
ning. The end. In
You
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't
ning
}

%%%%%%%%%%%%%%%%%%

altoThreeChromA = {
r2. d'8^\mf ( dis'8\pp^\< d'8 cis'8^\p ) r4
}

altoThreeChromB = {
c'8^\pp^\< ( b8 ais8\mf^\> b8 c'8 cis'8\p^\< d'8 dis'8^\>
e'16\p )
}

altoThreeChromC = {
R1
}

altoThreeChromD = {
R1
}

altoThreeChromE = {
r8 |
r2 r8 cis'8^\pp\< ( c'8 cis'8 |
d'8\mf^\> dis'8 e'8 dis'8\pp d'8 ) r8 r4 |
r2 r8 cis'8^\mp ( c'8
b8\mf^\> c'8 cis'8 c'8^\p^\< b8 ais8 b8 c'8
cis'8 d'8 cis'8^\f )
}

altoThreeChromF = {
r2 r8
c'8^\p
}

altoThreeChromG = {
c'8^\f^\> ( cis'8 d'8 dis'8 e'8 f'8 fis'8 g'8
gis'8 g'8\p )
}

altoThreeChromH = {
c'8^\f^\> ( ~
\times 2/3 { c'4 cis'4 d'4 }
\times 2/3 { dis'4 e'4 f'4 ~ }
\times 2/3 { f'4 fis'2 }
g'4 gis'4
g'16\p )
}


altoThreeChromI = {
d'8^\pp^\<^\markup { \small (beginning) } %{[%} ( cis'8 %{]%} c'8^\> %{[%} cis'8\pp ) %{]%}
}

altoThree = { \relative c' {
\globals
R1 R1 R1 |
r2 \times 2/3 { d16^\mp r8 } r8 r4 |
% SCATTER
r4.
% RETTACS
g32^\pp %{[%} ees g ees %{]%} g ees g ees g ees g ees g ees g ees g ees g ees |
g ees g ees
% SCATTER
r8 r4 r2 | R1 |
} \altoThreeChromA r2 |
\relative c' { R1 |
r4 \times 2/3 { r4 r16 b16^\p ~ } b2 ~ |
\times 2/3 { b8 r4 } r4 r2 | }
\altoThreeChromB
\relative c' { r8. r4 r2 |
\times 8/9 { r8. bes32^\p bes bes } \times 8/9 { r16. bes32 bes bes r16. } \times 8/9 { bes32 bes bes r8. } r4 |
r4. d8^\pp ~ d2 |
% SCATTER
R1 | R1 |
r4 \bump \times 2/3 { r4 ees8^\p^\espressivo ~ } ees16 r8. r4 |
R1 |
R1 |
R1 |
} \altoThreeChromC \relative c' {
% SCATTER
R1 |
% RETTACS
}
\altoThreeChromD
r2 \relative c' { \times 2/3 { ees8^\mf r4 } r4 |
R1 |
R1 |
R1 |
R1 |
r2 \bump \times 2/3 { r8 cis'4^\mp^\espressivo ~ } \bump \times 2/3 { cis4 r8 } |
r2
% SCATTER
f,8.--^\p r16 \autoBeamOff f8--
% RETTACS
 } \altoThreeChromE r4 r2 |
R1 \altoThreeChromF \relative c' { \times 2/3 { r4 ees8 ~ } |
ees16 r8. r4 r2
R1
R1
R1
R1
R1
R1
r2 \times 2/3 { r16 bes^\p r16 } r8 r4 |
r4. } \altoThreeChromG r4 \altoThreeChromH \relative c' { r8. r4 r2 |
% SCATTER
R1 |
R1 |
r2
% RETTACS
\times 2/3 { r4 e8^\pp } r4 |
r4 } \altoThreeChromI \relative c' {
% SCATTER
r4 r8
% RETTACS
\bump \times 2/3 { r16
ees8^\p^\espressivo ~ } ees16 r8. r2 |
R1 |
r2 a32^\f a a r a a a r a a a r a a a r |
\revert Staff . TextScript #'self-alignment-X
g32^\pp ees g ees g ees g ees g ees g ees r8 \times 4/5 { r4 e16^\p^\markup { \small (beginning) } } r4 |
R1 |
R1 |
}}

altoThreewords = \lyricmode {
of
does -- n't does -- n't
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't
I hold the ring %123
chain.
hand. No one sees the chain. But these rings %123
sum -- mit I
sum -- mit I
sum -- mit I
Where
You
hand.
these
Where sharp
Where smooth pricks. Where sharp does -- n't cut. I hold the ring in my right hand. No one sees the chain.
The
You
deep
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left hand. I
pricks.
ning. The end. In
You
sum -- mit I sum -- mit I
sum -- mit I sum -- mit I
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't
be
}

%%%%%%%%%%%%%%%%%%

altoFourChromA = {
r2. d'8^\mf ( dis'8\pp^\< d'8 cis'8^\p ) r4
}

altoFourChromB = {
c'8^\pp^\< ( b8 ais8\mf^\> b8 c'8 cis'8\p^\< d'8 dis'8^\>
e'16\p )
}

altoFourChromC = {
r2.
}

altoFourChromD = {
r4 r2
}

altoFourChromE = {
r2 r8 cis'8^\pp\< ( c'8 cis'8 |
d'8\mf^\> dis'8 e'8 dis'8\pp d'8 ) r8 r4 |
r2 r8 cis'8^\mp ( c'8
b8\mf^\> c'8 cis'8 c'8^\p^\< b8 ais8 b8 c'8
cis'8 d'8 cis'8^\f )
}

altoFourChromF = {
r2 r8
c'8^\p
}

altoFourChromG = {
c'8^\f^\> ( cis'8 d'8 dis'8 e'8 f'8 fis'8 g'8
gis'8 g'8\p )
}

altoFourChromH = {
c'8^\f^\> ( ~
\times 2/3 { c'4 cis'4 d'4 }
\times 2/3 { dis'4 e'4 f'4 ~ }
\times 2/3 { f'4 fis'2 }
g'4 gis'4
g'16\p )
}


altoFourChromI = {
d'8^\pp^\<^\markup { \small (beginning) } %{[%} ( cis'8 %{]%} c'8^\> %{[%} cis'8\pp ) %{]%}
}

altoFour = { \relative c' {
\globals
R1 R1 R1 |
R1 |
% SCATTER
f8.--^\p r16 f8--
% RETTACS
r8 r2 |
r4
% SCATTER
f8.-- r16 f8.-- r16 f8.-- r16 |
% RETTACS
R1 |
} \altoFourChromA r2 |
\relative c' { R1 |
R1 |
r2 \bump \times 2/3 { r4 ees8^\p^\espressivo ~ } ees16 r8. | }
\altoFourChromB
\relative c' { r8. r4 r2 |
r2. r8. ees16^\p^\espressivo |
R1 |
% SCATTER
R1 |
r4
\times 8/12 { r16.
% RETTACS
bes32^\mf %{[%} bes bes %{]%} r16. bes32 bes bes } \times 4/6 { r16. bes32 bes bes } r8 r4 |
\times 8/12 { bes32 bes bes } r8. r4 r2 |
R1 |
R1 |
R1 |
R1 |}  \relative c' {
% SCATTER
R1 |
R1 |
% RETTACS
R1 |
r2 \times 4/5 { r8. des16^\p r16 } r4 |
r8 \times 4/6 { r16. cis32^\ppp cis cis } \times 8/12 { r16. cis32 cis cis r16. cis32 cis cis } \times 8/12 { r16. cis32 cis cis r16. cis32 cis cis } r4 |
R1 |
R1 |
r2 \bump \times 2/3 { r8 cis'4^\mp^\espressivo ~ } \bump \times 2/3 { cis4 r8 } |
R1 |
% SCATTER
% RETTACS
 } \altoFourChromE r4 r2 |
R1 \altoFourChromF \relative c' { r4 |
R1 |
R1 |
R1 |
R1 |
R1 |
\times 4/6 { bes16-.^\p bes16-. bes16-. bes16-. bes16-. bes16-. } \times 4/6 { bes16-. bes16-. bes16-. bes16-. bes16-. bes16-. } \times 2/3 { bes16-. bes16-. r16 } r8 r4 |
r4 r8 \times 2/3 { r16 bes16-. bes16-. } \times 4/6 { bes16-. bes16-. bes16-. bes16-. bes16-. bes16-. } \times 4/6 { bes16-. bes16-. bes16-. bes16-. bes16-. bes16-. } |
\times 4/6 { bes16-. bes16-. bes16-. bes16-. bes16-. bes16-. } r4 r2 |
r4. } \altoFourChromG r4 \altoFourChromH \relative c' { r8. r4 r2 |
% SCATTER
r4 f8.-- r16 f8.-- r16 f8.-- r16 |
f8.-- r16 f8.-- r16 f8.-- r16 f8.-- r16 |
f8.-- r16 f8.-- r16
% RETTACS
r2 |
r4} \altoFourChromI \relative c' {
% SCATTER
r4
R1 |
r2.. \times 4/6 { bes32^\p bes bes a' a a } |
\times 8/12 { bes, bes bes a' a a bes, bes bes a' a a } \times 8/12 { bes, bes bes a' a a bes, bes bes a' a a } a^\f a a r a a a r a a a r a a a r |
\revert Staff . TextScript #'self-alignment-X
g32^\pp ees g ees g ees g ees r4 r2 |
R1 |
R1 |
}}

altoFourwords = \lyricmode {
Where sharp
Where sharp does
I hold the ring %123
You
hand. No one sees the chain. But these rings %123
You
sum -- mit I
sum -- mit I
sum -- mit I
sum -- mit I
hand.
sum -- mit I
sum -- mit I
sum -- mit I
sum -- mit I
sum -- mit I
these
Where smooth pricks. Where sharp does -- n't cut. I hold the ring in my right hand. No one sees the chain.
The
one one one one one one one one one one one one one one
one one one one one one one one one one one one one one one one one one one one
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left hand. I
Where sharp does -- n't cut. You hold the ring
ning. The end. In
sum -- mit I sum -- mit I sum -- mit I sum -- mit I
sum -- mit I sum -- mit I sum -- mit I sum -- mit I
sum -- mit I sum -- mit I sum -- mit I sum -- mit I
sum -- mit I sum -- mit I
does -- n't does -- n't does -- n't does -- n't
}

