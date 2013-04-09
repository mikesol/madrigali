\version "2.15.0"
\include "defs-devel.ly"

\header {
  title = "the tragedy of intent vii"
  subtitle = "the andragogs praise Conchita's adult learning"
  composer = "mike solomon"
}
#(ly:set-option 'point-and-click #f)
#(set-global-staff-size 17.82)

dumb = \markup \italic \column { "dumb, with" "unbridled" "love" } 
normale = \markup \italic "normale..."

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

globals = {
  \key aes \major
  \override Staff . TimeSignature #'stencil = ##f
  \override TextSpanner #'vertical-skylines = #ly:grob::vertical-skylines-from-stencil
}

Point = {
  %\override NoteHead #'stencil = #point-stencil
  \override NoteHead #'transparent = ##t
  %\override NoteHead #'style = #'mensural
  \override NoteColumn #'glissando-skip = ##t
  \override NoteHead #'no-ledgers = ##t
}

Air = \override NoteHead #'style = #'mensural
unAir = \undo \Air

noAcc = \once \override Accidental #'stencil = ##f

point = \once \Point

unPoint = \undo \Point

parenNC = {
%  \once \override NoteColumn #'stencil = #parentheses-item::print
}

TXK = \override TextSpanner #'after-line-breaking = #ly:spanner::kill-zero-spanned-time
txK = \once \TXK

TTB = \override TextSpanner #'to-barline = ##t
ttB = \once \TTB
HTB = \override Hairpin #'to-barline = ##t
htB = \once \TTB

vibA = {
  \once \override TextSpanner #'normalized-endpoints = #ly:spanner::calc-normalized-endpoints
  \once \override TextSpanner #'stencil =
#(lambda (grob) (vibster grob 0 0.1 0.2
'((9 0 20 -10 30 10)
(10 10 0 10 -15) (10 10 0 10 17)
(10 10 0 10 -23) (10 10 0 10 23)
(10 10 0 10 -23) (10 10 0 10 23)
(10 10 0 10 -17) (10 10 0 10 15)
(10 10 0 10 -10) (10 20 0 30 5))
))
}

vibB = {
  \once \override TextSpanner #'normalized-endpoints = #ly:spanner::calc-normalized-endpoints
  \once \override TextSpanner #'stencil =
#(lambda (grob) (vibster grob 0 0.1 0.2
'((9 0 20 -10 30 10)
(10 10 0 10 -15) (10 10 0 10 17)
(10 10 0 10 -23) (10 10 0 10 23)
(10 10 0 10 -17) (10 10 0 10 15)
(10 10 0 10 -10) (10 20 0 30 5))
))
}

vibC = {
  \once \override TextSpanner #'normalized-endpoints = #ly:spanner::calc-normalized-endpoints
  \once \override TextSpanner #'stencil =
#(lambda (grob) (vibster grob 0 0.1 0.2
'((9 0 20 -10 30 10)
(10 10 0 10 -15) (10 10 0 10 15)
(10 10 0 10 -15) (10 10 0 10 15)
(10 10 0 10 -10) (10 20 0 30 5))
))
}

vibD = {
  \once \override TextSpanner #'normalized-endpoints = #ly:spanner::calc-normalized-endpoints
  \once \override TextSpanner #'stencil =
#(lambda (grob) (vibster grob 0 0.1 0.2
'((9 0 20 -10 30 10)
(10 10 0 10 -15) (10 10 0 10 15)
(10 10 0 10 -10) (10 20 0 30 5))
))
}

vibE = {
  \once \override TextSpanner #'normalized-endpoints = #ly:spanner::calc-normalized-endpoints
  \once \override TextSpanner #'stencil =
#(lambda (grob) (vibster grob 0 0.1 0.2
'((9 0 20 -10 30 10)
(10 10 0 10 -10) (10 10 0 10 10)
(10 10 0 10 -10) (10 10 0 10 10)
(10 10 0 10 -10) (10 10 0 10 10)
(10 10 0 10 -10) (10 10 0 10 10)
(10 10 0 10 -10) (10 10 0 10 10))
))
}

vibF = {
  \once \override TextSpanner #'normalized-endpoints = #ly:spanner::calc-normalized-endpoints
  \once \override TextSpanner #'stencil =
#(lambda (grob) (vibster grob 0 0.1 0.2
'((9 0 20 -10 30 10)
(10 10 0 10 -10) (10 10 0 10 10)
(10 10 0 10 -10) (10 10 0 10 10)
(10 10 0 10 -10) (10 10 0 10 10))
))
}

scoop = #(define-music-function (parser location n) (number?)
#{
  \once \override RepeatTie #'stencil =
  #(lambda (grob) (make-connected-path-stencil
  '((-0.5 -1.5 -1 -1.5 -1.5 -1.5)) 0.2 1.0 1.0 #f #f))
  \once \override RepeatTie #'X-offset = #-0.5
  \once \override RepeatTie #'Y-offset = #n
#})

swoop = #(define-music-function (parser location n) (number?)
#{
  \once \override RepeatTie #'stencil =
  #(lambda (grob) (make-connected-path-stencil
  '((-0.3 0 -0.8 0 -1.2 1.5)) 0.2 1.0 1.0 #f #f))
  \once \override RepeatTie #'X-offset = #-0.5
  \once \override RepeatTie #'Y-offset = #n
#})

ughScoop = #(define-music-function (parser location x y) (number? number?)
#{
  \once \override RepeatTie #'stencil =
  #(lambda (grob) (make-connected-path-stencil
  '((-0.5 -1.5 -1 -1.5 -1.5 -1.5)) 0.2 1.0 1.0 #f #f))
  \once \override RepeatTie #'X-offset = #x
  \once \override RepeatTie #'Y-offset = #y
#})

marks = {
  \tempo "moderato angelico" 4=120
  \time 3/4
  s2. \barNumberCheck #2
  s2. \barNumberCheck #3
  \time 3/4
  s2. \barNumberCheck #4
  s2. \barNumberCheck #5
  \time 3/4
  s2. \barNumberCheck #6
  s2. \barNumberCheck #7
  s2. \barNumberCheck #8
  s2. \barNumberCheck #9
  \time 2/4
  s2 \barNumberCheck #10
  \time 3/4
  s2. \barNumberCheck #11
  s2. \barNumberCheck #12
  \time 2/4
  s2 \barNumberCheck #13
  \time 3/4
  s2. \barNumberCheck #14
  \time 3/8
  s4. \barNumberCheck #15
  \time 3/4
  s2. \barNumberCheck #16
  s2. \barNumberCheck #17
  s2. \barNumberCheck #18
  \time 2/4
  s2 \barNumberCheck #19
  \time 3/4
  s2. \barNumberCheck #20
  \time 5/8
  s1*5/8 \barNumberCheck #21
  \time 3/4
  s2. \barNumberCheck #22
  s2. \barNumberCheck #23
  \time 2/4
  s2 \barNumberCheck #24
  \time 3/4
  s2. \barNumberCheck #25
  \time 5/8
  s1*5/8 \barNumberCheck #26
  \time 2/4
  s2 \barNumberCheck #27
  \time 3/4
  s2. \barNumberCheck #28
  s2. \barNumberCheck #29
  s2. \barNumberCheck #30
  \time 4/4
  s1 \barNumberCheck #31
  \time 3/4
  s2. \barNumberCheck #32
  \time 5/8
  s1*5/8 \barNumberCheck #33
  \time 3/4
  s2. \barNumberCheck #34
  s2. \barNumberCheck #35
  \time 5/8
  s1*5/8 \barNumberCheck #36
  \time 2/4
  s2 \barNumberCheck #37
  \time 3/4
  s2. \barNumberCheck #38
  \time 5/8
  s1*5/8 \barNumberCheck #39
  \time 3/4
  s2. \barNumberCheck #40
  s2. \barNumberCheck #41
  \time 5/8
  s1*5/8 \barNumberCheck #42
  \time 2/4
  s2 \barNumberCheck #43
  \time 3/4
  s2. \barNumberCheck #44
  s2. \barNumberCheck #45
  \time 5/8
  s1*5/8 \barNumberCheck #46
  \time 3/4
  s2. \barNumberCheck #47
  \time 2/4
  s2 \barNumberCheck #48
  s2 \barNumberCheck #49
  \time 3/4
  s2. \barNumberCheck #50
  \time 5/8
  s1*5/8 \barNumberCheck #51
  \time 3/4
  s2. \barNumberCheck #52
  \time 5/8
  s1*5/8 \barNumberCheck #53
  \time 3/4
  s2. \barNumberCheck #54
  s2. \barNumberCheck #55
  \time 5/8
  s1*5/8 \barNumberCheck #56
  \time 2/4
  s2 \barNumberCheck #57
  \time 3/4
  s2. \barNumberCheck #58
  \time 5/8
  s1*5/8 %{%}\noBreak%{%}\barNumberCheck #59
  \time 2/4
  s2 \barNumberCheck #60
  \time 5/8
  s1*5/8 \barNumberCheck #61
  \time 3/4
  s2. \barNumberCheck #62
  \time 5/8
  s1*5/8 \barNumberCheck #63
  \time 2/4
  s2 \barNumberCheck #64
  \time 3/4
  s2. \barNumberCheck #65
  \time 5/8
  s1*5/8 \barNumberCheck #66
  \time 3/4
  s2. \barNumberCheck #67
  s2. \barNumberCheck #68
  \time 2/4
  s2 \barNumberCheck #69
  \time 3/4
  s2. \barNumberCheck #70
  \time 3/8
  s4. \barNumberCheck #71
  \time 3/4
  s2. \barNumberCheck #72
  \time 2/4
  s2 \barNumberCheck #73
  \time 3/4
  s2. \barNumberCheck #74
  \time 5/8
  s1*5/8 \barNumberCheck #75
  \time 2/4
  s2 \barNumberCheck #76
  \time 3/4
  s2. \barNumberCheck #77
  \time 5/8
  s1*5/8 \barNumberCheck #78
  \time 2/4
  s2 \barNumberCheck #79
  \time 3/8
  s4. \barNumberCheck #80
  \time 3/4
  s2. \barNumberCheck #81
  \time 5/8
  s1*5/8 \barNumberCheck #82
  \time 2/4
  s2 \barNumberCheck #83
  \time 3/4
  s2. \barNumberCheck #84
  \time 5/8
  s1*5/8 \barNumberCheck #85
  \time 2/4
  s2 \barNumberCheck #86
  \time 3/4
  s2. \barNumberCheck #87
  \time 5/8
  s1*5/8 \barNumberCheck #88
  \time 3/4
  s2. \barNumberCheck #89
  s2. \barNumberCheck #90
  \time 5/8
  s1*5/8 \barNumberCheck #91
  \time 3/4
  s2. \barNumberCheck #92
  s2. \barNumberCheck #93
  \time 5/8
  s1*5/8 \barNumberCheck #94
  \time 3/4
  s2. \barNumberCheck #95
  \time 2/4
  s2 \barNumberCheck #96
  \time 3/4
  s2. \barNumberCheck #97
  \time 5/8
  s1*5/8 \barNumberCheck #98
  \time 2/4
  s2 \barNumberCheck #99
  \time 3/4
  s2. \barNumberCheck #100
  s2. \barNumberCheck #101
  s2. \barNumberCheck #102
  s2. \barNumberCheck #103
  \mark \markup \italic "rit."
  s2. \barNumberCheck #104
  \time 5/8
  s1*5/8 \barNumberCheck #105
  \time 3/4
  s2. \barNumberCheck #106
  \time 2/4
  s2 \barNumberCheck #107
  s2 \barNumberCheck #108
}

soprano = \relative c' {
  \TXK
  \autoBeamOff
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2 |
  r4. f8^\f ~ f4 ~ |
  f8 c'8 ~ c2 ~ |
  \times 2/3 { c4 \hairtip \swoop #-1 g8\repeatTie^\> ( ~ } g4 ~ |
  g2. ~ |
  g4. \glissando |
  \point f8 [ \point ees8 ] \parenNC e8\! ) r8 r4 |
  r2 r8 f8^\f ~ |
  f2 ~ f8 f'8 ~ |
  f2 ~ |
  f8 \hairtip  \once \override RepeatTie #'X-extent = #'(-1.0 . 0) \scoop #0 c8\repeatTie^\> ~ ( c2 \glissando |
  \Point bes8 [ bes bes ] aes [ g ] |
  g [ g ] g [ g ] f [ f ] |
  ees [ ees ] \unPoint e\! ) r8 r4 |
  R2 |
  r4. ees4^\f ( f8 ) |
  \once \override TupletNumber #'avoid-slur = #'outside
  % ugh...alterBroken doesn't work
  % try to implement this by hand...
  \once \override TupletBracket #'positions =
    #(lambda (grob)
       (coord-translate (ly:tuplet-bracket::calc-positions grob) '(0.5 . 0.5)))
  \once \override TupletBracket #'direction = #UP
  \once \override TupletNumber #'direction = #UP
  \times 5/7 {
    c'4. ( \times 2/3 { bes8 [ c bes ] }
    aes4 \times 2/3 { g8 [ aes g ] }
    f4 \times 2/3 { ees8 [ f ees ] }
    des4 c bes ) c ( ~ } |
  c2.^\> \glissando |
  bes2.^\mp \glissando |
  \Point des8 [ ees ] ees [ f ] \unPoint \vibA f2\startTextSpan^\< ~ |
  f4^\> ) r2\!\stopTextSpan |
  r4. \vibA f4^\<\startTextSpan ~ ( |
  f^\> ~ \vibA << { f2\stopTextSpan\startTextSpan ~ |
  f2\stopTextSpan \glissando aes4 \glissando |
  \Point \vibB g8\startTextSpan [ f ] ees \unPoint ees4\stopTextSpan \glissando
  \point f8 [ f8-_ ] ) } { s4^\< s4^\> s2^\< s4^\f^\> s4. s4^\mp s4 } >> 
    \override Staff . BarLine #'Y-extent = ##f
    \override Staff . BarLine #'X-extent = ##f
    \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \set tupletFullLength = ##t \set tupletFullLengthNote = ##t
    \times 9/8 { e8 \glissando [ f-. ]
  e^\< \glissando [ f-_ ] e \glissando [ f-_ ] e \glissando [ f8-_ ] }
    \revert Staff . BarLine #'Y-extent
    \revert Staff . BarLine #'X-extent
    \unset tupletFullLength \unset tupletFullLengthNote
    % uggh...take care of broken
    ees2 \glissando ( |
  feh2^\f^\> \glissando \point ees8 [ ees ~ ] |
  ees4 ~ ees8 \glissando [ \Point ees8 ] ees [ ees ] |
  \unPoint des4.^\p ~ des8 ) r |
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \times 3/2 { f^\f [ g ] } f'8 ~ |
  f4 f,8 [ g ] \times 2/3 { f'4 f,8 ~ ( } |
  \times 2/3 { f g4 ) } fes'4 ( \glissando \point ees8 [ ees8-. ) ] |
  \times 2/3 { r4 fes8 ( \glissando } \Point fes8 ees8 [ \unPoint ees8-. ) ] |
  r8 \once \override RepeatTie #'X-extent = #'(-1.0 . 0) \ughScoop #-1.1 #0.3 e^\mf\repeatTie ~ ( e4 \glissando f \glissando |
  \Point f8 [ f ] f [ f] |
  ees [ \unPoint des8 ] ~ des4^\< \glissando |
  \Point ees8 [ ees ] \unPoint fes4 ) des8^\f r |
  << { g,4.^\mf^\< \glissando ( \point f8^\> [ f8 ) ] } { s8 \vibB s8\startTextSpan s4 s8\stopTextSpan } >> |
  r8\! g8^\< ( ~ g2 \glissando |
  \vibC aes4^\f\startTextSpan ) r4\stopTextSpan
    \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \once \override TupletNumber #'avoid-slur = #'outside
    % ugh...alterBroken doesn't work
    % try to implement this by hand...
    \once \override TupletBracket #'positions =
      #(lambda (grob)
         (coord-translate (ly:tuplet-bracket::calc-positions grob) '(0.5 . 0.5)))
    \once \override TupletBracket #'direction = #UP
    \once \override TupletNumber #'direction = #UP
    \times 3/4 {
      g4^\mf ( aes bes4. \times 2/3 { aes8 [ bes aes ] }
      g8 ~ g \times 2/3 { f8 [ g f ] }
      ees4 des c8 ~ c des4. ~ des4 ~
    }
  des8 ) r8 r4 |
  r4 des8^\f^\> [ ( ees f ] \times 5/4 { ges-_ [
  ges-_ ges-_ ges-_^\< ] } \times 56/13 { \once \override Beam #'grow-direction = #LEFT ges32-.^\markup \italic "getting primate" [ ges-. ges-. ges-.
  ges-. ges-. ges-. ges-.
  ges-. ges-_^\> ges-_ ges-_ ges-_ ] }
  aes4^\mp^\normale \glissando |
  \Point aes8 [ bes8 c8 ] \unPoint c4 ~ |
  c4 ~ c4 \glissando |
  \point aes8 [ aes ] ~ %{UGGGGHHHH%} %{\once \override TextSpanner #'extra-offset = #'(0 . -1.5)%} \vibB aes4\startTextSpan ) r4\stopTextSpan |
  f'4.^\mf^\espressivo r4 |
  g2.^\p \glissando ( |
  ees4 ~ ees2 \glissando |
  ces4^\dumb ) r8 aes'^\mf\glissando ( |
  f, ) r \times 6/5 { c'8 [ g ees c des
  ] } r8 |
  f4 ( ~ f16 [ \glissando ges ] ) r8 des4^\p^\< \glissando |
  f4.^\mf ( \glissando \vibB bes8\startTextSpan ~ |
  bes8 ) r\stopTextSpan beses2^\< ( \glissando |
  ees4.^\normale ~ ees8-.\! ) r16 bes'16^\subPd ^( |
  aes2 \glissando |
  \Point g8 [ f ] f [ ees ] \unPoint %{ \txK %} \vibB ees4^\espressivo\startTextSpan ) |
  r8\stopTextSpan des4 \glissando ( \Point c8 [ bes ] |
  aes8 \unPoint aes4. ~ |
  \vibA aes4.^^^\espressivo\startTextSpan ~ |
  << { aes2.\stopTextSpan ) | r4 } { s4.^\p^\< \hairtip s4.^\> s4\! } >>
  fes8^\mp ~ fes4^\espressivo |
  \cricket \times 3/2 { r8 \tri c^\f } r8 |
  r8 \tri c r4 r8 \tri c |
  r4 \times 2/3 { r8 \tri c4 } \saNormal fes8 ~ |
  fes8 fes'^\p ~ fes bes,8^\f \glissando ( |
  \Point ees8 [ ees ] \unPoint fes4. deses8 ~ |
  deses8 ) bes4 ~ bes^\> ~ |
  bes8^\p r8 \times 2/3 { r4 f'4^\mf ( c ) } |
  c,2.^\p^\< \glissando ^(  |
  \times 2/3 { \vibD fes4^\mf\startTextSpan ) aes8^\mp\stopTextSpan ~ ( } aes8 ~ aes4 |
  \times 3/4 { bes8 [ aes bes aes ) ] } r8 r4 |
  \times 2/3 { r2 aes'4-_ ( } \vibC aes,4^\espressivo\startTextSpan ~ |
  aes8-.\stopTextSpan ) r aes'-_^\p ( aes,4 ~ |
  \vibC aes4^\espressivo\startTextSpan ) r\stopTextSpan ces'8^\< [ ( \glissando des,, \glissando ] |
  \point ees^\> [ f8\! ) ] r8 c'' ~ ( |
  c8^\< \glissando [ \hairtip des,,^\> \glissando ] \Point des8 [ des ] des [ des ] \vibE \ttB \unPoint  |
  ees4.\startTextSpan ~ ees4 ) |
  r8\!\stopTextSpan << { c8 ~ c4 } { s4^\< s8^\pFdynamic } >> |
  r4\htB << { c2 } { s4.^\< s8\pFdynamic } >> |
  r4 \cricket \tri c2^\mp ~ |
  \tri c8 \saNormal b8 ( ~ b2 ~ |
  b2. ~ |
  b8 ~ [ \Air b8^\markup \italic "air" ] ~b4 ~ b8 ~ [ \unAir b8^\p^\markup \italic "pitch" ~ ] |
  b4 \glissando c8 ~ c4 ) |
  R2. |
  R2 |
  R2^\fermataMarkup |
}

sopranoWords = \lyricmode {
  Con -- chi -- ta
  Con -- chi -- ta
  Con -- chi -- ta
  a
  a a a a a
  Con -- chi
  Con -- chi
  Con -- chi
  chi
  chi -- ta
  Con
  Con
  Con
  Con
  a
  Con
  Con -- chi -- ta
  Con --  chi -- ta
  a
  a
  Con ch ch ch ch Con i chi -- ta
  Con -- chi -- ta
  a a a a
  ta ta t a
}

alto = \relative c' {
  \TXK
  \autoBeamOff
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2 |
  r4. ees8^\f ~ ees4 ~ |
  ees8 g8 ~ g2 ~ |
  \times 2/3 { g4 \hairtip f8^\> ^( \glissando } \Point f8 [ f ] |
  ees [ ees ] ees [ ees ] des [ des] |
  des [ \unPoint des\! ) ] r8 |
  R2. |
  r2 r8 ees8^\f ~ |
  ees2 ~ ees8 g8 ~ |
  g2 ~ |
  g8 \hairtip ges8^\> ~ ( ges2 ~ |
  ges4. \glissando \Point \noAcc g8 [ g ] |
  f [ f ] f [ f ] ees [ ees ] |
  ees [ ees ] des [ \unPoint des\! ] ) r4 |
  R2 |
  r4. des4^\f ( ees8 ) |
  \once \override TupletNumber #'avoid-slur = #'outside
  % ugh...alterBroken doesn't work
  % try to implement this by hand...
  \once \override TupletBracket #'positions =
    #(lambda (grob)
       (coord-translate (ly:tuplet-bracket::calc-positions grob) '(0.5 . 0.5)))
  \once \override TupletBracket #'direction = #UP
  \once \override TupletNumber #'direction = #UP
  \times 5/7 {
    aes4. ( \times 2/3 { g8 [ aes g ] }
    f4 \times 2/3 { ees8 [ f ees ] }
    des4 \times 2/3 { c8 [ des c ] }
    bes4 aes g ) aes ( ~ } |
  aes2.^\> \glissando |
  f2.^\mp \glissando |
  \Point aes8 [ aes ] bes [ bes ] \unPoint \vibA c2\startTextSpan^\< ~ |
  c4^\> ) r2\!\stopTextSpan |
  r4. \vibA ees4^\<\startTextSpan ~ ( |
  ees^\> ~ \vibA << { ees2\stopTextSpan\startTextSpan ~ |
  ees2\stopTextSpan \glissando f4 \glissando |
  \Point \vibB ees8\startTextSpan [ ees ] des \unPoint c4\stopTextSpan \glissando
  \point c8 [ des8-_ ] ) } { s4^\< s4^\> s2^\< s4^\f^\> s4. s4^\mp s4 } >> 
    \override Staff . BarLine #'Y-extent = ##f
    \override Staff . BarLine #'X-extent = ##f
    \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \set tupletFullLength = ##t \set tupletFullLengthNote = ##t
    \times 9/8 { c8 \glissando [ des-. ]
  c^\< \glissando [ des-_ ] c \glissando [ des-_ ] c \glissando [ des8-_ ] }
    \revert Staff . BarLine #'Y-extent
    \revert Staff . BarLine #'X-extent
    \unset tupletFullLength \unset tupletFullLengthNote
    % uggh...take care of broken
    c2 \glissando ( |
  des2.^\f^\> \glissando |
  \Point bes8 [ bes8 ] aes [ \unPoint aes^\p ~ ] aes4 ~ |
  aes8 ) r4 r4 |
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \times 3/2 { des8^\f [ ees ] } c'8 ~ |
  c4 c,4 \times 2/3 { c'4 c,8 ~ } |
  c4 c'4 ( \glissando \point c8 [ b8-. ) ] |
  \times 2/3 { r4 c8 ( \glissando } \Point c8 bes8 [ \unPoint b8-. ) ] |
  r8 b^\mf ( \glissando \point b [ c ~ ] c4 \glissando |
  \Point bes8 [ bes ] bes [ bes ] |
  aes [ aes ] aes [ g ]
  g8 [ \unPoint g ~ ]  g4 ) g8^\f r |
  eih4.^\mf^\< \glissando ( \point f8^\> [ f8 ) ] |
  r8\! eih8^\< (\glissando \point f [ f ] \glissando \Point eih [ eih ] |
  \unPoint ees4^\f ) r8 r4 |
  ees8 ^( \glissando [ f ] ees2 ~ |
  ees2.\glissando |
  \Point c8 [ bes bes ] bes [ \unPoint bes ~ ] |
  bes4 ) r |  
  r4 ces8^\f^\> [ ^( des d ] \times 5/4 { ees-_ [
  ees-_ ees-_ ees-_^\< ] } \times 56/13 { \once \override Beam #'grow-direction = #LEFT ees32-.%{^\markup \italic "getting primate" %} [ ees-. ees-. ees-.
  ees-. ees-. ees-. ees-.
  ees-. ees-_^\> ees-_ ees-_ ees-_ ] }
  ees4^\mp%{^\markup \italic "normale..." %}\glissando |
  \Point ees8 [ ees8 f8 ] \unPoint f4 ~ |
  f4 ~ f4 \glissando |
  \point c8 [ c ] ~ c4 \glissando des8 ) r8  |
  ees'4.^\mf^\espressivo r4 |
  f2.^\p \glissando ( |
  c2 ~ \ttB \vibC c4^\espressivo\startTextSpan ) |
  r4\stopTextSpan r8 c^\mf %{^\markup \italic \column { "dumb, with" "unbridled love" }%} \glissando ( |
  f, ) r ges4 ( f
  ees ) r8 |
  ees8 ( ~ ees8 [ \glissando f ] ) r8 fes4^\p |
  r8 e4.^\mf ( \glissando |
  f8 ) r ges2^\< ( \glissando |
  \Point aes8 [ aes ] \unPoint \vibD bes8\startTextSpan ~ [ bes8-.\! ] ) r8\stopTextSpan |
  c2 ^( \glissando |
  \Point g8 [ f ] f [ ees ] \unPoint %{ \txK %} aes4^\espressivo ) |
  r8 ees4 \glissando ^( \Point ees8 [ des ] |
  des8 [ \unPoint des8 \glissando ] \Point des [ des ] |
  \unPoint ees4. |
  \hairtip des2.^\p^\> \glissando |
  ces8\! ) r8 ces8^\mp ~ ces4^\espressivo |
  \cricket \times 3/2 { r8 \tri c^\f } r8 |
  r8 \tri c r4 r8 \tri c |
  r4 \times 2/3 { r8 \tri c4 } \saNormal ces8 ~ |
  ces8 des'^\p ~ des aes8^\f \glissando ( |
  \Point aes8 [ aes ] \unPoint bes4. \glissando aes8 ~ |
  aes8 ) fes4 ~ fes^\> ~ |
  fes8^\p r8 \times 2/3 { r4 c'4^\mf ( aes ) } |
  des,2.^\p^\< ~ |
  \times 2/3 { des4^\mf ees8^\mp ~ } \vibC ees\startTextSpan ~ ees4 ~ |
  ees4.^\subPd^\<\stopTextSpan r8\pFdynamic r4 |
  \times 2/3 { r2 fes4-_ ( } \vibC ees4^\espressivo\startTextSpan ~ |
  ees8-.\stopTextSpan ) r fes-_^\p ( ees4 ~ |
  \vibC ees4^\espressivo\startTextSpan ) r\stopTextSpan aes'8^\< [ ( \glissando c,, \glissando ] |
  \point des^\> [ d8\! ) ] r8 aes'' ~ ( |
  aes8^\< \glissando [ \hairtip c,,^\> \glissando ] \Point des8 [ des ] des [ des ] \vibF \ttB \unPoint  |
  des4.\startTextSpan ) r4\!\stopTextSpan |
  r8 << { c8 ~ c4 } { s4^\< s8^\pFdynamic } >> |
  r4\htB << { c2 } { s4.^\< s8\pFdynamic } >> |
  r2 aes4^\mp ~ ( |
  aes2. \glissando |
  \Point aes8 [ aes ] aes8 [ bes ] bes8 [ bes ] |
  \unPoint b4 ) r2 |
  r4. bes4^\p |
  R2. |
  R2 |
  R2^\fermataMarkup |
}

altoWords = \lyricmode {
  Con -- chi -- ta
  Con -- chi -- ta
  Con -- chi -- ta
  a
  a a a a a
  Con -- chi
  Con -- chi
  Con -- chi
  chi
  chi -- ta
  Con
  Con
  Con
  Con
  a
  Con
  Con -- chi -- ta
  Con --  chi -- ta
  a
  a
  Con ch ch ch ch Con i chi -- ta
  Con -- chi -- ta
  a a a a
  ta ta ta a
}

tenor = \relative c' {
  \TXK
  \autoBeamOff
  \clef "treble_8"
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2. |
  R2 |
  r4. des8^\f ( c4 ~ |
  c8 ) ees8 ~ ees2 ~ |
  \times 2/3 { ees4 \hairtip \scoop #0.5 des8\repeatTie^\> ^( \glissando } \Point des8 [ des ] |
  c [ c ] c [ c ] bes [ bes ] |
  bes [ aes aes ] |
  \once \override Hairpin #'to-barline = ##f
  \unPoint aes8 ) r8\! r2 |
  r2 r8 des8^\f ~ |
  des2 ~ des8 ees8 ~ |
  ees2 ~ |
  ees8 \hairtip f8^\> ~ ( f2 ~ |
  f4. \glissando \Point \noAcc f8 [ f ] |
  ees [ ees ] ees [ des ] des [ des ] |
  c [ c ] bes [ \unPoint bes\! ] ) r4 |
  R2 |
  r4. bes4^\f ( c8 ) |
  \once \override TupletNumber #'avoid-slur = #'outside
  % ugh...alterBroken doesn't work
  % try to implement this by hand...
  \once \override TupletBracket #'positions =
    #(lambda (grob)
       (coord-translate (ly:tuplet-bracket::calc-positions grob) '(0.5 . 0.5)))
  \once \override TupletBracket #'direction = #UP
  \once \override TupletNumber #'direction = #UP
  \times 5/7 {
    ees4. ( \times 2/3 { des8 [ ees des ] }
    c4 \times 2/3 { bes8 [ c bes ] }
    aes4 \times 2/3 { g8 [ aes g ] }
    f4 ees f ) ges ( ~ } |
  ges2.^\> \glissando |
  \Point ees8 [ ees ] des [ des ] c [ c ] |
  bes8 [ bes ] aes [ aes ] \unPoint \vibA aes2\startTextSpan^\< ~ |
  aes4^\> ) r2\!\stopTextSpan |
  r4. \vibA c'4^\<\startTextSpan ~ ( |
  c^\> ~ \vibA << { c2\stopTextSpan\startTextSpan ~ |
  c2\stopTextSpan \glissando ees4 \glissando |
  \Point ees8 [ des ] c \unPoint b4 \glissando
  \point b8 [ c8-_ ] ) } { s4^\< s4^\> s2^\< s4^\f^\> s4. s4^\mp s4 } >> 
    \override Staff . BarLine #'Y-extent = ##f
    \override Staff . BarLine #'X-extent = ##f
    \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \set tupletFullLength = ##t \set tupletFullLengthNote = ##t
    \once \override TupletBracket #'direction = #UP
    \once \override TupletNumber #'direction = #UP
    \times 9/8 { b4
      b4-_^\< b-_ b-_ }
    \revert Staff . BarLine #'Y-extent
    \revert Staff . BarLine #'X-extent
    \unset tupletFullLength \unset tupletFullLengthNote
    % uggh...take care of broken
    \times 2/3 { b4 \glissando ( c \glissando b \glissando } |
  c2.^\f^\> \glissando |
  \Point bes8 [ bes8 ] aes [ aes ] g [ g ] |
  \unPoint ges4.^\p ) r4 |
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \times 3/2 { ees8^\f [ f ] } aes8 ~ |
  aes4 ees4 \times 2/3 { aes4 ees8 ~ } |
  ees4 aes,4 ( \glissando \point aes8 [ ges8-. ) ] |
  \times 2/3 { r4 aes8 ( \glissando } \Point aes8 aes8 [ \unPoint ges8-. ) ] |
  r8 aes^\mf ~ ( aes4 \glissando bes \glissando |
  \Point bes8 [ bes ] aes [ aes ] |
  f [ \unPoint fis8 ] ~ fis4^\< \glissando |
  \Point g8 [ g ] \unPoint g4 ) g8^\f r |
  aes4.^\mf^\< ~ aes4^\> |
  r8\! aes8^\< (\glissando \point bes [ bes ] \glissando \Point aes [ aes ] |
  \unPoint aes4^\f ) r8 r8 aes ~ |
  aes4. ^( \glissando aes'8 ~ aes4 \glissando |
  aes2\glissando des4 ~ |
  des4. ~ des4 \glissando |
  c4 ) r |  
  r4 aes8^\f^\> [ ^( bes b ] \times 5/4 { c-_ [
  c-_ c-_ c-_^\< ] } \times 56/13 { \once \override Beam #'grow-direction = #LEFT c32-.%{^\markup \italic "getting primate" %} [ c-. c-. c-.
  c-. c-. c-. c-.
  c-. c-_^\> c-_ c-_ c-_ ] }
  des4^\mp%{^\markup \italic "normale..." %} \glissando |
  \Point des8 [ ees8 ees8 ] \unPoint ees4 ~ |
  ees4 ~ ees4 \glissando |
  \point c8 [ c ] ~ c4 \glissando bes8 ) r8  |
  des'4.^\mf^\espressivo r4 |
  c2.^\p \glissando ( |
  aes4 ~ aes4 \glissando f ) |
  r4 r8 bes^\mf %{^\markup \italic \column { "dumb, with" "unbridled love" }%} \glissando ( |
  ees, ) r c2 ( ~ |
  c8 bes ) r8 |
  c8 ( ~ c8 [ \glissando ees ] ) r8 ees4^\p |
  r4 e4^\mf ~ |
  e8 r ees2^\< \glissando ( |
  \Point aes8 [ aes ] bes [ \unPoint b8-.\! ] ) r8 |
  r8 ees,8 ~ ees4 ^( \glissando |
  \Point ees8 [ ees ] ees [ des ] \unPoint %{ \txK %} des4^\espressivo ) |
  r4 bes8 \glissando ^( \Point bes8 [ bes ] |
  aes8 [ aes8 ] aes [ g ] |
  \unPoint g4. ) |
  \times 2/3 { r4 f8^\p ~ } f2 |
  r4 aes8^\mp ~ aes4^\espressivo |
  \cricket \times 3/2 { r8 \tri c^\f } r8 |
  r8 \tri c r4 r8 \tri c |
  r4 \times 2/3 { r8 \tri c4 } \tNormal aes8 ~ |
  aes8 g'^\p ~ g g8^\f \glissando ( |
  \Point g [ g ] \unPoint aes4. ) << { d,8^\< ~ |
  d4. ~ d4 | r4 } { s2^\< s4^\> s4\! } >>
     \times 2/3 { r4 g4^\mf ( ees ) } |
  bes2.^\p^\< \glissando ( |
  \times 2/3 { aes4^\mf ) aes8^\mp ~ } aes ~ aes4 ~ |
  aes4. r8 r4 |
  r2 bes8 ( \vibD aes8^\espressivo\startTextSpan ~ |
  aes8-.\stopTextSpan ) r4 aes4 ( ~ |
  \vibC aes4^\espressivo\startTextSpan ) r\stopTextSpan ees''8^\< [ ( \glissando c, \glissando ] |
  \point c^\> [ bes8\! ) ] r8 ees' ~ ( |
  ees8^\< \glissando [ \hairtip c,^\> \glissando ] \Point c8 [ bes ] \unPoint bes8 [ aes,8^\mf ~ ] |
  aes4. ) r4 |
  r8 << { aes'8 ~ aes4 } { s4^\< s8^\pFdynamic } >> |
  r4\htB << { aes2 } { s4.^\< s8\pFdynamic } >> |
  r2 ges4^\mp ~ ( |
  ges2. \glissando |
  \Point g8 [ g ] g8 [ g ] f8 [ f ] |
  \unPoint f2. ~ |
  f4. \glissando ges4^\p ) |
  R2. |
  R2 |
  R2^\fermataMarkup |
}

tenorWords = \lyricmode {
  Con -- chi -- ta
  Con -- chi -- ta
  Con -- chi -- ta
  a
  a a a a a
  Con -- chi
  Con -- chi
  Con -- chi
  chi
  chi -- ta
  Con
  Con
  Con
  Con
  a
  Con
  Con -- chi -- ta
  Con --  chi -- ta
  a
  a
  a
  Con ch ch ch ch Con i chi -- ta
  Con -- chi -- ta
  a a a a
  ta ta ta
}

bass = \relative c' {
  \clef "treble_8"
  f8^\markup \italic "motlo wah-wah"^\mf aes, c ees aes f |
  aes, c ees aes r4^\fermata |
  f8 aes, c ees aes f |
  aes, c ees aes r4 |
  f8 aes, c ees aes f |
  aes, c ees aes r4 |
  f8 aes, c ees aes f |
  aes, c ees aes %{\footnote #"" #'(0 . 0) #"Quarter notes at end of measures should be shortened a bit." %} r4 |
  aes,8 c ees r |
  f8 aes, c ees aes f |
  aes, c ees aes r4 |
  f8 aes, c r8 |
  f8 aes, c ees aes f |
  aes, des r
  ees aes, c ees r4 |
  f8 aes, c ees aes f |
  aes, c ees aes r4 |
  f8 aes, c r8 |
  f8 aes, c ees aes f |
  aes, c ees aes f8 |
  ees aes, c ees aes f |
  aes, c ees aes r4 |  
  f8 aes, c r8 |
  f8 aes, c ees aes f |
  aes, c ees aes r8 |
  f8 aes, des r8 |
  f8 aes, c ees aes f |
  aes, c ees aes r4 |  
  f8 aes, c ees aes f |
  aes, c ees aes r4 %{cut in audio %} aes,8 c |
  f8 aes, c ees aes f |
  aes, c ees aes r8 |
  f8 aes, c ees aes r |
  f8 aes, c ees aes f |
  aes, c ees aes r8 |
  aes, c ees r8 |
  f8 aes, c ees aes f |
  aes, c ees aes f |  
  f8 aes, c ees aes r8 |
  f8 aes, c ees aes f |
  aes, c ees aes r |  
  aes, c ees r8 |
  f8 aes, c ees aes r |
  f8 aes, c ees aes f |
  aes, c ees aes r |  
  f8 aes, c ees aes f |
  aes, c ees r |
  f aes, d r |
  f8 aes, c ees aes f |
  aes, c ees aes r |  
  f8 aes, c ees aes f |
  aes, c ees aes f |  
  f8 aes, c ees aes r |
  f8 aes, c ees aes f |
  aes, c ees aes r |  
  f aes, des r |
  f8 aes, c ees \footnote #"" #'(0 . 0) #"Only Zelenka would be so fucking cruel." a^"*" f |
  aes, c ees aes r |
  f aes, c r |
  f8 aes, c ees aes |
  f8 aes, c ees aes f |
  aes, c ees aes r8 |
  f aes, c r |
  f8 aes, c ees aes f |
  aes, c ees aes f |
  f aes, c ees aes r8 |
  f aes, c ees aes f |
  f aes, des r |
  f aes, c ees aes r8 |
  f aes, d
  f aes, c ees aes r |
  f aes, des r |
  f8 aes, c ees aes f |
  aes, c ees aes r |
  f aes, des r |
  f8 aes, c ees aes f |
  aes, c ees aes r |
  f aes, des r |
  f aes, des |
  f8 aes, c ees aes f |
  aes, c ees aes f |
  f aes, des r |
  f8 aes, c ees aes f |
  aes, c ees aes r |
  f aes, d r |
  f8 aes, c ees aes f |
  aes, c ees aes f |
  f8 aes, c ees aes r8 |
  f8 aes, c ees aes f |
  aes, c ees aes f |
  f8 aes, c ees aes r8 |
  f8 aes, c ees aes f |
  aes, c ees aes f |
  f8 aes, c ees aes r8 |
  f aes, des r |
  f8 aes, c ees aes f |
  aes, c ees aes f |
  f aes, des r |
  f8 aes, c ees aes f |
  f8 aes, c ees aes r |
  f8 aes, c ees aes f |
  f8 aes, c ees aes r8 |
  f8 aes, c ees aes f |
  aes, c ees aes r8 |
  f8 aes, c ees aes f |
  aes, c ees r8 |
  f aes, c r8^\fermata \bar "|."
}
 
bassWords = \lyricmode {
}

\score {
  \new ChoirStaff <<
    \new Staff = "sopstaff" <<
      \set Staff.instrumentName = #"Elsa"
      \new Voice = "soprano" {
        << { \globals \soprano } \marks >>
      }
      \lyricsto "soprano" \new Lyrics { \sopranoWords }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Marie"
      \new Voice = "alto" {
        \globals \alto
      }
      \lyricsto "alto" \new Lyrics { \altoWords }
    >>
    \new Staff = "tenstaff" <<
      \set Staff.instrumentName = #"Ryan"
      \new Voice = "tenor" {
        \globals \tenor
      }
      \lyricsto "tenor" \new Lyrics { \tenorWords }
    >>
    \new Staff <<
      \set Staff.instrumentName = #"Mike"
      \new Voice = "bass" {
        \globals \bass
      }
      \lyricsto "bass" \new Lyrics { \bassWords }
    >>
  >>
  \layout {
%  \context { \Score \override NonMusicalPaperColumn #'allow-loose-spacing = ##f }
   \context {
     \Voice
     \remove "Forbid_line_break_engraver"
     \override Beam #'breakable = ##t
     \override Glissando #'breakable = ##t
     \override TupletBracket #'breakable = ##t
     \override TupletNumber #'breakable = ##t
     \override TextScript #'layer = #5
   }
    \context {
      \Staff
      \override TimeSignature #'style = #'numbered
      \override StaffSymbol #'layer = #4
      \override TimeSignature #'layer = #3
      \override TimeSignature #'whiteout = ##t
    }
    \context {
      \Lyrics
      \override LyricText #'layer = #5
      \override LyricHyphen #'layer = #5
    }
    \context {
      \TabStaff
      \override TimeSignature #'style = #'numbered
    }
  }
\midi{}
}

