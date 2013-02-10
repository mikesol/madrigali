\version "2.14.0"
\include "defs.ly"
% Romagnols
#(set-global-staff-size 17.82)


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
  title = "the tragedy of intent iii"
  subtitle = "Conchita et « HOLY SHIT »"
  tagline = "Music engraving by LilyPond©®™ 2.14.0—www.lilypond©®™.org"
}

high = \relative c''' {
  b32-|^\p^\markup { \italic "coups de glotte" } s8. s4
  b32-| s8.
  a32-| s8. s2
  b32-| s8. s4
  b32-| s8
}

highTwo = \relative c''' {
  g32-|^\p^\markup { \italic "coups de glotte" } s8. s4
  g32-| s8.
  f32-| s8. s2
  g32-| s8. s4
  g32-| s8. s4
  g32-| s8.
  f32-| s8.
}

highThree = \relative c''' {
  g32-|^\p^\markup { \italic "coups de glotte" } s8. s4
  g32-| s8.
  f32-| s8.
}

highFour = \relative c''' {
  g32-|^\p^\markup { \italic "coups de glotte" } s4
  f32-| s8.
}

folieOne = {
  R1. |
  R1*13/16 |
  R2. |
  R4. |
  R1*9/16 |
  R1*5/8 |
  R2. |
  R1 |
  R1 |
  R1*5/8 |
  R1*5/8 |
  R2. |
  R1*5/8 |
  R4. |
  R1*9/8 |
  R1*11/8 |
  R1*5/8 |
  R1 |
  R2. |
}

soprano = \relative c' {
  \autoBeamOff
  \clef percussion
  \stopStaff
  \override Staff . StaffSymbol #'line-count = #1
  \startStaff
  \stemUp
  \tempo 4=76
  \override Stem #'stencil = #bendy
  \override NoteColumn #'Y-offset = #(lambda (grob) (rand-me -1 1))
  \override NoteHead #'style = #'mensural
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \override Stem #'Y-extent = #ly:grob::stencil-height
  c4*1/8^\p^\markup \italic \column { "chanson d'amour d'un écureuil" "très rythmique" } c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 \footnoteGrob #'NoteHead #'(-0.5 . -0.5) "*" \markup { \justify { * Brevet de perfectionnement № 6 532 314,6 en conformité avec les dispositions de la loi du 5 juin 1904 prevoyant l'établissement d'un but lucratif (zone d'aménagement concerté (soit Efron) privée) 5 ter, rue de Quatre Bis, 90210 cedex 08 Rougegoutte - 0800 52bis3 333 (0,09 € TTC/sc). } } c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  \revert Stem #'stencil
  \revert NoteColumn #'Y-offset
  \revert NoteHead #'style
  \revert Stem #'Y-extent
  r4 |
  \cadenzaOn
  \saNormal
  \clef treble
  \question
  \time 4/4
  \high
  \cadenzaOff
  \bar "|"
  R4 |
  \stemNeutral
  \time 4/8
  \times 2/3 { b'8--^\mp r16 } \times 2/3 { c8-- r16 } \times 2/3 { b8-- r16 } \times 2/3 { c8-- r16 } |
  \time 3/8
  \times 2/3 { b8-- r16 } \times 2/3 { c8-- r16 } r8 |
  \time 4/8
  r4 \times 2/3 { b8-- r16 } \times 2/3 { c8-- r16 } |
  \override Score . RehearsalMark #'self-alignment-X = #LEFT
  \mark \markup { \italic "più mosso" }
  bes'8^\mf bes bes bes |
  bes bes bes bes |
  bes bes bes bes |
  bes bes   \mark \markup { \italic "a tempo" }
bes16^\f bes bes bes |
  bes16 bes bes bes bes16 bes bes bes |
  bes16 bes bes bes bes16 bes bes bes |
  R2 |
  R4. |
  R4. |
  \time 6/4
  \tempo 4=110
  \times 2/3 { b,8^\f^\markup { \italic { "puéril, une gamine de 2 ans" } } e r8 } \times 2/3 { b fis' r }
  \times 2/3 { b, fis' r } \times 2/3 { b, e r }
  \times 2/3 { b e r } \times 2/3 { b e r } |
  \compoundMeter #'((6 8) (1 16))
  a,8 a a a a4 r16 |
  \time 6/8
  \mark \markup { \italic "rit." }
  a8 a a a a8. r16 |
  \time 3/8
  \override Glissando #'style = #'zigzag
  \tempo 4=86
  e4^\markup { \italic "en tirant la langue un peu" } \glissando ( d'8-. ) |
  \compoundMeter #'((4 8) (1 16))
  e,4. \glissando ( e'8-. ) r16 |
  \time 5/8
  \cricket
  c,4.:32^\markup { \italic \column { "faites vibrer" "les lèvres" } } r4 |
  \time 6/8
  c2:32 \once \override TextScript #'extra-spacing-width = ##f r4^\markup { \italic \column { aspiration audible } } |
  \saNormal
  \tempo 4=114
  \time 4/4
  aes'8--^\markup { \italic \column { "en couvrant la bouche et en" "relâchant pour chaque note" } } r aes8-- r aeh8-- r aeh8-- r |
  aeh8-- r aes8-- r aes8-- r aeh8-- r |
  \compoundMeter #'((2 4) (1 8))
  aes8-- r aes r r |
  \time 5/8
  \cricket
  \tempo 4=86
  c,2:32^\markup { \italic \column { "faites vibrer" "les lèvres" } } r8 |
  \time 6/8
  c2:32 r4 |
  \tempo 4=100
  \time 5/8
  \saNormal
  e8-- e-- e-- e-- r |
  \time 3/8
  e-- e-- r |
  \tempo 4=134
  \compoundMeter #'((4 4) (1 8))
  \times 2/3 { cis8^\markup { \italic "trompette" } e a } \times 2/3 { cis4 gis8 } \times 2/3 { cis4 gis8 } cis4-_ r8 |
  \compoundMeter #'((4 4) (3 8))
  \times 2/3 { cis,8 e a } \times 2/3 { cis4 gis8 } \times 2/3 { cis4 gis8 } cis4 ~ cis-_ r8 |
  \compoundMeter #'((2 4) (1 8))
  \times 2/3 { cis,8 e a } \times 2/3 { cis4 \footnoteGrob #'NoteHead #'(0.5 . -0.5) "*" "* Made you look." gis8 } cis8 |
  \time 4/4
  \tempo 4=106
  \times 2/3 { b8 d r } \times 2/3 { b d r } \times 2/3 { b d r } \times 2/3 { b d r } |
  \time 3/4
  \cricket
  c,2.^\ff |
  \saNormal
  \time 4/8
  \tempo 4=76
  \times 2/3 { b'8--^\mp r16 } \times 2/3 { c8-- r16 } \times 2/3 { b8-- r16 } \times 2/3 { c8-- r16 } |
  \time 3/8
  \times 2/3 { b8-- r16 } \times 2/3 { c8-- r16 } r8 |
  r8 \times 2/3 { b8-- r16 } \times 2/3 { c8-- r16 } |
  \time 5/4
  bes'16^\mf bes bes bes    bes bes^\f bes bes    bes bes bes bes    bes bes bes bes   bes bes bes bes |
  #(ly:export (skip-of-length highTwo))
  \bar "|"
  \time 4/8
  \times 2/3 { fis,8--^\mp r16 } \times 2/3 { g8-- r16 } \times 2/3 { fis8-- r16 } \times 2/3 { g8-- r16 } |
  \time 3/8
  \times 2/3 { fis8-- r16 } \times 2/3 { g8-- r16 } r8 |
  \time 2/8
  \times 2/3 { fis8-- r16 } \times 2/3 { g8-- r16 } |
  #(ly:export (skip-of-length highThree))
  r16 bes^\p bes bes   bes16 bes bes bes     bes16 bes bes bes   bes16 bes bes bes 
  \times 2/3 { b8--^\mp r16 } \mark \markup { \italic { molto rit. }} c8-- |
  \time 4/16
  \tempo 16=320
  R4 |
  \time 5/16
  R4*5/4 |
  \time 3/16
  R8. |
  \time 6/16
  R4. |
  \time 4/16
  R4 |
  \time 5/16
  r16 b,16^\f^\markup { \italic \column { "hauteurs approximatives" } } gis' dis8 |
  r16 b a' a a |
  \time 3/16
  f f8 |
  \time 6/16
  r16 cis cis gis' gis gis |
  \time 4/16
  e e b fis' |
  \time 5/16
  fis fis dis gis^\markup { \italic "hauteurs pour de vrai" } ais |
  b8 b,16 b b |
  a' a a fis fis |
  \monologue
  \cadenzaOn
  \FatText
  \MonoShift
  s4^\markup { \whiteout PAUSE } \bar "|"
  s4^\markup { \fontsize #2 \whiteout PAUSE } \bar "|"
  s4^\markup { \fontsize #5 \whiteout PAUSE } s4 \bar "|"
  \unMonoShift
  \once \override TextScript #'Y-offset = #(lambda (grob) (- (ly:side-position-interface::y-aligned-side grob) 1.0))
  s4^\markup { \override #'(baseline-skip . 0) \column { \line { \hspace #14 (pause) } \line { \hspace #17 \concat { \draw-line #'(0.6 . 1.5) \translate #'(0 . 1.5) \draw-line #'(0.6 . -1.5) } } \fontsize #10 \whiteout "PAU SE" }} \saNormal r16 \bar "|"
  \cadenzaOff
  R8. |
  \unFatText
  r16 cis' cis |
  cis b a gis fis' fis |
  fis e d cis |
  cis cis cis b cis |
  dis8 b16 b8 |
  \time 3/4
  \tempo 4=80
  r4^\fermata
  e,8-.^\mp e-. e-. r8 \bar "|"
  \time 2/4
  g2^\mf |
  \time 4/4
  \tempo 4=120
  c8 b a g a g f e |
  d e f a g32 \cricket c,4...^\f^\markup { \italic "bruit blanc" } ~ c8  |
  R4. |
  \override Stem #'stencil = #bendy
  \override NoteColumn #'Y-offset = #(lambda (grob) (rand-me -1 1))
  \override NoteHead #'style = #'mensural
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \override Stem #'Y-extent = #ly:grob::stencil-height
  \time 7/8
  \tempo 4=76
  c4*1/8^\p^\markup \italic \column { "chanson d'amour d'un écureuil" "très rythmique" } c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  <<
    {
  c4*1/8 c4*1/8 c4*1/8 c4*1/8
  \noBreak
  \time 5/4
  c4*1/8^\markup { \italic \column { "en devenant de plus en plus" "comme la ligne ci-dessus" }} c4*1/8 c4*1/8 c4*1/8
  c4*1/8^\< c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  \mark \markup { \italic "rit." }
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8
  \saNormal
  \revert NoteColumn #'Y-offset
  \revert Stem #'Y-extent
  \revert Stem #'stencil
  \revert NoteHead #'style
  \tempo 4=54
  cis'16\mf cis cis r
  }
  \new Staff \with {
      \remove "Time_signature_engraver"
      \remove "Bar_engraver"
      alignAboveContext = #"sopstaff"
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
      \override StaffSymbol #'thickness = #(magstep -3)
      firstClef = ##f
    }
    \transpose c cis
    \relative c'' {   \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(2 2 2 2) s32 \key c \major s16. a32 gis a b d c b a g fis g gis a g f e d cis d e g fis a b %c16 c c r
}
  >>
  r4 |
  \time 4/4
  R1 |
  \time 3/8
  \times 2/3 { r8 gis4^\mp^\espressivo } r8 |
  \tempo 4=76
  \times 2/3 { b8--^\mp r16 } \times 2/3 { c8-- r16 } \times 2/3 { b8-- r16 } \times 2/3 { c8-- r16 } |
  bes16^\p bes bes bes  bes bes bes bes   bes bes r8 r4 |
  #(ly:export (skip-of-length highFour))
  s4
  \bar "|"
  \time 3/4
  \tempo 2.=60
  d8^\f\> cis b4^\mp r4 |
  R2. |
  R2. |
  R2. |
  d8^\f\> cis b4^\mp r4 |
  \time 2/2
  \tempo 2=66
  d1^\p | cis1 | b1 |
  \cricket
  \stemNeutral
  << { \cricket \stemNeutral \times 2/3 { f4-.^\f \once \override Glissando #'bound-details #'right #'padding = #0 g,2 \glissando ( } \times 2/3 { s4 f'4-. ) \bendAfter #3 g,  } } { s2 \noHead \once \override Glissando #'bound-details #'left #'padding = #0 c4 \glissando s4 } >> |
  \time 3/2
  \times 4/5 { r8 f f f f16 f } r16
  \stemUp
  \override Stem #'stencil = #bendy
  \override NoteColumn #'Y-offset = #(lambda (grob) (rand-me -1 1))
  \override NoteHead #'style = #'mensural
  \override Stem #'Y-extent = #ly:grob::stencil-height
  c4*1/4^\p^\markup \italic "chanson d'amour d'un écureuil" c4*1/4 c4*1/4 c4*1/4 c4*1/4 c4*1/4 c4*1/4
  \revert Stem #'stencil
  \revert NoteColumn #'Y-offset
  \revert NoteHead #'style
  \revert Stem #'Y-extent
  \cricket
  c2 |
  \time 2/2
  \tempo 2=100
  \saNormal \times 2/3 { b'4^\f^\markup { \italic "puéril" } e-. r } \times 2/3 { b e-. r } |
  \times 2/3 { b fis'-. r }  \override RehearsalMark #'self-alignment-X = #CENTER \mark \markup { \normalsize \fontsize #-1 { \note #"2" #UP = \note #"4" #UP }} \cricket r8 c, c c |
  \saNormal \times 2/3 { r4 fis2^\mp^\espressivo }  \cricket \times 2/3 { r4 c8^\p c r4 } |
  \time 4/2
  c2^\pp^\markup { \italic \column { "un camion allant" "en marche arrière" } } r1. c2 r1. c2 r1. c2 r1. c2 r1. c2 r1. \bar "|."

}

sopranoWords = \lyricmode {
  \repeat unfold 56 \skip 1
  \repeat unfold 5 i
  \repeat unfold 8 clo
  his -- tri -- on -- ic cra -- zy a -- par -- theid
  you are not wel -- come here you are not wel -- come in this house
  I charge a dol -- lar for your lit -- tle lo -- ver
  \repeat unfold 6 { si -- bi }
  \repeat unfold 10 na
  \repeat unfold 2 dou
  \repeat unfold 2 \skip 1
  \repeat unfold 10 ou
  \repeat unfold 2 \skip 1
  \repeat unfold 6 na
  \repeat unfold 22 dou
  \repeat unfold 4 { si -- bi }
  shhhh
  \repeat unfold 8 clo
  vi -- tri -- o -- lic punk you are a kil -- ler with a se -- cret mon -- key
  take it on me
  \repeat unfold 8 clo
  I told you not to call me here when I am at Con -- chi -- ta's
  \repeat unfold 2 clo
  me lla -- mo
  me lla -- mo
  Con -- chi -- ta
  ten -- go cin -- co her -- ma -- nos
  y un -- a her -- ma -- na en Mé -- xi -- co
  me lla -- mo Con -- chi -- ta
  sì me gus -- ta bai -- lar
  ten -- go un -- a her -- ma -- na
  en Mé -- xi -- co
  vá -- mo -- nos
  Mé -- xi -- co
  La mar -- motte met Con -- chi -- ta dans le pa -- pi -- er a -- lu'.
  zhhhhh
  \repeat unfold 52 \skip 1
  twen -- ty five
  you
  \repeat unfold 4 clo
  I re -- mem -- ber how you used to tell me
  Ro -- mag -- nols
  Ro -- mag -- nols
  Ro -- mag -- nols
  ou o
  \repeat unfold 2 \skip 1
  o
  \repeat unfold 3 na
  mer -- ci
  \repeat unfold 7 \skip 1
  shhhh
  si -- bi si -- bi si -- bi
  sil -- ly girl
  ô
  \repeat unfold 2 he
  \repeat unfold 6 bip
}

alto = \relative c' {
  \autoBeamOff
  \clef percussion
  \stopStaff
  \override Staff . StaffSymbol #'line-count = #1
  \startStaff
  \stemUp
  \override Stem #'stencil = #bendy
  \override Stem #'Y-extent = #ly:grob::stencil-height
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \override NoteColumn #'Y-offset = #(lambda (grob) (rand-me -1 1))
  \override NoteHead #'style = #'mensural
  c4*1/8^\p^\markup \italic \column { "chanson d'amour d'un écureuil" "très rythmique" } c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  \revert Stem #'stencil
  \revert Stem #'Y-extent
  \revert NoteColumn #'Y-offset
  \revert NoteHead #'style
  r4 |
  #(ly:export (skip-of-length high))
  \cricket
  \stemUp
  \time 2/8
  \times 2/3 { c8^\f c c }
  \saNormal
  \stemNeutral
  \times 2/3 { r8 g'16^\mp } \times 2/3 { r8 g16 } \times 2/3 { r8 g16 } \times 2/3 { r8 g16 }
  \times 2/3 { r8 g16 } \times 2/3 { r8 g16 } r8 |
  r4 \times 2/3 { r8 g16 } \times 2/3 { r8 g16 } |
  R2*3 |
  r4 r16 a16^\f a a |
  a a a a a a a a |
  a a a a a a a a |
  \time 4/8
  r8 \times 2/3 { c8--^\mp r16 } \times 2/3 { b8-- r16 } \times 2/3 { c8-- r16 } |
  \time 3/8
  \times 2/3 { b8-- r16 } \times 2/3 { c8-- r16 } r8 |
  R4. |
  \time 6/4
  r4 \times 2/3 { r8 d,4--^\f^\markup { \italic "puéril, une gamine de 2 ans" }  ~ } d4 ~ \times 2/3 { d8 r4 } d2 |
  %\compoundMeter #'((6 8) (1 16))
  \times 2/3 { r8 d4 ~ } d ~ d16 d8 f16 ~ f16 ~ |
  \time 6/8
  f8 r16
  \once \override TupletNumber #'text = #(markup #:note "16" UP "+" #:note "4" UP)
  \once \override TupletNumber #'stencil = #ly:text-interface::print
  \once \override TupletNumber #'Y-offset = #(lambda (grob) (interval-center (ly:grob-property (ly:grob-object grob 'bracket) 'positions)))
  \once \override TupletNumber #'X-offset =
#(lambda (grob)
  (let* ((b-l (ly:spanner-bound grob LEFT))
         (b-r (ly:spanner-bound grob RIGHT))
         (sten (grob-interpret-markup grob (ly:grob-property grob 'text)))
         (crf (ly:grob-common-refpoint b-l b-r X))
         (x-pos (cons (ly:grob-relative-coordinate b-l crf X) (ly:grob-relative-coordinate b-r crf X))))
    (/ (- (- (interval-length x-pos) (interval-length (ly:stencil-extent sten X))) 0.0) 2)))

  \set Staff . tupletFullLength = ##t
  \times 9/8 { aes8 aes aes4 } |
  \unset Staff . tupletFullLength
  \set melismaBusyProperties = #'(tieMelismaBusy)
  r16 \once \override Beam #'grow-direction = #RIGHT aes16 [ aes16 aes16 aes16 aes16
  %\compoundMeter #'((4 8) (1 16))
  aes16 aes16 aes16 r16 ] r16 e'16   b b   f'' ~
  \set melismaBusyProperties = #'(tieMelismaBusy beamMelismaBusy)
  \time 5/8
  f-. r16 \cricket c,,4^\markup { \italic "du rire" } r16 c8.^\markup { \italic \column { "aspiration" "très audible" } } ~ |
  \time 6/8
  c4.
  \footnoteGrob #'NoteHead #'(-0.5 . -0.5) "*" \markup { \justify { * L'objet ci-dessus (tel que défini ci-présent)
  est mis à disposition selon les termes du présent article.  En attente de brevet, son utilisation, sa reproduction, et sa distribution au public (y compris par voie numérique) peut s'effectuer librement et gratuitement
jusqu'à preuve du contraire.  La rémuneration de l'auteur (voir ci-joint) sera ensuite octroyée en fonction de plusieurs critères,‡ dont ceux élaborés ci-dessous.
} }
  c4.:32^\markup { \italic \column { "faites vibrer" "les lèvres" } }
  \time 4/4
  r16 c8.:32 c4:32
\footnoteGrob #'NoteHead #'(-0.5 . -0.5) "†" \markup { \column {\justify { † Brevetable mais non-breveté, l'assujetti doit toutefois être conforme à la réglementation suivante : }
\line { \override #'(line-width . 24) \fill-line { "•  Septième majeure" " " } | \override #'(line-width . 24) \fill-line { " têtard, pattes palmées" " " } | " min60 ou l'heure" }
\line { \override #'(line-width . 24) \fill-line { "•  Quadruple périlleux" " " } | \override #'(line-width . 24) \fill-line { " saut, réception" " " } | " aïe ou ouille" }
\line { \override #'(line-width . 24) \fill-line { "•  160 sans atout" " " } | \override #'(line-width . 24) \fill-line { " belote, et rebelote" " " } | " capot, ou baiser Fanny" }
} }
  c4:32 \footnoteGrob #'Rest #'(0 . 0) " " \markup { \tiny \fill-line { " " "‡cf Malahieude 2011" } } r8 \bendAfter #2 c8^\markup { \column \italic { "un bébé phoque" "très aigu" } }
  \times 4/7 { \repeat unfold 7 { \bendAfter #2 c4 } } |
  %\compoundMeter #'((2 4) (1 8))
  \repeat unfold 5 { \bendAfter #2 c8 } |
  \time 5/8
  \bendAfter #2 c8 c2^\markup { \italic "une abeille" } ~ |
  \time 6/8
  c8 %{arrête ! %} c16 c16 r c^\markup { \italic "une abeille" } ~ c4. ~ |
  c4 r4 c8^\markup { \italic \column { "en devenant petit à petit" "un bruit électronique (le \"z\" devient \"j\")" } } ~
  c4. ~ |
  c2.. ~ \times 2/3 { c8 \saNormal b'8^\markup \italic "trompette" b ~ } |
  b4 ~   b16 bes bes bes    bes bes bes8  \times 2/3 { bes bes bes } bes4 a8 |
  \times 2/3 { aeh8 aeh aeh } \times 2/3 { aeh aeh8. aeh16 ~ } \times 2/3 { aeh8 aeh16 ~ } |
  \time 4/4
  \times 2/3 { aeh16 aes8 aes aes16 ~ } aes8 \times 2/3 { aes aes aes } aes8 ges16 ges ges8 |
  f16 f f8 e16 r \cricket c4.^\markup { \italic "du rire" } |
  \saNormal
  \times 2/3 { r8 g'16^\mp } \times 2/3 { r8 g16 } \times 2/3 { r8 g16 } \times 2/3 { r8 g16 }
  \times 2/3 { r8 g16 } \times 2/3 { r8 g16 } r8 |
  r8 \times 2/3 { r8 g16 } \times 2/3 { r8 g16 } |
  r4    r16 a^\f a a    a a a a    a a a a
  a a a a |
  \cadenzaOn
  \question
  \time 4/4
  \highTwo
  \cadenzaOff
  \bar "|"
  R2
  R4.
  R4 |
  \cadenzaOn
  \question
  \time 4/4
  \highThree
  \cadenzaOff
  \bar "|"
  r4 r16 f f f f f f f f f f f |
  \time 2/8
  \times 2/3 { r8 g16^\mp } \times 2/3 { r16 d8 } |
  \time 4/16
  \cricket
  b16^\f d c8 |
  r16 b e e e |
  \time 3/16
  d d8 |
  \time 6/16
  r16 b b d d d |
  \time 4/16
  c c b e |
  \time 5/16
  e e d d d |
  d8 c16 c r |
  r16 b b |
  d d c e e e |
  d b d d |
  d d \saNormal fis f e |
  dis b16 gis' e8 |
  r16 b a' a a |
  \monologue
  \cadenzaOn
  \FatText
  \MonoShift
  s4^\markup { \whiteout PAUSE } \bar "|"
  s4^\markup { \fontsize #2 \whiteout PAUSE } \bar "|"
  s4^\markup { \fontsize #5 \whiteout PAUSE } s4 \bar "|"
  s4^\markup { \fontsize #10 \whiteout PAUSE } \saNormal r16 \bar "|"
  \unFatText
  \unMonoShift
  \cadenzaOff
  r16 b, a' |
  a a fis ~ |
  fis gis fis e d' d |
  d cis b a |
  e gis a gis fis |
  fis8 e16 dis b |
  r4^\fermata
  b8-.^\mp b-. b-. r8 \bar "|"
  R2 |
  \time 4/4
  e8^\mf d c e d e d c |
  b c d e f32 \cricket c4...^\f^\markup { \italic "bruit blanc" } ~ c8 |
  R4. |
  \override Stem #'stencil = #bendy
  \override NoteColumn #'Y-offset = #(lambda (grob) (rand-me -1 1))
  \override NoteHead #'style = #'mensural
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \override Stem #'Y-extent = #ly:grob::stencil-height
  c4*1/8^\p^\markup \italic \column { "chanson d'amour d'un écureuil" "très rythmique" } c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  <<
    { c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8^\markup { \italic \column { "en devenant de plus en plus" "comme la ligne ci-dessus" }} c4*1/8 c4*1/8 c4*1/8
  c4*1/8^\< c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  \mark \markup { \italic "rit." }
  c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8 c4*1/8
  c4*1/8 c4*1/8 c4*1/8 c4*1/8
  \revert Stem #'Y-extent
  \revert NoteColumn #'Y-offset
  \saNormal
  eis16^\mf eis eis r
  }
  \new Staff \with {
      \remove "Time_signature_engraver"
      \remove "Bar_engraver"
      alignAboveContext = #"altstaff"
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
      \override StaffSymbol #'thickness = #(magstep -3)
      firstClef = ##f
    }
    \transpose c cis
    \relative c' {   \set subdivideBeams = ##t \set Staff . baseMoment = #(ly:make-moment 1 8)
  \set Staff . beatStructure = #'(2 2 2 2) s32 \key c \major s16. f32 e f g b a g f e dis e c f e d c b ais b c d e d g %e16 e e r
}
  >>
  r4 |
  \time 4/4
  R1 |
  \time 3/8
  \times 2/3 { r8 dis4^\mp^\espressivo } \cricket \footnoteGrob #'NoteHead #'(0.5 . -0.5) "¶"
  \markup \justify { ¶ Fait chier fait chier fait chier fait chier fait chier fait chier fait chier fait chier fait chier fait chier j'ai perdu mon jeu de clés avec
  mon putain de brevet dessus fait chier fait chier fait chier fait chier fait chier fait chier fait chier je suis rentré, Conchita, et puis je l'ai mis avec mon portefeuille
  sur la table dans le salon et maintenant je n'ai plus de droit d'auteur fait chier. }
  c8 |
  \saNormal
  \time 4/8
  \times 2/3 { r8 g'16^\mp } \times 2/3 { r8 g16 } \times 2/3 { r8 g16 } \times 2/3 { r8 g16 } |  
  r16 a^\p a a  a a a a  a a a a  a8 a |
  \cadenzaOn
  \question
  \time 4/4
  \highFour
  s4
  \cadenzaOff
  \bar "|"
  \time 3/4
  fis8^\f\> fis fis4^\mp r8 \cricket c8^\mf ~ |
  c2. ~ |
  c2. ~ |
  c4 r2 |
  \saNormal
  fis8^\f\> fis fis4^\mp r4 |
  \time 2/2
  g1^\p | e1 | fis1 |
  \cricket
  c4.^\f r8 \saNormal \key e \major \times 4/6 { e16^\mf^\markup { \italic "puéril, trompette, faux" } dis cis b cis dis } \times 4/6 { e8 gis16 b8 gis16 } |
  \cricket
  \sustainG \slash \stemTrans cis,4^\p^\markup { \italic "applaudissements, bravo" } \glissando s2
  \grace { \hideNotes cis8 \unHideNotes } \saNormal \times 4/6 { e16^\mf^\markup { \italic "puéril, trompette, faux" } dis cis b cis dis } \times 4/6 { e8 gis16 b8 gis16 } \times 4/6 { e8 gis16 b8 gis16 } |
  b,4^\mp\< cis d dis |
  e8 fis4 gis8-.^\f \key c \major \cricket r c, c c |
  \saNormal
  \times 2/3 { r4 d2^\mp^\espressivo } \cricket \times 2/3 { r4 c8^\p c r4 } |
  c2^\pp^\markup { \italic \column { "un camion allant" "en marche arrière" } } r1. | c2 r1. | c2 r1. | c2 r1. | c2 r1. | c2 r1. \bar "|."
}

altoWords = \lyricmode {
  \repeat unfold 56 \skip 1
  \repeat unfold 3 ha
  \repeat unfold 8 and
  you are not wel -- come in this house
  I charge a dol -- lar for your lit -- tle lo -- ver
  \repeat unfold 5 clo
  \repeat unfold 4 la
  \repeat unfold 4 na
  \repeat unfold 8 la
  \repeat unfold 4 li
  \repeat unfold 6 \skip 1
  \repeat unfold 14 ou
  zzzz
  ar -- rête
  zzzz
  zzzz
  \repeat unfold 34 dou
  \skip 1
  \repeat unfold 8 and
  you are a kil -- ler with a se -- cret mon -- key
  take it on me
  \repeat unfold 7 i
  \repeat unfold 3 i
  to call me here when I am at Con -- chi -- ta's
  and ser
  me lla -- mo
  me lla -- mo
  Con -- chi -- ta
  ten -- go cin -- co her -- ma -- nos
  y un -- a her -- ma -- na en Mé -- xi -- co
  ten -- go cua -- tro a -- mi -- gas nos gus -- ta ir en
  los Es -- ta -- dos U -- ni -- dos ho -- la
  me lla -- mo Con
  me lla -- mo Con -- chi -- ta
  bai -- lo
  ten -- go un -- a her -- ma -- na
  en Mé -- xi -- co
  va -- mos va -- mos
  Mé -- xi -- co
  mar -- motte met Con -- chi -- ta dans le pa -- pi -- er a -- lu'.
  zhhhhh
  \repeat unfold 52 \skip 1
  twen -- ty five
  you
  shhh
  \repeat unfold 4 and
  re -- mem -- ber how you used to tell me that you one two
  \repeat unfold 2 i
  Ro -- mag -- nols
  fake
  Ro -- mag -- nols
  Ro -- mag -- nols
  shhhh
  \repeat unfold 10 dou
  \skip 1
  \repeat unfold 14 dou
  right left right left do the trot
  sil -- ly girl
  ô
  \repeat unfold 2 he
  \repeat unfold 6 bip
}

tenor = \relative c' {
  \autoBeamOff
  \override NoteHead #'stencil = #cloud
  \clef percussion
  \stopStaff
  \override Staff . StaffSymbol #'line-count = #1
  \startStaff
  \stemUp
  \override NoteHead #'Y-extent = #ly:grob::stencil-height
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \override Stem #'stencil = ##f
  R1 |
  r2.
  c4*1/4^\f^\markup \italic \column { "cri de guerre maori" "très rythmique" } c c c
  \revert NoteHead #'Y-extent
  \revert NoteHead #'stencil
  \revert Stem #'stencil
  #(ly:export (skip-of-length high))
  \cricket
  \stemUp
  \time 2/8
  \times 2/3 { c8^\f c c } |
  \tNormal
  \stemNeutral
  \times 2/3 { r16 d8^\mp } \times 2/3 { r16 d8 } \times 2/3 { r16 d8 } \times 2/3 { r16 d8 } |
  \times 2/3 { r16 d8 } \times 2/3 { r16 d8 } r8 |
  r4 \times 2/3 { r16 d8 } \times 2/3 { r16 d8 } |
  R2*3 |
  r4 r16 bes16^\f bes bes |
  bes bes bes bes bes bes bes bes |
  bes bes bes bes bes bes bes bes |
  \time 4/8
  \times 2/3 { r8 g16^\mp } \times 2/3 { r8 g16 } \times 2/3 { r8 g16 } \times 2/3 { r8 g16 } |
  \time 3/8
  \times 2/3 { r8 g16 } \times 2/3 { r8 g16 } r8 |
  \monologue
  r4 \fatText \monoShift s8^\markup { \whiteout "non" } |
  \folieOne
  \tNormal
  \times 2/3 { r16 d'8^\mp } \times 2/3 { r16 d8 } \times 2/3 { r16 d8 } \times 2/3 { r16 d8 } |
  \times 2/3 { r16 d8 } \times 2/3 { r16 d8 } r8 |
  r8 \times 2/3 { r16 d8 } \times 2/3 { r16 d8 } |
  r4    r16 bes^\f bes bes    bes bes bes bes    bes bes bes bes
  bes bes bes bes |
  #(ly:export (skip-of-length highTwo))
  \bar "|"
  \time 4/8
  \times 2/3 { r8 d16^\mp } \times 2/3 { r8 d16 } \times 2/3 { r8 d16 } \times 2/3 { r8 d16 } |
  \time 3/8
  \times 2/3 { r8 d16 } \times 2/3 { r8 d16 } r8 |
  \time 2/8
  \times 2/3 { r8 d16 } \times 2/3 { r8 d16 } |
  #(ly:export (skip-of-length highThree))
  r16 bes^\p \repeat unfold 14 bes |
  \times 2/3 { r16 d8^\mp } \cricket \times 2/3 { r8 \footnoteGrob #'NoteHead #'(0.5 . -0.5) "*"
  \markup \justify { * Suite à de nombreux brevets concernant la partie supérieure de ce morceau, personne n'est plus considéré comme étant son propriétaire légitime.
Les observations des tiers qui ont été communiquées à ta mère en short sont consultables par tout brevet intéressé. }
  c16:64^\markup { \italic { glitch } } } |
  R4 |
  R4*5/4 |
  \time 3/16
  R8. |
  \time 6/16
  R4. |
  \time 4/16
  R4 |
  \time 5/16
  R4*5/4 |
  R4*5/4 |
  \time 3/16
  R8. |
  \time 6/16
  R4. |
  \time 4/16
  r8 b16^\f d |
  \time 5/16
  \footnoteGrob #'NoteHead #'(0.5 . -0.5) "*" "* pause" c8 r16 b e |
  e e d d8 |
  r16 b b d d |
  \monologue
  \cadenzaOn
  \FatText
  \MonoShift
  s4^\markup { \whiteout PAUSE } \bar "|"
  s4^\markup { \fontsize #2 \whiteout PAUSE } \bar "|"
  s4^\markup { \fontsize #5 \whiteout PAUSE } s4^\markup { \fontsize #-2 \whiteout motherfuckin' } \bar "|"
  s4^\markup { \fontsize #10 \whiteout PAUSE } \tNormal \cricket d16 \bar "|"
  \unFatText
  \unMonoShift
  \cadenzaOff
  c c b
  d d d |
  b c d e8 b16 |
  b \tNormal a gis a |
  cis b a cis e |
  dis b, a' a a |
  r4^\fermata
  gis8-.^\mp gis-. gis-. r8 \bar "|"
  R2 |
  \cadenzaOff
  g8^\mf b e, b' a b a b |
  \compoundMeter #'((4 4) (1 8))
  f g f e b'32 \cricket c4...^\f^\markup { \italic "bruit blanc" } ~ c8 |
  \noTime
  \time 3/8
  \FatText
  \MonoShift
  s8^\markup { \whiteout and } s8^\markup { \whiteout they } s8^\markup { \whiteout laughed }
  \unFatText
  \unMonoShift
  R1*7/8 |
  r2 r2
  \cricket
  c32^\f c8.. |
  \time 4/4
  c2..^\f^\markup { \italic "fry" } r8 |
  \time 3/8
  \tNormal
  \times 2/3 { r8 cis4^\mp^\espressivo } r8 |
  \times 2/3 { r16 d8^\mp } \times 2/3 { r16 d8 } \times 2/3 { r16 d8 } \times 2/3 { r16 d8 } |
  r16 bes^\p bes bes  bes bes bes bes   bes bes bes bes r4 |
  \cricket
  #(ly:export (skip-of-length highFour))
  \FatText
  \MonoShift
  s8^\markup { \whiteout and } s8^\markup { \whiteout they } \bar "|"
  \unFatText
  \unMonoShift
  \tNormal
  d8^\f\> d d4^\mp r4 |
  R2. |
  R2. |
  \cricket
  r4 \times 2/3 { c^\mf c c } |
  \tNormal
  d8^\f\> d d4^\mp r4 |
  \time 2/2
  b1^\p | a1 | g1 |
  R1 |
  R1. |
  r4 b^\mp\< bes a |
  gis8 gis4 gis8-.\f \key c \major r2 |
  \times 2/3 { r4 b2^\mp^\espressivo } \cricket \times 2/3 { r4 c8^\p c r4 } |
  c2^\pp^\markup { \italic \column { "un camion allant" "en marche arrière" } } r1. | c2 r1. | c2 r1. | c2 r1. | c2 r1. | c2 r1. \bar "|."
}

tenorWords = \lyricmode {
  \repeat unfold 4 \skip 1
  \repeat unfold 3 ha
  \repeat unfold 8 ser
  you are not wel -- come in this house
  I charge a dol -- lar for your lit -- tle lo -- ver
  \repeat unfold 6 and
  \repeat unfold 8 ser
  you are a kil -- ler with a se -- cret mon -- key
  take it on me
  \repeat unfold 8 and
  I told you not to call me here when I am at Con -- chi -- ta's
  ser and
  me lla -- mo
  me lla -- mo
  Con -- chi -- ta
  ten -- go cin -- co her -- ma -- nos
  y un -- a her -- ma -- na en Mé -- xi -- co
  la her -- ma -- na
  en Mé -- xi -- co
  sí me lla -- mo Con
  Mé -- xi -- co
  mar -- motte met Con -- chi -- ta dans le pa -- pi -- er a -- lu'.
  zhhhhh
  al -- lez
  \skip 1
  you
  \repeat unfold 4 ser
  re -- mem -- ber how you used to tell me that you
  Ro -- mag -- nols
  Con -- chi -- ta
  Ro -- mag -- nols
  Ro -- mag -- nols
  left right left do the trot
  ô
  \repeat unfold 2 he
  \repeat unfold 6 bip
}

bass = \relative c' {
  \autoBeamOff
  \override NoteHead #'stencil = #cloud
  \clef percussion
  \stopStaff
  \override Staff . StaffSymbol #'line-count = #1
  \startStaff
  \stemUp
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \override NoteHead #'Y-extent = #ly:grob::stencil-height
  \override Stem #'stencil = ##f
  R1 |
  r2.
  c4*1/4^\f^\markup \italic \column { "cri de guerre maori" "très rythmique" } c c c
  \revert NoteHead #'Y-extent
  \revert NoteHead #'Y-extent
  \revert NoteHead #'stencil
  \revert Stem #'stencil
  #(ly:export (skip-of-length high))
  \cricket
  \time 2/8
  R4 |
  R2 |
  R4. |
  R2 |
  R2*3 |
  \bNormal
  \stemNeutral
  r4 r16 a,16^\f a a |
  a a a a a a a a |
  a a a a a a a a |
  \time 4/8
  r8 \times 2/3 { r16 d8^\mp } \times 2/3 { r16 d8 } \times 2/3 { r16 d8 } |
  \time 3/8
  \times 2/3 { r16 d8 } \times 2/3 { r16 d8 } r8 |
  \monologue
  \FatText
  \MonoShift
  s8.^\markup { \whiteout "mon" } s8.^\markup { \whiteout "solo" } 
  \unFatText
  \unMonoShift
  \folieOne
  R2 |
  R4. |
  R4. |
  \bNormal
  r4    r16 a^\f a a    a a a a    a a a a
  a a a a  |
  #(ly:export (skip-of-length highTwo))
  \bar "|"
  \time 4/8
  \times 2/3 { r16 a'8^\mp } \times 2/3 { r16 a8 } \times 2/3 { r16 a8 } \times 2/3 { r16 a8 } |
  \time 3/8
  \times 2/3 { r16 a8 } \times 2/3 { r16 b8 } r8 |
  \time 2/8
  \times 2/3 { r16 a8 } \times 2/3 { r16 b8 } |
  #(ly:export (skip-of-length highThree))
  \time 4/4
  r16 d,^\p d d d d d d d d d d d d d d |
  \time 2/8
  R4 |
  R4 |
  R4*5/4 |
  \time 3/16
  R8. |
  \time 6/16
  R4. |
  \time 4/16
  R4 |
  \time 5/16
  R4*5/4 |
  R4*5/4 |
  \time 3/16
  R8. |
  \time 6/16
  R4. |
  \time 4/16
  R4 |
  \time 5/16
  R4*5/4 |
  r4 b16^\f |
  b8 b8 r16 |
  \monologue
  \cadenzaOn
  \FatText
  \MonoShift
  s4^\markup { \whiteout PAUSE } \bar "|"
  s4^\markup { \fontsize #2 \whiteout PAUSE } \bar "|"
  s4^\markup { \fontsize #5 \whiteout PAUSE } s4 \bar "|"
  s4^\markup { \fontsize #10 \whiteout PAUSE } \bNormal b16 \bar "|"
  \unFatText
  \unMonoShift
  \cadenzaOff
  \time 3/16
  a' a a |
  fis16 fis8 |
  \time 6/16
  r16 b, b gis' gis gis |
  \time 4/16
  e e b a' |
  \time 5/16
  gis eis fis gis ais |
  b8 b,16 b8 |
  r4^\fermata
  e8-.^\mp e-. e-. r8 \bar "|"
  R2 |
  \time 4/4
  c8^\mf g' c, d c g' d c |
  f e d c d32 \cricket c'4...^\f^\markup { \italic "bruit blanc" } ~ c8 |
  R4. |
  R1*7/8 |
  \bNormal
  r2 r4 cis,16^\mf cis cis r r4 |
  \time 4/4
  \cricket
  c'2..^\f^\markup { \italic "fry" } r8 |
  \time 3/8
  \bNormal
  \times 2/3 { r8 ais4^\mp^\espressivo } r8 |
  R2 |
  \time 4/4
  r16 a,^\p a a a a a a a a a a a8 r |
  #(ly:export (skip-of-length highFour))
  s4 |
  \time 3/4
  b8^\f\> b b4^\mp r4 |
  R2. |
  R2. |
  R2. |
  b8^\f^\> b b4^\mp r4 |
  \time 2/2
  g1^\p | a1 | b2.. \cricket \times 2/3 { c'16^\f c c } |
  R1 |
  R1. |
  R1 |
  r2 c8^\p^\markup { \italic \column { "coup de glotte" "très aigu"} } r4. |
  \bNormal
  \times 2/3 { r4 a2^\mp^\espressivo } \cricket \times 2/3 { r4 c8^\p c r4 } |
  c2^\pp^\markup { \italic \column { "un camion allant" "en marche arrière" } } r1. | c2 r1. | c2 r1. | c2 r1. | c2 r1. | c2 r1. \bar "|."
}

bassWords = \lyricmode {
  \repeat unfold 4 \skip 1
  you are not wel -- come in this house
  I charge a dol -- lar for your lit -- tle lo -- ver
  \repeat unfold 5 ser
  you are a kil -- ler with a se -- cret mon -- key
  take it on me
  \repeat unfold 8 ser
  I told you not to call me here when I am at Con -- chi -- ta's
  me lla -- mo
  me lla -- mo
  Con -- chi -- ta
  ten -- go cin -- co her -- ma -- nos
  y un -- a her -- ma -- na en Mé -- xi -- co
  Mé -- xi -- co
  mar -- motte met Con -- chi -- ta dans le pa -- pi -- er a -- lu'.
  zhhhhh
  twen -- ty five
  \skip 1
  you
  re -- mem -- ber how you used to tell me that you one
  Ro -- mag -- nols
  Ro -- mag -- nols
  Ro -- mag -- nols ha ha ha
  i
  ô
  \repeat unfold 2 he
  \repeat unfold 6 bip
}

\score {
  \new ChoirStaff <<
    \new Staff = "sopstaff" \with { instrumentName = #"Marie" }
   <<
      \new Voice = "soprano" { \numericTimeSignature #(set-accidental-style 'neo-modern) \soprano }
      \lyricsto "soprano" \new Lyrics { \sopranoWords }
    >>
    \new Staff = "altstaff" \with { instrumentName = #"Elsa" }
    <<
      \new Voice = "alto" { \numericTimeSignature #(set-accidental-style 'neo-modern) \alto }
      \lyricsto "alto" \new Lyrics { \altoWords }
    >>
    \new Staff \with { instrumentName = #"Ryan" }
    <<
      \new Voice = "tenor" { \numericTimeSignature #(set-accidental-style 'neo-modern) \tenor }
      \lyricsto "tenor" \new Lyrics { \tenorWords }
    >>
    \new Staff \with { instrumentName = #"Eudes" }
     <<
      \new Voice = "bass" { \numericTimeSignature #(set-accidental-style 'neo-modern) \bass }
      \lyricsto "bass" \new Lyrics { \bassWords }
    >>
  >>
  \layout {
    \context {
      \Voice
      \override TextScript #'layer = #6
      \override Glissando #'breakable = ##t
      \override TupletNumber #'breakable = ##t
      \override TupletBracket #'breakable = ##t
      \remove "Forbid_line_break_engraver"
    }
    \context {
      \Staff
      \consists "Key_engraver"
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override TimeSignature #'whiteout = ##t
    }
    \context {
      \Lyrics
      \override LyricText #'whiteout = ##t
      \override LyricText #'layer = #6
    }
    \context {
      \Score
      \remove "Key_engraver"
%      \override NonMusicalPaperColumn #'allow-loose-spacing = ##f
    }
  }
  \midi {}
}
