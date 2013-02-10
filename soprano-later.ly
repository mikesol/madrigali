\include "defs-later.ly"

sopranoOneChromA = {
e'8^\pp^\< ( f'8 fis'8\mf^\> f'8 e'8\pp^\< f'8 fis'8^\> g'8
fis'8\pp )
}

sopranoOneChromB = {
r2. e'8^\mp ( dis'8^\> |
d'16\p )
}

sopranoOneChromC = {
e'8^\p^\< ( f'8 fis'8\mf^\> f'8 e'8\p )
}


sopranoOneChromD = {
e'8^\mp^\< ( f'8 fis'8\f^\> f'8 e'8 dis'8 d'\mp )
}


sopranoOneChromE = {
R1
e'8\mf^\> ( dis'8 d'8 dis'8\pp^\< e'8 f'8\p^\> e'8 dis'8\pp^\< |
e'8 f'8 fis'8 f'8 e'8 f'8 fis'8 g'8\mf^\> |
fis'8 f'8 fis'8\p^\< g'8 gis'8 g'8 fis'8
f'8 e'8 f'8 fis'32\f )
}


sopranoOneChromF = {
g'16.^\p^\< %{[%} ( fis'8 %{]%} g'8 gis'8
a'8 ais'8 a'8 gis'8\f^\> g'8 fis'8\p )
}

sopranoOneChromG = {
d''8^\f^\> ( cis''8 c''8 b'8 ais'8 a'8 gis'8 g'8
fis'8 g'8\p )
}

sopranoOneChromH = {
d''8^\f^\> ~ (
d''16 cis''8.
c''8. b'16 ~
b'8 %{[%} ais'8 ~ %{]%}
ais'8 %{[%} a'8 ~ %{]%}
a'4
gis'8 %{[%} g'8 ~ %{]%}
g'16 fis'8. ~
fis'8 g'8\p ~
g'16 )
}

sopranoOneChromI = {
r4 r4
}

sopranoOne = { \relative c'' {
\globals
R1 R1 R1 |
r2 r4 \times 2/3 { r8 aes^\p r8 }
R1 | R1 |
R1 |
r4. } \sopranoOneChromA r2 |
R1 |
\relative c'' { R1 |
r2 \bump \times 2/3 { r4 aes8^\p^\espressivo ~ } aes16 r8. | }
\sopranoOneChromB
\relative c'' { a8.^\mp ~ a4 ~ a2 ~ |
%{\autoBeamOn%}
\times 8/9 { a8. r16. } r4 r2 |
r4 \times 2/3 { r16 aes16^\p r16 } r8 r2 |
R1 | R1 |
r4 \bump \times 2/3 { r4 aes8^\p^\espressivo ~ } aes16 r8. r4 |
R1 |
R1 |
R1 |
r8 } \sopranoOneChromC \relative c'' {
r4 R1 r4
}
\sopranoOneChromD r8 \relative c'' { \times 4/5 { aes8^\f r16 r8 } r2 |
\autoBeamOff
R1 |
%{\autoBeamOn%}
r16 ees16^\pp r8 r4 r2 |
R1 |
R1 |
R1 |
r2
% SCATTER
\times 2/3 { a?8.--^\p r16 a8-- ~ } a16
% RETTACS
r8. } \sopranoOneChromE \relative c'' { r8.. r2 |
r2 r32 } \sopranoOneChromF
\relative c'' { r4 |
R1 |
R1 |
R1 |
\times 2/3 { d4^\mp r8 } r4 r2 |
R1 |
R1 |
R1 |
r2 \times 2/3 { r8 \sal fis,8.^\mf^\markup { \small (summit) } r16 } r4 |
r4. } %{\autoBeamOn%} \sopranoOneChromG r4 \sopranoOneChromH
r8. r4 r2 |
% SCATTER
R1 | R1 |
r2
% RETTACS
\relative c'' {
\times 2/3 { a8^\mf r4 } r4 |
R1 |
r4.. aes16^\ppp ~ aes2 ~ |
aes2.. r8 |
R1 |
g32^\pp ees g ees g ees r16 r4 r2 |
aes2^\p r2 |
R1 |
}}

sopranoOnewords = \lyricmode {
the
your left hand. I hold the ring in my %123
You
But these rings %123
sharp
pricks.
You
are the last links of
sees the chain. But these rings are
in
left
Where sharp
Where sharp does -- n't cut. You hold the ring in your left hand. I hold the ring in my right hand. No one sees the chain. But
these links are the last links of the chain. The
know
sum
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left hand. I
right
be
does -- n't does -- n't does -- n't
the
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoTwoChromA = {
e'8^\pp^\< ( f'8 fis'8\mf^\> f'8 e'8\pp^\< f'8 fis'8^\> g'8
fis'8\pp )
}

sopranoTwoChromB = {
r2. e'8^\mp ( dis'8^\> |
d'16\p )
}

sopranoTwoChromC = {
e'8^\p^\< ( f'8 fis'8\mf^\> f'8 e'8\p )
}


sopranoTwoChromD = {
e'8^\mp^\< ( f'8 fis'8\f^\> f'8 e'8 dis'8 d'\mp )
}


sopranoTwoChromE = {
R1
e'8\mf^\> ( dis'8 d'8 dis'8\pp^\< e'8 f'8\p^\> e'8 dis'8\pp^\< |
e'8 f'8 fis'8 f'8 e'8 f'8 fis'8 g'8\mf^\> |
fis'8 f'8 fis'8\p^\< g'8 gis'8 g'8 fis'8
f'8 e'8 f'8 fis'32\f )
}


sopranoTwoChromF = {
g'16.^\p^\< %{[%} ( fis'8 %{]%} g'8 gis'8
a'8 ais'8 a'8 gis'8\f^\> g'8 fis'8\p )
}

sopranoTwoChromG = {
d''8^\f^\> ( cis''8 c''8 b'8 ais'8 a'8 gis'8 g'8
fis'8 g'8\p )
}

sopranoTwoChromH = {
d''8^\f^\> ~ (
d''16 cis''8.
c''8. b'16 ~
b'8 %{[%} ais'8 ~ %{]%}
ais'8 %{[%} a'8 ~ %{]%}
a'4
gis'8 %{[%} g'8 ~ %{]%}
g'16 fis'8. ~
fis'8 g'8\p ~
g'16 )
}

sopranoTwoChromI = {
r4 r4
}

sopranoTwo = { \relative c'' {
\globals
R1 R1 R1 |
R1 |
% SCATTER
\times 2/3 { a?8.--^\p r16 a8.-- r16 r4 }
% RETTACS
r2 |
% SCATTER
\times 2/3 { r2 a8.-- r16 } \times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 }
% RETTACS
R1 |
r4. } \sopranoTwoChromA r2 |
R1 |
r4 \relative c'' { \times 2/3 { r4 ges16^\mp r16 } r2 | }
R1 |
\sopranoTwoChromB
\relative c'' { r8. r4 r2 |
%{\autoBeamOn%}
r4 \times 8/9 { a32^\p a a r16. a32 a a } \times 8/9 { r16. a32 a a r16. } r4 |
R1 |
% SCATTER
R1 |
% RETTACS
R1 |
R1 |
r2 \times 4/5 { r8. aes16^\mf r16 } r4 |
R1 |
\times 2/3 { a?32^\mf a a } r8. r4 r16 \times 2/3 { a32^\f a a } r8 r8 \times 2/3 { a32 a a } r16 |
r8 } \sopranoTwoChromC \relative c'' {
r4 | R1 | r4
% RETTACS
}
\sopranoTwoChromD r8 \relative c'' { r4 r2
r2 \times 4/5 { r16 aes16^\mp r8. } r4 |
%{\autoBeamOn%}
R1 |
r2. \bump \times 2/3 { r8 cis4^\mf^\espressivo ~ } |
\bump \times 4/5 { cis8 cis8.^\espressivo ~ } cis4 ~ cis8 %{[%} cis8^\espressivo\glissando ( %{]%} ais8 ) cis8^\espressivo\glissando ( |
ais4 ) cis4^\espressivo\glissando ( \times 2/3 { ais4 ) cis8^\espressivo ~ } cis4 ~ |
cis4. r8
% SCATTER
r2 |
% RETTACS
} \sopranoTwoChromE \relative c'' { r8.. r2 |
r2 r32 } \sopranoTwoChromF
\relative c'' { \bump \times 2/3 { r4 aes8^\p^\espressivo ~ } |
aes16 r8. r4 r2 |
R1 |
R1 |
R1 |
r4 \times 2/3 { r8 a-_^\mf a-_ } \times 2/3 { a-_ a-_ a-_ } \times 2/3 { a-_ a-_ a-_ } |
r2 \times 2/3 { r8 a-_ a-_ } \times 2/3 { a-_ a-_ a-_ } |
\times 2/3 { a-_ a-_ a-_ } \times 2/3 { a-_ a-_ r } r2 |
R1 |
r8 a8 r8 } %{\autoBeamOn%} \sopranoTwoChromG r4 \sopranoTwoChromH
r8. r4 r2 |
% SCATTER
\relative c'' {
\times 2/3 { r4 a8.-- r16 a8.-- r16 } \times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 } |
\times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 } \times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 } |
\times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 }
% RETTACS
r2 |
R1
% SCATTER
r8
% RETTACS
\bump \times 2/3 { r16 \bump aes8^\p^\espressivo ~ } aes16 r16 r8 r2 |
R1 |
R1 |
g32^\pp ees r16 r8 r4 \times 4/5 { r16 a8^\mf r8 } r4 |
R1 |
R1 |
}}

sopranoTwowords = \lyricmode {
Where sharp
Where sharp does -- n't
your left hand. I hold the ring in my %123
the
But these rings %123
sum -- mit I
sum -- mit I
sum -- mit I
the
sum -- mit I
sum -- mit I
sum -- mit I
are the last links of
sees the chain. But these rings are
your
these
these
these _
these _
these _
these
Where sharp does -- n't cut. You hold the ring in your left hand. I hold the ring in my right hand. No one sees the chain. But
these links are the last links of the chain. The
You
end. end. end. end. end. end. end. end.
end. end. end. end. end. end. end. end. end. end.
I
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left hand. I
Where sharp does -- n't cut. You  hold the ring in your left  hand. I
You
does -- n't
chain.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoThreeChromA = {
e'8^\pp^\< ( f'8 fis'8\mf^\> f'8 e'8\pp^\< f'8 fis'8^\> g'8
fis'8\pp )
}

sopranoThreeChromB = {
r2. e'8^\mp ( dis'8^\> |
d'16\p )
}

sopranoThreeChromC = {
e'8^\p^\< ( f'8 fis'8\mf^\> f'8 e'8\p )
}


sopranoThreeChromD = {
e'8^\mp^\< ( f'8 fis'8\f^\> f'8 e'8 dis'8 d'\mp )
}


sopranoThreeChromE = {
R1
e'8\mf^\> ( dis'8 d'8 dis'8\pp^\< e'8 f'8\p^\> e'8 dis'8\pp^\< |
e'8 f'8 fis'8 f'8 e'8 f'8 fis'8 g'8\mf^\> |
fis'8 f'8 fis'8\p^\< g'8 gis'8 g'8 fis'8
f'8 e'8 f'8 fis'32\f )
}


sopranoThreeChromF = {
g'16.^\p^\< %{[%} ( fis'8 %{]%} g'8 gis'8
a'8 ais'8 a'8 gis'8\f^\> g'8 fis'8\p )
}

sopranoThreeChromG = {
d''8^\f^\> ( cis''8 c''8 b'8 ais'8 a'8 gis'8 g'8
fis'8 g'8\p )
}

sopranoThreeChromH = {
d''8^\f^\> ~ (
d''16 cis''8.
c''8. b'16 ~
b'8 %{[%} ais'8 ~ %{]%}
ais'8 %{[%} a'8 ~ %{]%}
a'4
gis'8 %{[%} g'8 ~ %{]%}
g'16 fis'8. ~
fis'8 g'8\p ~
g'16 )
}

sopranoThreeChromI = {
r4 r4
}

sopranoThree = { \relative c'' {
\globals
R1 R1 R1 |
r4 \times 2/3 { r8 aes^\mf r8 } r2 |
% SCATTER
R1 |
% RETTACS
% SCATTER
R1 |
% RETTACS
R1 |
r4. } \sopranoThreeChromA \relative c'' { r2 |
R1 |
R1 |
r2 \bump \times 2/3 { r4 aes8^\p^\espressivo ~ } aes16 r8. | }
\sopranoThreeChromB
\relative c'' { r8. r4 r2 |
%{\autoBeamOn%}
r2. r8. aes16^\p^\espressivo |
R1 |
% SCATTER
R1 |
% RETTACS
r4. \times 4/6 { a32^\mf a a r16. } \times 8/12 { a32 a a r16. a32 a a r16. } r4 |
\times 8/12 { r16. a32 a a } r8 r4 r2 |
R1 |
\times 2/3 { r8 aes4^\p } r4 r2 |
R1 |
r8 } \sopranoThreeChromC \relative c'' {
% SCATTER
\times 2/3 { r8 a8.-- r16 }
\times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 } \times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 }
\times 2/3 { a8.-- r16 a8-- }
% RETTACS
}
\sopranoThreeChromD r8 \relative c'' { r4 r2 |
\autoBeamOff
\times 4/5 { r8. aes8^\mf ~ } aes8 r8 r2 |
%{\autoBeamOn%}
r2. g32^\pp ees? g ees g ees g ees |
g ees g ees g ees r16 r4 r2 |
R1 |
R1 |
R1 |
} \sopranoThreeChromE \relative c'' { r8.. r2 |
r2 r32 } \sopranoThreeChromF
\relative c'' { \bump \times 2/3 { r4 aes8^\p^\espressivo ~ } |
aes16 r8. r4 r2 |
R1 |
R1 |
R1 |
R1 |
R1 |
R1 |
r4 a8^\mp r8 r2 |
r4. } %{\autoBeamOn%} \sopranoThreeChromG r4 \sopranoThreeChromH
r8. r4 r16
\relative c'' {
  \footnote
    \markup { \tiny * }
    #'(-1 . 1)
    #'NoteHead
    \markup { \tiny * Should sound garbled and hurried, like tape getting caught in a recorder. }
  c64^\mf %{[%} g a e %{]%} r8 r4 |
% SCATTER
R1 | R1 | R1 | r8. \times 2/3 { aes32^\f aes aes } r4 r2 | }
\relative c'' { r8
\bump \times 2/3 { r16 \bump aes8^\p^\espressivo ~ } aes16 r16 r8 r2 |
R1 |
R1 |
g32^\pp ees g ees g ees g ees r4 r2 |
r2. aes4^\p ~ |
aes4 ~ aes16 r8. r2 |
}}

sopranoThreewords = \lyricmode {
last
your left hand. I hold the ring in my %123
You
But these rings %123
You
sum -- mit I
sum -- mit I
sum -- mit I
sum -- mit I
I
are the last links of
Where sharp does -- n't cut. You hold the left
sees the chain. But these rings are
I
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't
Where sharp does -- n't cut. You hold the ring in your left hand. I hold the ring in my right hand. No one sees the chain. But
these links are the last links of the chain. The
You
cut.
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left hand. I
sum -- mit I know
sum -- mit I
You
does -- n't does -- n't does -- n't does -- n't
the
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoFourChromA = {
e'8^\pp^\< ( f'8 fis'8\mf^\> f'8 e'8\pp^\< f'8 fis'8^\> g'8
fis'8\pp )
}

sopranoFourChromB = {
r2. e'8^\mp ( dis'8^\> |
d'16\p )
}

sopranoFourChromC = {
e'8^\p^\< ( f'8 fis'8\mf^\> f'8 e'8\p )
}


sopranoFourChromD = {
e'8^\mp^\< ( f'8 fis'8\f^\> f'8 e'8 dis'8 d'\mp )
}


sopranoFourChromE = {
R1
e'8\mf^\> ( dis'8 d'8 dis'8\pp^\< e'8 f'8\p^\> e'8 dis'8\pp^\< |
e'8 f'8 fis'8 f'8 e'8 f'8 fis'8 g'8\mf^\> |
fis'8 f'8 fis'8\p^\< g'8 gis'8 g'8 fis'8
f'8 e'8 f'8 fis'32\f )
}


sopranoFourChromF = {
g'16.^\p^\< %{[%} ( fis'8 %{]%} g'8 gis'8
a'8 ais'8 a'8 gis'8\f^\> g'8 fis'8\p )
}

sopranoFourChromG = {
d''8^\f^\> ( cis''8 c''8 b'8 ais'8 a'8 gis'8 g'8
fis'8 g'8\p )
}

sopranoFourChromH = {
d''8^\f^\> ~ (
d''16 cis''8.
c''8. b'16 ~
b'8 %{[%} ais'8 ~ %{]%}
ais'8 %{[%} a'8 ~ %{]%}
a'4
gis'8 %{[%} g'8 ~ %{]%}
g'16 fis'8. ~
fis'8 g'8\p ~
g'16 )
}

sopranoFourChromI = {
r4 r4
}

sopranoFour = { \relative c'' {
\globals
R1 R1 R1 |
R1 |
% SCATTER
R1 | R1 |
% RETTACS
R1 |
r4. } \sopranoFourChromA r2 |
R1 |
r4 \relative c'' { \times 2/3 { aes8^\mf r4 } r2 |
R1 | }
\sopranoFourChromB
\relative c'' { r8. r4 r2 |
%{\autoBeamOn%}
r2. r8. aes16^\p^\espressivo |
R1 |
% SCATTER
\times 2/3 { a?8.-- r16 a8.-- r16 a8.-- r16 } \times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 }  \times 2/3 { a8.-- r16 a8-- }
% RETTACS
r4 r2 |
r4 \bump \times 2/3 { r4 aes8^\p^\espressivo ~ } aes16 r8. r4 |
r2. r8. aes16^\p |
R1 |
R1 |
r8 } \sopranoFourChromC \relative c'' {
% SCATTER
r4 |
R1 |
r4
% RETTACS
}
\sopranoFourChromD r8 \relative c'' { r4 \times 2/3 { r8 aes4^\p } r4 |
\autoBeamOff
r2 \times 4/5 { r4 aes16^\pp ~ } \times 4/5 { aes16 r4 } |
%{\autoBeamOn%}
R1 |
R1 |
R1 |
R1 |
R1 |
% SCATTER
% RETTACS
} \sopranoFourChromE \relative c'' { r8.. r2 |
r8. \times 2/3 { a32^\f a a } r4 r32 } \sopranoFourChromF
\relative c'' { r4 |
R1 |
R1 |
R1 |
R1 |
R1 |
R1 |
R1 |
R1 |
r4 \times 2/3 { r16 \autoBeamOff a8^\p } } %{\autoBeamOn%} \sopranoFourChromG r4 \sopranoFourChromH
r8. r4 r2 |
% SCATTER
R1 |
R1 |
% RETTACS
R1 |
r2. \relative c'' {
% SCATTER
\times 2/3 { a8.--^\p r16 a8-- ~ }
\times 2/3 { a16 r8 }
% RETTACS
r8 r4 r2 |
R1 |
R1 |
g32^\pp ees g ees g ees g ees g ees r8. r2 |
R1 |
R1 |
}}

sopranoFourwords = \lyricmode {
your left hand. I hold the ring in my %123
one
But these rings %123
You
Where sharp does -- n't cut. You hold the
You
I
are the last links of
sees the chain. But these rings are
I
I
Where sharp does -- n't cut. You hold the ring in your left hand. I hold the ring in my right hand. No one sees the chain. But
sum -- mit I
these links are the last links of the chain. The
I
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left hand. I
Where sharp
does -- n't does -- n't does -- n't does -- n't
does -- n't
}

