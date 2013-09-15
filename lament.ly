\version "2.17.15"

#(set-global-staff-size 17.82)
#(ly:set-option 'point-and-click #f)

\header {
  title = "The Squirrel's Lament"
  composer = "Mike Solomon"
}

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

introLament = {
}

marksLament = {
  \tempo "Andante" 4=80 
  \time 2/2
  s1*4
  \footnote #'(-0.5 . -0.5) #"The squirrel denies the victim's death." TextScript 
  s1^" "
  s1*3
  \footnote #'(-0.5 . -0.5) #"The squirrel is angry." TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) #"The squirrel tries to bargain." TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) #"The squirrel is depressed." TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) #"The squirrel momentarily accepts the victim's death." TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) #"The squirrel snaps out of it, tries to shake victim awake." TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) \markup \justify { The squirrel moves to resuscitate
the victim. The victim briefly wakes up and firmly rejects, pointing to Ryan.
} TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) \markup \justify { 
The squirrel, rolling eyes, walks over to Ryan. } TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) \markup \justify { 
Ryan blows air into the squirrel's mouth. } TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) \markup \justify { 
Squirrel takes air back to Elsa, does not work, runs back to Ryan. } TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) \markup \justify { Ryan fills up squirrel again,
squirrel realizes he likes it, blows air out voluntarily to get another helping. } TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) \markup \justify { Ryan, mildly weirded out,
shakes head. Squirrel goes back to victim.
} TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) \markup \justify { Squirrel lights and sets up
incents.
} TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) \markup \justify { Squirrel does incantation,
does not work.
} TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) \markup \justify { Squirrel, putting on Jewish
star, tries Hebrew prayer.
} TextScript 
  s1^" "
  \footnote #'(-0.5 . -0.5) \markup \justify { Squirrel, putting on cross,
tries Credo.
} TextScript 
  s1^" "
  \footnote #'(-0.5 . -0.5) \markup \justify { Squirrel, putting on crescent,
tries Allah akbar.
} TextScript 
  s1^" "
  \footnote #'(-0.5 . -0.5) \markup \justify { Squirrel, putting on dollar sign,
tries blessing on the stock market.
} TextScript 
  s1^" "
  \footnote #'(-0.5 . -0.5) \markup \justify { Squirrel puts on Marie's iPad
from 101 tableaux, nurses baby with it, gets distracted.
} TextScript 
  s1^" "
  s1
  \footnote #'(-0.5 . -0.5) \markup \justify { Squirrel says goodbye to
loved ones on FaceTime, going to attempt dangerous maneuver.
} TextScript 
  s1^" "
  s1*3
  \footnote #'(-0.5 . -0.5) \markup \justify { Squirrel sings Wagner, makes
farty noise with lips into Elsa's stomach.
} TextScript 
  s1^" "
  s1*6
  \footnote #'(-0.5 . -0.5) \markup \justify { Victim wakes up, not unlike Judy
Garland in the Wizard of Oz.
} TextScript 
  \tempo "Moderato" 4=60
  s1^" "
  s1*4
  \footnote #'(-0.5 . -0.5) \markup \justify { Squirrel shoots victim again.
} TextScript 
  s1^" " \bar "|."
}

sopranoLament = \relative c'' {
  \autoBeamOff
  \repeat unfold 5 {
    \repeat unfold 2 { a2-. a2-. a4 a r2 }
    \repeat unfold 2 { gis2-. gis2-. gis4 gis r2 }
  }
  \repeat unfold 2 { a2-. a2-. a4 a r2 }
  a1 |
  a1 ~ |
  a1 ~ |
  a1 ~ |
  a1 ~ |
  a1 |
  R1 |
  d,1 ~ |
  d1 ~ |
  d1 ~ |
  d1 ~ |
  d1 |
  R1 |
}

sopranoLyricsLament = \lyricmode {
Pauv -- re El -- sa
Jeune, belle, splen -- dide

Prix de pia -- no
C. -- V. bé -- ton

Hé -- li -- cop -- tère
Dans son ar -- moire

Et cette li -- gne
A cinq syl -- la --

bes, nan, sé -- rieux
Nau -- frage da -- nois

Dans ma mâ -- choire
J'au -- rais vou -- lu

qu'Hel -- lo Kit -- ty
Meure à sa place

Ou bien Pe -- dro
C'est qui Pe -- "dro ?"

Pe -- dro Kit -- ty
Jeune, beau, El -- sa

Prix de Pe -- dro
Dans Pe -- dro non

Pe -- dro Pe -- dro
Pe -- dro Pe -- dro
Pe -- dro
mmm
}

mezzoLament = \relative c' {
  R1*51
  r8. fis16 fis8. [ e16 ] fis8. [ e16 ] fis8. [ a16 ] |
  b,2. r4 |
  r8. d16 e8. [ d16 ] e8. [ d16 ] e8. [ fis16 ] |
  d8. [ b16 ] d2 r4 |
  r8. fis16 fis8. [ e16 ] fis8. [ e16 ] fis8. [ a16 ] |
  R1 |
}

mezzoLyricsLament = \lyricmode {
  J'ai fait un rêve, si beau, si vrai.
  Je me bai -- gnais dans la lu -- mière d'es -- poir.
  Mon âme s'est en -- vo -- lée en
}

altoLament = \relative c' {
}

altoLyricsLament = \lyricmode {
}

tenorLament = \relative c' {
  \clef "treble_8"
  \autoBeamOff
  \repeat unfold 5 {
    \repeat unfold 4 { e2-. e2-. e4 e r2 }
  }
  \repeat unfold 2 { e2-. e2-. e4 e r2 }
  fis1 |
  fis1 ~ |
  fis1 ~ |
  fis1 ~ |
  fis1 ~ |
  fis1 |
  R1 |
  a,1 ( |
  b1 ~ |
  b1 ~ |
  b1 |
  a1 ) |
  R1 |
}

tenorLyricsLament = \lyricmode {
Pauv -- re El -- sa
Jeune, belle, splen -- dide

Prix de pia -- no
C. -- V. bé -- ton

Hé -- li -- cop -- tère
Dans son ar -- moire

Et cette li -- gne
A cinq syl -- la --

bes, nan, sé -- rieux
Nau -- frage da -- nois

Dans ma mâ -- choire
J'au -- rais vou -- lu

qu'Hel -- lo Kit -- ty
Meure à sa place

Ou bien Pe -- dro
C'est qui Pe -- "dro ?"

Pe -- dro Kit -- ty
Jeune, beau, El -- sa

Prix de Pe -- dro
Dans Pe -- dro non

Pe -- dro Pe -- dro
Pe -- dro Pe -- dro
Pe -- dro
mmm
}

bassLament = \relative c' {
  \clef bass
  \autoBeamOff
  \repeat unfold 5 {
    \repeat unfold 2 { bes2-. bes2-. bes4 bes r2 }
    \repeat unfold 2 { a2-. a2-. a4 a r2 }
  }
  bes2-. bes2-. bes4 bes r2
  bes2-. bes2-. c4 c r2
  d1 |
  d1 ~ |
  d1 ~ |
  d1 ~ |
  d1 ~ |
  d1 |
  R1 |
  fis,2 ( d |
  b g |
  a d |
  b g |
  d'2 fis ) |
  R1 |
}

bassLyricsLament = \lyricmode {
Pauv -- re El -- sa
Jeune, belle, splen -- dide

Prix de pia -- no
C. -- V. bé -- ton

Hé -- li -- cop -- tère
Dans son ar -- moire

Et cette li -- gne
A cinq syl -- la --

bes, nan, sé -- rieux
Nau -- frage da -- nois

Dans ma mâ -- choire
J'au -- rais vou -- lu

qu'Hel -- lo Kit -- ty
Meure à sa place

Ou bien Pe -- dro
C'est qui Pe -- "dro ?"

Pe -- dro Kit -- ty
Jeune, beau, El -- sa

Prix de Pe -- dro
Dans Pe -- dro non

Pe -- dro Pe -- dro
Pe -- dro Pe -- dro
Pe -- dro
mmm
}

\score {
  \keepWithTag #'score \removeWithTag #'midi
  %\transpose d e
  \new ChoirStaff <<
    \new Staff \with { instrumentName = "Marie" } <<
      \new Voice = "soprano" << \marksLament \sopranoLament >>
      \new Lyrics \lyricsto "soprano" \sopranoLyricsLament
    >>
    \new Staff \with { instrumentName = "Elsa" } <<
      \new Voice = "mezzo" \mezzoLament
      \new Lyrics \lyricsto "mezzo" \mezzoLyricsLament
    >>
%{
    \new Staff \with { instrumentName = "Mike" } <<
      \new Voice = "alto" \altoLament
      \new Lyrics \lyricsto "alto" \altoLyricsLament
    >>
%}
    \new Staff \with { instrumentName = "Ryan" } <<
      \new Voice = "tenor" \tenorLament
      \new Lyrics \lyricsto "tenor" \tenorLyricsLament
    >>
    \new Staff \with { instrumentName = "Eudes" } <<
      \new Voice = "bass" \bassLament
      \new Lyrics \lyricsto "bass" \bassLyricsLament
    >>
  >>
  \layout {
    \context {
      \Score
      \override FootnoteItem #'whiteout = ##t
      \override FootnoteItem #'annotation-line = ##f
      %\override FootnoteItem #'annotation-balloon = ##t
    }
  }
}

\score {
  \keepWithTag #'midi \removeWithTag #'score
  \unfoldRepeats
  %\transpose d e
  \new ChoirStaff <<
    \new Voice = "soprano" << { \introLament \marksLament } { \introLament \sopranoLament } >>
    \new Lyrics \lyricsto "soprano" \sopranoLyricsLament
    \new Voice = "mezzo" { \introLament \mezzoLament }
    \new Lyrics \lyricsto "mezzo" \mezzoLyricsLament
    \new Voice = "alto" { \introLament \altoLament }
    \new Lyrics \lyricsto "alto" \altoLyricsLament
    \new Voice = "tenor" { \introLament \tenorLament }
    \new Lyrics \lyricsto "tenor" \tenorLyricsLament
    \new Voice = "bass" { \introLament \bassLament }
    \new Lyrics \lyricsto "bass" \bassLyricsLament
  >>
  \midi {}
}

%{
Pauvre Elsa
Jeune, belle, splendide

Prix de piano
C.V. béton

Hélicoptère
Dans son armoire

Et cette ligne
A cinq sylla

-bes, nan, sérieux
Naufrage danois

Dans ma mâchoire
J'aurais voulu

qu'Hello Kitty
Meure à sa place

Ou bien Pedro
C'est qui Pedro ?

Pedro Kitty
Jeune, beau, Elsa

Prix de Pedro
Dans Pedro non

Pedro Pedro
Pedro Pedro
%}
