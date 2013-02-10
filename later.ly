\version "2.15.3"
#(set-default-paper-size "letter")
#(set-global-staff-size 15.5)
\header {
  title = "LATER"
  composer = "mike solomon"
  poet = "Wassily Kandinsky"
  tagline = ""
}
sal = {\once \override Staff . TextScript #'self-alignment-X = #LEFT }
sopranoChromA = {
e'8^\pp^\< ( f'8 fis'8\mf^\> f'8 e'8\pp^\< f'8 fis'8^\> g'8
fis'8\pp )
}
altoChromA = {
dis'8^\pp^\< ( d'8 cis'8\mf^\> d'8 dis'8\pp^\< d'8 cis'8^\> c'8
cis'8\pp )
}
tenorChromA = {
gis8^\pp^\< ( a8 ais8\mf^\> a8 gis8\pp^\< a8 ais8^\> b8
ais8\pp )
}
bassChromA = {
g8^\pp^\< ( fis8 f8\mf^\> fis8 g8\pp^\< fis8 f8^\> e8
f8\pp )
}

sopranoChromB = {
fis'8^\pp^\< ( g'8 gis'8\mf^\> g'8 fis'8 f'8\p^\< e'8 dis'8^\>
\autoBeamOff
d'16\p )
}
altoChromB = {
c'8^\pp^\< ( b8 ais8\mf^\> b8 c'8 cis'8\p^\< d'8 dis'8^\>
e'16\p )
}
tenorChromB = {
ais8^\pp^\< ( b8 c'8\mf^\> b8 ais8 a8\p^\< gis8 g8^\>
fis16\p )
}
bassChromB = {
e8^\pp^\< ( dis8 d8\mf^\> dis8 e8 f8\p^\< fis8 g8^\>
gis16\p )
}

sopranoChromC = {
e'8^\p^\< ( f'8 fis'8\mf^\> f'8 e'8\p )
}
altoChromC = {
dis'8^\p^\< ( d'8 cis'8\mf^\> d'8 %{[%} dis'8\p ) %{]%}
}
tenorChromC = {
c'8^\p^\< ( cis'8 d'8\mf^\> cis'8 %{[%} c'8\p ) %{]%}
}
bassChromC = {
b8^\p^\< ( ais8 a8\mf^\> ais8 %{[%} b8\p ) %{]%}
}

sopranoChromD = {
e'8^\mp^\< ( f'8 fis'8\f^\> f'8 e'8 dis'8 d'\mp )
}
altoChromD = {
c'8^\mp^\< ( b8 ais8\f^\> b8 c'8 cis'8 d'\mp )
}
tenorChromD = {
fis8^\mp^\< ( g8 gis8\f^\> g8 fis8 f8 e\mp )
}
bassChromD = {
d8^\mp^\< ( cis8 c8\f^\> cis8 d8 dis8 \autoBeamOff d\mp )
}

sopranoChromE = {
dis'8^\pp^\< ( %{\autoBeamOn%}
e'8 f'8\p^\> e'8 dis'8\pp^\< e'8 f'8 fis'8
f'8 e'8\mf^\> dis'8 d'8 dis'8\pp^\< e'8 f'8\p^\> e'8
dis'8\pp^\< e'8 f'8 fis'8 f'8 e'8 f'8 fis'8
g'8\mf^\> fis'8 f'8 fis'8\p^\< g'8 gis'8 g'8 fis'8
f'8 e'8 f'8 fis'32\f )
}
altoChromE = {
dis'8^\pp^\< ( %{\autoBeamOn%}
d'8 cis'8\p^\> d'8 dis'8\pp^\< d'8 cis'8 c'8
cis'8 d'8\mf^\> dis'8 e'8 dis'8\pp^\< d'8 cis'8\p^\> d'8
dis'8\pp^\< d'8 cis'8 c'8 cis'8 d'8 cis'8 c'8
b8\mf^\> c'8 cis'8 c'8\p^\< b8 ais8 b8 c'8
cis'8 d'8 cis'8 c'32\f )
}
tenorChromE = {
g8^\pp^\< ( %{\autoBeamOn%}
gis8 a8\p^\> gis8 g8\pp^\< gis8 a8 ais8
a8 gis8\mf^\> g8 fis8 g8\pp^\< gis8 a8\p^\> gis8
g8\pp^\< gis8 a8 ais8 a8 gis8 a8 ais8
b8\mf^\> ais8 a8 ais8\p^\< b8 c'8 b8 ais8
a8 gis8 a8 ais32\f )
}
bassChromE = {
g8^\pp^\< ( %{\autoBeamOn%}
fis8 f8\p^\> fis8 g8\pp^\< fis8 f8 e8
f8 fis8\mf^\> g8 gis8 g8\pp^\< fis8 f8\p^\> fis8
g8\pp^\< fis8 f8 e8 f8 fis8 f8 e8
dis8\mf^\> e8 f8 e8\p^\< dis8 d8 dis8 e8
f8 fis8 f8 \autoBeamOff e32\f )
}

sopranoChromF = {
g'16.^\p^\< %{[%} ( fis'8 %{]%} g'8 gis'8
a'8 ais'8 a'8 gis'8\f^\> g'8 fis'8\p )
}
altoChromF = {
b16.^\p^\< %{[%} ( c'8 %{]%} b8 ais8
a8 gis8 a8 ais8\f^\> b8 c'8\p )
}
tenorChromF = {
b16.^\p^\< %{[%} ( ais8 %{]%} b8 c'8
cis'8 d'8 cis'8 c'8\f^\> b8 ais8\p )
}
bassChromF = {
dis16.^\p^\< %{[%} ( e8 %{]%} dis8 d8
cis8 c8 cis8 d8\f^\> dis8 e8\p )
}

sopranoChromG = {
d''8^\f^\> ( cis''8 c''8 b'8 ais'8 a'8 gis'8 g'8
fis'8 g'8\p )
}

sopranoChromH = {
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

altoChromG = {
c'8^\f^\> ( cis'8 d'8 dis'8 e'8 f'8 fis'8 g'8
gis'8 g'8\p )
}

altoChromH = {
c'8^\f^\> ( ~
\times 2/3 { c'4 cis'4 d'4 }
\times 2/3 { dis'4 e'4 f'4 ~ }
\times 2/3 { f'4 fis'2 }
g'4 gis'4
g'16\p )
}

tenorChromG = {
e'8^\f^\> ( dis'8 d'8 cis'8 c'8 b8 ais8 a8
gis8 a8\p )
}

tenorChromH = {
e'8^\f^\> ( dis'8 d'8 cis'8 c'8 b8 ais8 a8
gis8 a8
e' dis'8
d'8 cis'8
c'8 b8
ais8 a?16\p )
}

bassChromG = {
d8^\f^\> ( dis8 e8 f8 fis8 g8 gis8 a8
ais8 a8\p )
}

%bassChromH = {
%d8^\f^\> ( dis8 e8 f8 fis8 g8 gis8 a8
%ais8 a8\p )
%}

sopranoChromI = {
d'8^\pp^\<^\markup { \small (beginning) } %{[%} ( dis'8 %{]%} e'8^\> %{[%} dis'8\pp ) %{]%}
}
altoChromI = {
d'8^\pp^\<^\markup { \small (beginning) } %{[%} ( cis'8 %{]%} c'8^\> %{[%} cis'8\pp ) %{]%}
}
tenorChromI = {
ais8^\pp^\<^\markup { \small (beginning) } %{[%} ( b8 %{]%} c'8^\> %{[%} b8\pp ) %{]%}
}
bassChromI = {
ais8^\pp^\<^\markup { \small (beginning) } %{[%} ( a8 %{]%} gis8^\> %{[%} a8\pp ) %{]%}
}

globals = {
\override Staff . Slur #'direction = #UP
\override Staff . TextScript #'self-alignment-X = #CENTER
\override Staff . TupletBracket #'direction = #UP
\override Staff . TupletBracket #'outside-staff-padding = #0
\set Staff.melismaBusyProperties = #'(tieMelismaBusy)
\autoBeamOff
}

bump = { \once \override Staff . TupletBracket #'outside-staff-priority = #1 }

\paper {
  left-margin = 0.85\in
  right-margin = 0.75\in
  footnote-separator-markup = \markup { \override #`(span-factor . 1/5) \draw-hline }
  ragged-last-bottom = ##f
  
}

throat = {
\stopStaff
\override Staff . StaffSymbol #'line-count = #1
\override Staff . BarLine #'bar-extent = #'(-1.0 . 1.0)
\startStaff
\clef percussion
%\override Score . TimeSignature #'stencil =
%#(lambda (grob) (grob-interpret-markup grob (markup #:override '(baseline-skip . 0) (#:column (#:huge #:bold "?" #:number "4")))))
\override Staff . Stem #'stencil = ##f
\override Staff . Flag #'stencil = ##f
\override Staff . NoteHead #'duration-log = #3
\override Staff . Dots #'stencil = ##f
\override Staff . Glissando #'bound-details #'left #'padding = #0
\override Staff . Glissando #'bound-details #'right #'padding = #0
\override Staff.Glissando #'thickness = #4.0
\override Staff.Glissando #'minimum-length = #20
\override Glissando #'springs-and-rods = #ly:spanner::set-spacing-rods
}

norm = {
\stopStaff
\revert Staff . StaffSymbol #'line-count
\startStaff
%\revert Score . TimeSignature #'stencil
\revert Staff . BarLine #'bar-extent
\revert Staff . Stem #'stencil
\revert Staff . Flag #'stencil
\revert Staff . NoteHead #'duration-log
\revert Staff . Dots #'stencil
\revert Staff . Glissando #'bound-details #'left #'padding
\revert Staff . Glissando #'bound-details #'right #'padding
\revert Staff.Glissando #'thickness
\revert Staff.Glissando #'minimum-length
\revert Glissando #'springs-and-rods
}

tnorm = { \norm \clef "treble_8" }
bnorm = { \norm \clef bass }

indications = {
\tempo 4=50
s1 % 1
s1 % 2
s1 % 3
s1 % 4
s1 % 5
s1 % 6
s1 % 7
s1 % 8
s1 % 9
s1 % 10
s1 % 11
s1 % 12
s1 % 13
s1 % 14
s1 % 15
s1 % 16
s1 % 17
s1 % 18
s1 % 19
s1 % 20
s1 % 21
s1 % 22
s1 % 23
s1 % 24
s1 % 25
s1 % 26
s1 % 27
s2 \bar "dashed" s2 %28
s1 % 30
s1 % 31
s1 % 32
s1 % 33
s1 % 34
s1 % 35
s1 % 36
s1 % 37
s1 % 38
s1 % 39
s1 % 40
s1 % 41
s1 % 42
s1 % 43
s1 % 44
s1 % 45
s1 % 46
s1 % 47
s1 % 48
s1 % 49
s1 % 50
s1 % 51
s1 % 52
s1 % 53
s1 % 54
s1 % 55
s1 % 56
s1 % 57
s1 % 58
s1 % 59
s2 \bar "dashed" s2 % 60
s1 % 61
s1 % 62
s1 \bar "|." % 63
}

soprano = { \relative c'' {
\globals
R1 R1 R1 |
r4 \times 2/3 { r8 aes^\mf r8 } r4 \times 2/3 { r8 aes^\p r8 }
% SCATTER
\times 2/3 { a?8.-- r16 a8.-- r16 r4 }
% RETTACS
r2 |
% SCATTER
\times 2/3 { r2 a8.-- r16 } \times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 }
% RETTACS
R1 |
r4. } \sopranoChromA r2 |
R1 |
r4 \relative c'' { \times 2/3 { aes8^\mf r8 ges16^\mp r16 } r2 |
r2 \bump \times 2/3 { r4 aes8^\p^\espressivo ~ } aes16 r8. | }
\sopranoChromB
\relative c'' { a8.^\mp ~ a4 ~ a2 ~ |
%{\autoBeamOn%}
\times 8/9 { a8. r16. } \times 8/9 { a32^\p a a r16. a32 a a } \times 8/9 { r16. a32 a a r16. } r8. aes16^\p^\espressivo |
r4 \times 2/3 { r16 aes16^\p r16 } r8 r2 |
% SCATTER
\times 2/3 { a?8.-- r16 a8.-- r16 a8.-- r16 } \times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 }  \times 2/3 { a8.-- r16 a8-- }
% RETTACS
r8 \times 4/6 { a32^\mf a a r16. } \times 8/12 { a32 a a r16. a32 a a r16. } r4 |
\times 8/12 { r16. a32 a a } r8 \bump \times 2/3 { r4 aes8^\p^\espressivo ~ } aes16 r8. r4 |
r2 \times 4/5 { r8. aes16^\mf r16 } r8. aes16^\p |
\times 2/3 { r8 aes4 } r4 r2 |
\times 2/3 { a?32^\mf a a } r8. r4 r16 \times 2/3 { a32^\f a a } r8 r8 \times 2/3 { a32 a a } r16 |
r8 } \sopranoChromC \relative c'' {
% SCATTER
\times 2/3 { r8 a8.-- r16 }
\times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 } \times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 }
\times 2/3 { a8.-- r16 a8-- }
% RETTACS
}
\sopranoChromD r8 \relative c'' { \times 4/5 { aes8^\f r16 r8 } \times 2/3 { r8 aes4^\p } r4 |
\autoBeamOff
\times 4/5 { r8. aes8^\mf ~ } aes8 r8 \times 4/5 { r16 aes16^\mp r8 aes16^\pp ~ } \times 4/5 { aes16 r4 } |
%{\autoBeamOn%}
r16 ees16 r8 r4 r4 g32^\pp ees? g ees g ees g ees |
g ees g ees g ees r16 r4 r4 \bump \times 2/3 { r8 cis'4^\mf^\espressivo ~ } |
\bump \times 4/5 { cis8 cis8.^\espressivo ~ } cis4 ~ cis8 %{[%} cis8^\espressivo\glissando ( %{]%} ais8 ) cis8^\espressivo\glissando ( |
ais4 ) cis4^\espressivo\glissando ( \times 2/3 { ais4 ) cis8^\espressivo ~ } cis4 ~ |
cis4. r8
% SCATTER
\times 2/3 { a?8.--^\p r16 a8-- ~ } a16
% RETTACS
r16 } \sopranoChromE \relative c'' { r8.. r2 |
r8. \times 2/3 { a32^\f a a } r4 r32 } \sopranoChromF
\relative c'' { \bump \times 2/3 { r4 aes8^\p^\espressivo ~ } |
aes16 r8. r4 r2 |
R1 |
R1 |
\times 2/3 { d4^\mp r8 } r4 r2 |
r4 \times 2/3 { r8 a-_^\mf a-_ } \times 2/3 { a-_ a-_ a-_ } \times 2/3 { a-_ a-_ a-_ } |
r2 \times 2/3 { r8 a-_ a-_ } \times 2/3 { a-_ a-_ a-_ } |
\times 2/3 { a-_ a-_ a-_ } \times 2/3 { a-_ a-_ r } r2 |
r4 a8^\mp r8 \times 2/3 { r8 \sal fis8.^\mf^\markup { \small (summit) } r16 } r4 |
r8 a8 \times 2/3 { r16 \autoBeamOff a8^\p } } %{\autoBeamOn%} \sopranoChromG r4 \sopranoChromH
r8. r4 r16
\relative c'' {
  \footnote
    \markup { \tiny * }
    #'(-1 . 1)
    #'NoteHead
    \markup { \tiny * Should sound garbled and hurried, like tape getting caught in a recorder. }
  c64^\mf %{[%} g a e %{]%} r8 r4 |
% SCATTER
\times 2/3 { r4 a8.--^\p r16 a8.-- r16 } \times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 } |
\times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 } \times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 } |
\times 2/3 { a8.-- r16 a8.-- r16 a8.-- r16 }
% RETTACS
\times 2/3 { a8^\mf r4 } r4 |
r8. \times 2/3 { gis32^\f gis gis }} \sopranoChromI \relative c'' {
% SCATTER
\times 2/3 { a8.--^\p r16 a8-- ~ }
\times 2/3 { a16 r8 }
% RETTACS
\bump \times 2/3 { r16 \bump aes8^\espressivo ~ } aes16 r8 aes16^\ppp ~ aes2 ~ |
aes2.. r8 |
R1 |
g32^\pp ees g ees g ees g ees g ees r8. \times 4/5 { r16 a8^\mf r8 } r4 |
aes2^\p r4 aes4 ~ |
aes4 ~ aes16 r8. r2 |
}}

sopranowords = \lyricmode {
last
the
Where sharp
Where sharp does -- n't
your left hand. I hold the ring in my %123
one
the
You
hand. No one sees the chain. But these rings %123
sharp
sum -- mit I
sum -- mit I
sum -- mit I
You
pricks.
Where sharp does -- n't cut. You hold the
sum -- mit I
sum -- mit I
sum -- mit I
sum -- mit I
You
the
I
I
sum -- mit I
sum -- mit I
sum -- mit I
are the last links of
Where sharp does -- n't cut. You hold the left
sees the chain. But these rings are
in
I
I
your
I
left
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't
these
these
these _
these _
these _
these
Where sharp
I know I will find you. Where smooth pricks. Where sharp does -- n't cut. You hold the ring in your left hand. I hold the ring in my right hand. No one sees the chain. But
sum -- mit I
these links are the last links of the chain. The
You
know
end. end. end. end. end. end. end. end.
end. end. end. end. end. end. end. end. end. end.
cut.
sum
I
I
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left hand. I
sum -- mit I know
Where sharp does -- n't cut. You  hold the ring in your left  hand. I
night
sum -- mit I
ning. The end. In
Where sharp
You
be
does -- n't does -- n't does -- n't does -- n't
does -- n't
chain.
the
the
}

alto = { \relative c' {
\globals
R1 R1 r2. b4^\p ~ |
b4 ~ \times 2/3 { b8 r4 } \times 2/3 { d16^\mp fis8^\p } r8 r4 |
% SCATTER
f8.-- r16 f8--
% RETTACS
g32^\pp %{[%} ees g ees %{]%} g ees g ees g ees g ees g ees g ees g ees g ees |
g ees g ees
% SCATTER
r8 f8.--^\p r16 f8.-- r16 f8.-- r16 |
% RETTACS
\once \override TextScript #'self-alignment-X = #LEFT e2^\mf^\markup { \small "(beginning)" } ~ e8. r16 r4 |
r4. } \altoChromA r2 |
\relative c'' { g32^\pp ees g ees g ees g ees g ees g ees g ees g ees g ees g ees g ees g ees r4 |
r4 \times 2/3 { r4 r16 b16^\p ~ } b2 ~ |
\times 2/3 { b8 r4 } g'32^\pp ees g ees g ees r16 \bump \times 2/3 { r4 ees8^\p^\espressivo ~ } ees16 r8. | }
\altoChromB
\relative c' { r8. r4 r2 |
\times 8/9 { r8. bes32^\p bes bes } \times 8/9 { r16. bes32 bes bes r16. } \times 8/9 { bes32 bes bes r8. } bes16^\mf r8 ees16^\p^\espressivo |
r4. d8^\pp ~ d2 |
% SCATTER
f8.--^\p r16 f8.-- r16 f8.-- r16 f8. r16 |
f8.-- r16
\times 8/12 { f16.--
% RETTACS
bes,32^\mf %{[%} bes bes %{]%} r16. bes32 bes bes } \times 4/6 { r16. bes32 bes bes } r8 r4 |
\times 8/12 { bes32 bes bes } r8. \bump \times 2/3 { r4 ees8^\p^\espressivo ~ } ees16 r8. r4 |
r2. \sal ees8^\mf^\markup { \small "(summit)" } r8 |
R1 |
R1 |
r8 } \altoChromC \relative c' {
% SCATTER
f8.-- r16 |
f8.-- r16 f8.-- r16 f8.-- r16 f8.-- r16 |
f8.-- r16
% RETTACS
}
\altoChromD
r8 r4 \relative c' { \times 2/3 { ees8^\mf r4 } \times 2/3 { r8 ees8^\p r8 }
r2 \times 4/5 { r8. des16^\p r16 } r4 |
b16 r16 \times 4/6 { r16. cis32^\ppp cis cis } \times 8/12 { r16. cis32 cis cis r16. cis32 cis cis } \times 8/12 { r16. cis32 cis cis r16. cis32 cis cis } r4 |
r2 cis'4^\mf^\espressivo \glissando ( \times 2/3 { ais4 ) cis8^\espressivo ~ } |
cis4 cis4^\espressivo\glissando ( ais4 ) cis4^\espressivo ~ |
cis8 cis8^\espressivo ~ cis4 ~ \bump \times 2/3 { cis8 cis4^\espressivo ~ } \bump \times 2/3 { cis4 cis8^\espressivo\glissando ( } |
ais4. ) r8
% SCATTER
f8.--^\p r16 \autoBeamOff f8--
% RETTACS
 } \altoChromE r8.. r2 |
r2 r32 \altoChromF \relative c' { \times 2/3 { r4 ees8 ~ } |
ees16 r8. r4 r2
R1
R1
R1
R1
\times 4/6 { bes16-.^\p bes16-. bes16-. bes16-. bes16-. bes16-. } \times 4/6 { bes16-. bes16-. bes16-. bes16-. bes16-. bes16-. } \times 2/3 { bes16-. bes16-. r16 } r8 r4 |
r4 r8 \times 2/3 { r16 bes16-. bes16-. } \times 4/6 { bes16-. bes16-. bes16-. bes16-. bes16-. bes16-. } \times 4/6 { bes16-. bes16-. bes16-. bes16-. bes16-. bes16-. } |
\times 4/6 { bes16-. bes16-. bes16-. bes16-. bes16-. bes16-. } r4 \times 2/3 { d16^\mf bes^\p r16 } r8 r4 |
r4. } \altoChromG r4 \altoChromH \relative c' { r8. r4 r2 |
% SCATTER
r4 f8.-- r16 f8.-- r16 f8.-- r16 |
f8.-- r16 f8.-- r16 f8.-- r16 f8.-- r16 |
f8.-- r16 f8.-- r16
% RETTACS
\times 2/3 { r4 e8^\pp } r4 |
r8 \times 2/3 { b32^\f b b } r16 } \altoChromI \relative c' {
% SCATTER
f8.--^\p r16
f8--
% RETTACS
\bump \times 2/3 { r16
ees8^\espressivo ~ } ees16 r8. r2 |
r2.. \times 4/6 { bes32^\p bes bes a' a a } |
\times 8/12 { bes, bes bes a' a a bes, bes bes a' a a } \times 8/12 { bes, bes bes a' a a bes, bes bes a' a a } a^\f a a r a a a r a a a r a a a r |
\revert Staff . TextScript #'self-alignment-X
g^\pp ees g ees g ees g ees g ees g ees g ees r16 \times 4/5 { r4 e16^\p^\markup { \small (beginning) } } \times 2/3 { r4 f8 }
R1 |
R1 |
}}

altowords = \lyricmode {
the
of
the
Where sharp
does -- n't does -- n't
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't
Where sharp does
be
your left hand. I hold the ring in my %123
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't does -- n't
chain.
does -- n't does -- n't does -- n't
You
hand. No one sees the chain. But these rings %123
sum -- mit I
sum -- mit I
sum -- mit I
will
You
Where
Where sharp does -- n't cut. You
sum -- mit I
sum -- mit I
sum -- mit I
sum -- mit I
You
sum
are the last links of
Where sharp does -- n't cut. You
sees the chain. But these rings are
hand.
hand.
hand.
I
sum -- mit I
sum -- mit I
sum -- mit I
sum -- mit I
sum -- mit I
these _
these
these _
these
these
these
these _
Where sharp
I know I will find you. Where smooth pricks. Where sharp does -- n't cut. You hold the ring in your left hand. I hold the ring in my right hand. No one sees the chain. But
these links are the last links of the chain. The
You
one one one one one one one one one one one one one one
one one one one one one one one one one one one one one one one one one one one
the deep
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left hand. I
Where sharp does -- n't cut. You hold the ring
pricks.
sum -- mit I
ning. The end. In
Where sharp
You
sum -- mit I sum -- mit I sum -- mit I sum -- mit I
sum -- mit I sum -- mit I sum -- mit I sum -- mit I
sum -- mit I sum -- mit I sum -- mit I sum -- mit I
sum -- mit I sum -- mit I
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't
be
ning
}

tenor = { \relative c' {
\globals
\throat
\override Staff.Glissando #'minimum-length = #30
\once \override Voice . FootnoteItem #'Y-extent = #ly:grob::stencil-height
\footnote
  \markup { \tiny * }
  #'(0 . 1)
  #'NoteHead
  \markup { \justify { \tiny * A sustained voiceless uvular fricative (χ in IPA, think of the 'r' in French) towards the back of the throat with the lips pursed outwards
and a wide space inside the mouth.  Doing it consistantly should make your cheeks inflate and vibrate.  It should create a low and volatile gurgling/revving/purring noise.}}
c1^\mf \glissando
s1
s2.*5/6 c8 \tnorm r4 |
r4 \times 2/3 { r4 g8^\mp } r8 a8 ~ \times 2/3 { a8 r8 a8 ~ } |
% SCATTER
\times 4/5 { a16 r8. ees'16--^\p ~ } ees8 r8
% RETTACS
r2 |
% SCATTER
\bump \times 4/5 { r2 ees4-- r4 ees4-- } |
% RETTACS
R1 |
r4. } \tenorChromA \relative c { \once \override TextScript #'self-alignment-X = #LEFT e'2^\mf^\markup { \small "(beginning)" } |
r2 r4 \times 2/3 { r4 f,8^\mf } |
R1 |
\times 2/3 { r8 fis4^\mf } r4 \bump \times 2/3 { r4 des'8^\p^\espressivo ~ } des16 r8. | }
\tenorChromB
\relative c' { r8. r4 r2 |
r2... des16^\p^\espressivo |
r16 bes^\mp r8 r4 r2 |
% SCATTER
\bump \times 4/5 { ees4--^\p r ees-- r ees-- } \times 4/5 { ees-- r r8 }
% RETTACS
r2
r8 des8^\p \bump \times 2/3 { r4 des8^\espressivo ~ } des16 r8. r4 |
r2 \times 4/5 { r4 aes16^\mf } r8 \sal g16^\p^\markup { \small "(summit)" }  r16 |
\times 2/3 { a8 r4 } r4 r2 |
R1 |
r8 } \tenorChromC \relative c' {
% SCATTER
\bump \times 4/5 { r16 ees4-- } |
\bump \times 4/5 { r4 ees-- r4 ees-- r4 } |
\bump \times 4/5 { ees4-- r16 }
% RETTACS
} \tenorChromD r8 \relative c' { \times 4/5 { r8 aes16^\mp aes8 } r4 \times 2/3 { r4 r16 bes16^\mf ~ }
\times 4/5 { bes8 r16 r8 } r8. c16^\pp \times 4/5 { r8 b16^\mf r8 } \times 4/5 { r8. aes8^\mp } |
r8 \times 4/6 { b32^\ppp b b r16. } \times 8/12 { b32 b b r16. b32 b b r16. } \times 8/12 { b32 b b r16. b32 b b r16. } r4 |
R1 |
R1 |
R1 |
r4
% SCATTER
\bump \times 4/5 { r16 ees4-- } \times 4/5 { r4 ees16-- ~ } \autoBeamOff ees8
% RETTACS
} \tenorChromE r8.. r2 |
r2 r32 \tenorChromF
\relative c' { \bump \times 2/3 { r4 des8^\p^\espressivo ~ } |
des16 r8. \throat
\override Staff.Glissando #'minimum-length = #30
\once \override Voice . FootnoteItem #'Y-extent = #ly:grob::stencil-height
\footnote
  \markup { \tiny * }
  #'(0 . 1)
  #'NoteHead
  \markup { \justify { \tiny * As before, a sustained voiceless uvular fricative.}}
c2.^\mf \glissando
s1
s1
s1
s8. c16 \tnorm r4 r2 |
R1 |
R1 |
r2 r8 \times 2/3 { r8 \sal c16^\p^\markup { \small "(summit)" } } r4 |
c8^\mp r4 } \tenorChromG r4 \tenorChromH r8. r4 r2 |
% SCATTER
\relative c' { \bump \times 4/5 { r2 ees4-- r ees4-- } \times 4/5 { r4 ees4-- r ees4-- r } \times 4/5 { ees-- r ees8-- } }
% RETTACS
\relative c' { \times 2/3 { r8 a8 r8 } r4 |
r4 } \tenorChromI \relative c' {
% SCATTER
\bump \times 4/5 { r4 ees16--^\p ~ } | ees8--
% RETTACS
\bump \times 2/3 { r16 des8^\espressivo ~ } des16 r8. r2 |
R1 |
R1 |
g,32^\pp ees g ees g32 ees g ees g32 ees g ees g32 ees g ees \times 4/5 { r8. bes'16^\mf r16 } \times 2/3 { r8 bes8^\p^\markup { \small (beginning) }  r8 } |
r2 r16 b-|^\pp r8 r4 |
R1 |
}}

tenorwords = \lyricmode {
\markup { " " } \markup { " " }
links
chain.
"[nia]"
Where
Where sharp
your left hand. I hold the ring in my %123
be
hand.
But
You
hand. No one sees the chain. But these rings %123
You
Where
Where sharp does -- n't
hold
You
deep
mit
know
are the last links of
Where sharp does -- n't
sees the chain. But these rings are
your
left
in
in
left
hand.
sum -- mit I
sum -- mit I
sum -- mit I
sum -- mit I
sum -- mit I
Where sharp
I know I will find you. Where smooth pricks. Where sharp does -- n't cut. You hold the ring in your left hand. I hold the ring in my right hand. No one sees the chain. But
these links are the last links of the chain. The
You
\markup { " " } \markup { " " }
mit
"[tim]"
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left hand. I
cut. You hold the ring in your left
Where sharp does -- n't cut. You
smooth
ning. The end. In
Where
You
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't does -- n't does -- n't
the
gin
pricks.
}

bass = { \relative c' {
\globals
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c1^\mf \glissando
s1
s2.*5/6 c8 \bnorm r4 |
R1 |
% SCATTER
r8 aes8--^\p r16 aes16-- r8 r2
% RETTACS
% SCATTER
r4 aes8-- r16 aes16-- ~ aes16 r16 aes8-- r16 aes8-- r16 |
% RETTACS
R1 |
r4. } \bassChromA r2 |
R1 |
r16 \relative c { bes8.^\mf \times 2/3 { r8 ees8^\mp r8 } r2 |
r2 \bump \times 2/3 { r4 bes'8^\p^\espressivo ~ } bes16 r8. | }
\bassChromB
\relative c {
r8. r4 r2 |
r2. r16 \autoBeamOff b8^\p ais'16^\espressivo %{\autoBeamOn%} |
r8 bes,8^\mf ~ \times 2/3 { bes16 r8 } r8 r2 |
% SCATTER
r16 aes'8--^\p r16 aes8-- r16 aes16-- ~ aes16 r16 aes8-- r16 aes8-- r16 |
aes8-- r16 aes16--
% RETTACS
r4 r2 |
r4 \bump \times 2/3 { r4 bes8^\p^\espressivo ~ } bes16 r16 ges,8^\mp ~ ges4 ~ |
ges4... r32 r2 |
r4 \sal ges4^\mf^\markup { \small (beginning) } ~ ges2 |
\autoBeamOff
r16 \sal ges8.^\f^\markup { \small (beginning) } ~ ges4 ~ ges16 r16 ges8 ~ ges8 r8 |
%{\autoBeamOn%}
r8 } \bassChromC \relative c' {
% SCATTER
aes8-- r16 aes16-- ~ |
aes16 r16 aes8-- r16 aes8-- r16 aes8-- r16 aes16-- ~ aes16 r16 aes8-- |
r16 aes8-- r16
% RETTACS
}
\bassChromD \relative c { aes8^\p %{\autoBeamOn%} r4 r4 \times 2/3 { aes8^\mp r4 } |
\times 4/5 { r16 aes8^\p r8 } r8 a16^\mf r16 r4 \times 4/5 { r16 a8^\f r8 } |
R1 |
R1 |
R1 |
R1 |
r4
% SCATTER
aes'8-- r16 aes16-- ~ aes16 r16 aes8-- r16 \autoBeamOff aes16--
% RETTACS
} \bassChromE \relative c { g8..^\p ~ g2 ~ |
%{\autoBeamOn%} g8. r16 g4 ~ \autoBeamOff g32  } %{\autoBeamOn%} \bassChromF
\relative c' { \bump \times 2/3 { r4 bes8^\espressivo ~ } |
bes16 r8.
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c2.^\mf \glissando
s1
s1
s1
s8. c16 \bnorm r4 r2 |
R1 |
R1 |
R1 |
r4. } \bassChromG r8 r4 |
R1 |
R1 |
r16 \relative c { ges8.^\f ~ ges4 ~ ges16 r16 ges8 ~ ges4 ~ |
ges16
% SCATTER
r8 aes'16--^\p ~ aes16 r16 aes8-- r16 aes8-- r16 aes8-- r16 aes16-- ~ |
aes16 r16 aes8-- r16 aes8-- r16 aes8-- r16 aes16-- ~ aes16 r16 aes8-- |
r16 aes8-- r16 aes8-- r16 aes16--
% RETTACS
r2 |
r4 } \bassChromI \relative c' {
% SCATTER
r8 aes8--^\p |
% RETTACS
\bump \times 2/3 { r4 bes8^\espressivo ~ } bes16 r8. r2 |
r2.. \times 4/6 { bes,32^\p bes bes a' a a } |
\times 8/12 { bes, bes bes a' a a bes, bes bes a' a a } \times 8/12 { bes, bes bes a' a a bes, bes bes a' a a } a^\f a a r a a a r a a a r a a a r |
g^\pp ees g ees g ees g ees g ees g ees r8 r2 |
R1 |
R1 |
}}

basswords = \lyricmode {
\markup { " " } \markup { " " }
Where sharp
Where sharp does -- n't
your left hand. I hold the ring in my %123
No
sees
You
hand. No one sees the chain. But these rings %123
find
You
smooth
Where sharp does -- n't cut. You hold
You
Where
gin
ning
the
are the last links of
Where sharp does -- n't cut. You hold the
sees the chain. But these rings are
ring
ring
left
ring
ring
Where sharp does -- n't
I know I will find you. Where smooth pricks. Where sharp does -- n't cut. You hold the ring in your left hand. I hold the ring in my right hand. No one sees the chain. But
my
right
these links are the last links of the chain. The
You
\markup { " " } \markup { " " }
cut. You hold the ring in your left hand. I
night
these
Where sharp does -- n't cut. You hold the ring in your left hand.
ning. The end. In
Where
You
sum -- mit I sum -- mit I sum -- mit I sum -- mit I
sum -- mit I sum -- mit I sum -- mit I sum -- mit I
sum -- mit I sum -- mit I sum -- mit I sum -- mit I
sum -- mit I sum -- mit I
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't 
}

\score {
\new ChoirStaff <<
  \new Staff << \set Staff.instrumentName = #"Marie" %\set Staff.shortInstrumentName = #"S."
    \new Voice = "soprano" << \soprano \indications >>
    \lyricsto "soprano" \new Lyrics \sopranowords >>
  \new Staff << \set Staff.instrumentName = #"Elsa" %\set Staff.shortInstrumentName = #"A."
    \new Voice = "alto" \alto
    \lyricsto "alto" \new Lyrics \altowords >>
  \new Staff << \set Staff.instrumentName = #"Ryan" %\set Staff.shortInstrumentName = #"T."
    \new Voice = "tenor" \tenor
    \lyricsto "tenor" \new Lyrics \tenorwords >>
  \new Staff << \set Staff.instrumentName = #"Eudes" %\set Staff.shortInstrumentName = #"B."
    \new Voice = "bass" \with { \consists "Balloon_engraver" } \bass
    \lyricsto "bass" \new Lyrics \basswords >>
>>
\layout { \context { \Score \override TimeSignature #'style = #'numbered } }
\midi {}
}
