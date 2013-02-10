\include "defs-later.ly"

bassOneChromA = {

}


bassOneChromB = {
R1
}

bassOneChromC = {
b8^\p^\< ( ais8 a8\mf^\> ais8 %{[%} b8\p ) %{]%}
}

bassOneChromD = {
d8^\mp^\< ( cis8 c8\f^\> cis8 d8 dis8 \autoBeamOff d\mp )
}

bassOneChromE = {
R1 | R1 | R1 |
r2 r8
dis8^\mp^\< ( e8
f8 fis8 f8^\f ) r32
}

bassOneChromF = {
dis16.^\p^\< %{[%} ( e8 %{]%} dis8 d8
cis8 c8 cis8 d8\f^\> dis8 e8\p )
}

bassOneChromG = {
d8^\f^\> ( dis8 e8 f8 fis8 g8 gis8 a8
ais8 a8\p )
}

%bassOneChromH = {
%d8^\f^\> ( dis8 e8 f8 fis8 g8 gis8 a8
%ais8 a8\p )
%}

bassOneChromI = {
ais8^\pp^\<^\markup { \small (beginning) } %{[%} ( a8 %{]%} gis8^\> %{[%} a8\pp ) %{]%}
}

bassOne = { \relative c' {
\globals
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c1^\f \glissando
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
R1 } \bassOneChromA R1 |
R1 |
R1 |
\relative c'{
r2 \bump \times 2/3 { r4 bes8^\p^\espressivo ~ } bes16 r8. | }
\bassOneChromB
\relative c {
R1 |
r2. r8.  bes'16^\p^\espressivo %{\autoBeamOn%} |
R1 |
% SCATTER
R1 |
R1 |
r4 \bump \times 2/3 { r4 bes8^\p^\espressivo ~ } bes16 r16 r8 r4 |
R1 |
R1 |
R1 |
%{\autoBeamOn%}
r8 } \bassOneChromC \relative c' {
% SCATTER
r4 |
R1 |
r4
% RETTACS
}
\bassOneChromD \relative c { r8 r4 r2 |
r4 r8 a16^\mf r16 r2 |
R1 |
R1 |
R1 |
R1 |
% SCATTER
R1 |
% RETTACS
} \bassOneChromE \relative c { g8..^\p ~ g2 ~ |
%{\autoBeamOn%} g8. r16 g4 ~ \autoBeamOff g32  } %{\autoBeamOn%} \bassOneChromF
\relative c' { r4 |
r4
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c2.^\f \glissando
s1
s1
s1
s8. c16 \bnorm r4 r2 |
R1 |
R1 |
R1 |
r4. } \bassOneChromG r8 r4 |
R1 |
R1 |
R1 |\relative c {
% SCATTER
r8. aes'16--^\p ~ aes16 r16 aes8-- r16 aes8-- r16 aes8-- r16 aes16-- ~ |
aes16 r16 aes8-- r16 aes8-- r16 aes8-- r16 aes16-- ~ aes16 r16 aes8-- |
r16 aes8-- r16 aes8-- r16 aes16--
% RETTACS
r2 |
r4 } \bassOneChromI \relative c' {
% SCATTER
r4 |
% RETTACS
R1 |
R1 |
R1 |
g32^\pp ees g ees r8 r4 r2 |
R1 |
R1 |
}}

bassOnewords = \lyricmode {
\markup { " " } \markup { " " }
Where sharp
Where sharp does -- n't
You
You
You
are the last links of
sees the chain. But these rings are
ring
No one sees the chain.
my
right
these links are the last links of the chain. The
\markup { " " } \markup { " " }
cut. You hold the ring in your left hand. I
Where sharp does -- n't cut. You hold the ring in your left hand.
ning. The end. In
does -- n't does -- n't 
}

%%%%%%%%%%%%%%%%%%%%%%%%
bassTwoChromA = {
}


bassTwoChromB = {
R1 |
}

bassTwoChromC = {
b8^\p^\< ( ais8 a8\mf^\> ais8 %{[%} b8\p ) %{]%}
}

bassTwoChromD = {
d8^\mp^\< ( cis8 c8\f^\> cis8 d8 dis8 \autoBeamOff d\mp )
}

bassTwoChromE = {
R1 | R1 | R1 |
r2 r8
dis8^\mp^\< ( e8
f8 fis8 f8^\f )
}

bassTwoChromF = {
dis16.^\p^\< %{[%} ( e8 %{]%} dis8 d8
cis8 c8 cis8 d8\f^\> dis8 e8\p )
}

bassTwoChromG = {
d8^\f^\> ( dis8 e8 f8 fis8 g8 gis8 a8
ais8 a8\p )
}

%bassTwoChromH = {
%d8^\f^\> ( dis8 e8 f8 fis8 g8 gis8 a8
%ais8 a8\p )
%}

bassTwoChromI = {
ais8^\pp^\<^\markup { \small (beginning) } %{[%} ( a8 %{]%} gis8^\> %{[%} a8\pp ) %{]%}
}

bassTwo = { \relative c' {
\globals
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c1^\f \glissando
s1
s2.*5/6 c8 \bnorm r4 |
R1 |
% SCATTER
R1 |
% RETTACS
% SCATTER
R1 |
% RETTACS
R1 |
R1 } \bassTwoChromA R1 |
R1 |
r4 \relative c { \times 2/3 { r8 ees8^\mp r8 } r2 |
R1 |
\bassTwoChromB
\relative c {
R1 |
r2. r8. bes'16^\p^\espressivo %{\autoBeamOn%} |
R1 |
% SCATTER
r16 aes8-- r16 aes8-- r16 aes16-- ~ aes16 r16 aes8-- r16 aes8-- r16 |
aes8-- r16 aes16--
% RETTACS
r4 r2 |
R1 |
R1 |
R1 |
\autoBeamOff
R1 |
%{\autoBeamOn%}
r8 } \bassTwoChromC \relative c' {
% SCATTER
r4 |
R1 |
r4
% RETTACS
}
\bassTwoChromD \relative c { r8 %{\autoBeamOn%} r4 r4 \times 2/3 { aes8^\mp r4 } |
R1 |
R1 |
R1 |
R1 |
R1 |
% SCATTER
R1 |
% RETTACS
} \bassTwoChromE \relative c { r4 r2 |
%{\autoBeamOn%} r2 r32  } %{\autoBeamOn%} \bassTwoChromF
\relative c' { \bump \times 2/3 { r4 bes8^\espressivo ~ } |
bes16 r8.
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c2.^\f \glissando
s1
s1
s1
s8. c16 \bnorm r4 r2 |
R1 |
R1 |
R1 |
r4. } \bassTwoChromG r8 r4 |
R1 |
R1 |
R1 |
% SCATTER
R1 |
R1 |
R1
% RETTACS
r4 } \bassTwoChromI \relative c' {
% SCATTER
r8 aes8--^\p |
% RETTACS
R1 |
r2.. \times 4/6 { bes,32^\p bes bes a' a a } |
\times 8/12 { bes, bes bes a' a a bes, bes bes a' a a } \times 8/12 { bes, bes bes a' a a bes, bes bes a' a a } a^\f a a r a a a r a a a r a a a r |
g32^\pp ees g ees g ees r16 r4 r2 |
R1 |
R1 |
}}

bassTwowords = \lyricmode {
\markup { " " } \markup { " " }
sees
You
Where sharp does -- n't cut. You hold
are the last links of
sees the chain. But these rings are
ring
No one sees the chain.
these links are the last links of the chain. The
You
\markup { " " } \markup { " " }
cut. You hold the ring in your left hand. I
ning. The end. In
Where
sum -- mit I sum -- mit I sum -- mit I sum -- mit I
sum -- mit I sum -- mit I sum -- mit I sum -- mit I
sum -- mit I sum -- mit I sum -- mit I sum -- mit I
sum -- mit I sum -- mit I
does -- n't does -- n't does -- n't
}

%%%%%%%%%%%%%%%%%%%%%%%%
bassThreeChromA = {
}


bassThreeChromB = {
R1 |
}

bassThreeChromC = {
b8^\p^\< ( ais8 a8\mf^\> ais8 %{[%} b8\p ) %{]%}
}

bassThreeChromD = {
d8^\mp^\< ( cis8 c8\f^\> cis8 d8 dis8 \autoBeamOff d\mp )
}

bassThreeChromE = {
R1 | R1 | R1 |
r2 r8
dis8^\mp^\< ( e8
f8 fis8 f8^\f )
}

bassThreeChromF = {
dis16.^\p^\< %{[%} ( e8 %{]%} dis8 d8
cis8 c8 cis8 d8\f^\> dis8 e8\p )
}

bassThreeChromG = {
d8^\f^\> ( dis8 e8 f8 fis8 g8 gis8 a8
ais8 a8\p )
}

%bassThreeChromH = {
%d8^\f^\> ( dis8 e8 f8 fis8 g8 gis8 a8
%ais8 a8\p )
%}

bassThreeChromI = {
ais8^\pp^\<^\markup { \small (beginning) } %{[%} ( a8 %{]%} gis8^\> %{[%} a8\pp ) %{]%}
}

bassThree = { \relative c' {
\globals
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c1^\f \glissando
s1
s2.*5/6 c8 \bnorm r4 |
R1 |
% SCATTER
R1 | R1 |
% RETTACS
R1 |
R1 } \bassThreeChromA R1 |
R1 |
r16 \relative c { bes8.^\mf r4 r2 | }
R1 |
\bassThreeChromB
\relative c {
R1 |
r2. r16 \autoBeamOff b8^\p r16 |
R1 |
% SCATTER
R1 |
R1 |
% RETTACS
r2 r8 ges8^\mp ~ ges4 ~ |
ges4... r32 r2 |
R1 |
\autoBeamOff
R1 |
%{\autoBeamOn%}
r8 } \bassThreeChromC \relative c' {
% SCATTER
aes8-- r16 aes16-- ~ |
aes16 r16 aes8-- r16 aes8-- r16 aes8-- r16 aes16-- ~ aes16 r16 aes8-- |
r16 aes8-- r16
% RETTACS
}
% KEEP THE FIRST A FLAT!!!!
\bassThreeChromD \relative c { aes8^\p %{\autoBeamOn%} r4 r2 |
r2. \times 4/5 { r16 a8^\f r8 } |
R1 |
R1 |
R1 |
R1 |
% SCATTER
R1
% RETTACS
} \bassThreeChromE \relative c { r4 r2
%{\autoBeamOn%} r2 r32  } %{\autoBeamOn%} \bassThreeChromF
\relative c' { r4 |
r4
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c2.^\f \glissando
s1
s1
s1
s8. c16 \bnorm r4 r2 |
R1 |
R1 |
R1 |
r4. } \bassThreeChromG r8 r4 |
R1 |
R1 |
r16 \relative c { ges8.^\f ~ ges4 ~ ges16 r16 ges8 ~ ges4 ~ |
ges16 r16 r8 r4 r2 |
% SCATTER
R1 | R1 |
% RETTACS
r4 } \bassThreeChromI \relative c' {
% SCATTER
r4 |
% RETTACS
\bump \times 2/3 { r4 bes8^\p^\espressivo ~ } bes16 r8. r2 |
R1 |
r2 a32^\f a a r a a a r a a a r a a a r |
g32^\pp ees g ees g ees g ees g ees r16 r8 r2 |
R1 |
R1 |
}}

bassThreewords = \lyricmode {
\markup { " " } \markup { " " }
No
find
Where
are the last links of
Where sharp does -- n't cut. You hold the
sees the chain. But these rings are
ring
ring
No one sees the chain.
these links are the last links of the chain. The
\markup { " " } \markup { " " }
cut. You hold the ring in your left hand. I
right
these
ning. The end. In
You
sum -- mit I sum -- mit I
sum -- mit I sum -- mit I
does -- n't does -- n't does -- n't does -- n't
does -- n't does -- n't 
}

%%%%%%%%%%%%%%%%%%%%%%%%
bassFourChromA = {
}


bassFourChromB = {
R1 |
}

bassFourChromC = {
b8^\p^\< ( ais8 a8\mf^\> ais8 %{[%} b8\p ) %{]%}
}

bassFourChromD = {
d8^\mp^\< ( cis8 c8\f^\> cis8 d8 dis8 \autoBeamOff d\mp )
}

bassFourChromE = {
r8
R1 | R1 | R1 |
r2 r8
dis8^\mp^\< ( e8
f8 fis8 f8^\f )
}

bassFourChromF = {
dis16.^\p^\< %{[%} ( e8 %{]%} dis8 d8
cis8 c8 cis8 d8\f^\> dis8 e8\p )
}

bassFourChromG = {
d8^\f^\> ( dis8 e8 f8 fis8 g8 gis8 a8
ais8 a8\p )
}

%bassFourChromH = {
%d8^\f^\> ( dis8 e8 f8 fis8 g8 gis8 a8
%ais8 a8\p )
%}

bassFourChromI = {
ais8^\pp^\<^\markup { \small (beginning) } %{[%} ( a8 %{]%} gis8^\> %{[%} a8\pp ) %{]%}
}

bassFour = { \relative c' {
\globals
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c1^\f \glissando
s1
s2.*5/6 c8 \bnorm r4 |
R1 |
% SCATTER
R1 |
% RETTACS
% SCATTER
R1 |
% RETTACS
R1 |
R1 \bassFourChromA R1 |
R1 |
R1 |
r2 \bump \times 2/3 { r4 bes8^\p^\espressivo ~ } bes16 r8. | }
\bassFourChromB
\relative c {
R1 |
R1 |
r8 bes8^\mf ~ \times 2/3 { bes16 r8 } r8 r2 |
% SCATTER
R1 |
R1 |
% RETTACS
r4 \bump \times 2/3 { r4 bes'8^\p^\espressivo ~ } bes16 r8. r4 |
R1 |
r4 \sal ges,4^\mf^\markup { \small (beginning) } ~ ges2 |
\autoBeamOff
r16 \sal ges8.^\f^\markup { \small (beginning) } ~ ges4 ~ ges16 r16 ges8 ~ ges8 r8 |
%{\autoBeamOn%}
r8 } \bassFourChromC \relative c' {
% SCATTER
r4 |
R1 |
r4
% RETTACS
}
\bassFourChromD \relative c { r8 r4 r2 |
\times 4/5 { r16 aes8^\p r8 } r4 r2 |
R1 |
R1 |
R1 |
R1 |
r4
% SCATTER
aes'8--^\p r16 aes16-- ~ aes16 r16 aes8-- r16 \autoBeamOff aes16--
% RETTACS
} \bassFourChromE \relative c { r4 r2 |
%{\autoBeamOn%} r2 r32  } %{\autoBeamOn%} \bassFourChromF
\relative c' { \bump \times 2/3 { r4 bes8^\espressivo ~ } |
bes16 r8.
\throat
\override Staff.Glissando #'minimum-length = #30
\override Voice . BalloonTextItem #'annotation-balloon = ##f
\balloonGrobText
  #'NoteHead
  #'(0 . 1)
  \markup { \tiny * }
c2.^\f \glissando
s1
s1
s1
s8. c16 \bnorm r4 r2 |
R1 |
R1 |
R1 |
r4. } \bassFourChromG r8 r4 |
R1 |
R1 |
R1 |
% SCATTER
R1 |
R1 |
R1 |
% RETTACS
r4 \bassFourChromI \relative c' {
% SCATTER
r4 |
% RETTACS
% KEEP BELOW EVEN THOUGH NOT CIRCLED!!!
\bump \times 2/3 { r4 bes8^\p^\espressivo ~ } bes16 r8. r2 |
R1 | R1 |
g32^\pp ees g ees g ees g ees r4 r2 |
R1 |
R1 |
}}

bassFourwords = \lyricmode {
\markup { " " } \markup { " " }
You
smooth
You
gin
ning
the
are the last links of
sees the chain. But these rings are
left
Where sharp does -- n't
No one sees the chain.
these links are the last links of the chain. The
You
\markup { " " } \markup { " " }
cut. You hold the ring in your left hand. I
ning. The end. In
You
does -- n't does -- n't does -- n't does -- n't
}

