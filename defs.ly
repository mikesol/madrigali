%%%%%%%%%%%%%%%%%%
%% manual hacks %%
%% stencil.scm :: make-connected-path-stencil-with-initial-offset

%%%%%%%%%%
%% UGLY %%
%\include "ugly.ly"
%%%%%%%%%%

\include "bezier-tools.ly"
\include "mididefs.ly"
\include "sperm.ly"
\include "shameless-copying.ly"
\include "vibster.ly"

noAcc = \once \override Accidental #'stencil = ##f
wavygliss = \once \override Glissando #'style = #'zigzag

#(define (broken-tuplet-text grob l)
  (define (helper gl l)
    (if (eqv? (car gl) grob)
        (car l)
        (helper (cdr gl) (cdr l))))
  (helper (ly:spanner-broken-into (ly:grob-original grob)) l))

bendInto = \once \override BendAfter #'stencil = #bend-into::print 
ziggliss = \once \override Glissando #'style = #'zigzag
glisslen =
#(define-music-function (parser location n) (number?)
#{
  \once \override Glissando #'minimum-length = #$n
  \once \override Glissando #'springs-and-rods = #ly:spanner::set-spacing-rods
#})

hairlen =
#(define-music-function (parser location n) (number?)
#{
  \once \override Hairpin #'minimum-length = #$n
  \once \override Hairpin #'springs-and-rods = #ly:spanner::set-spacing-rods
#})

% already in 2.15, but copied here to work in 2.14
#(define (insert-markups l m)
  (let ((ll (reverse l)))
    (let join-markups ((markups (list (car ll)))
                       (remaining (cdr ll)))
      (if (pair? remaining)
          (join-markups (cons (car remaining) (cons m markups)) (cdr remaining))
          markups))))

%%% Use a centered-column inside a left-column, because the centered column
%%% moves its reference point to the center, which the left-column undoes.
#(define (format-time-fraction time-sig-fraction)
  (let* ((revargs (reverse (map number->string time-sig-fraction)))
         (den (car revargs))
         (nums (reverse (cdr revargs))))
    (make-override-markup '(baseline-skip . 0)
      (make-number-markup
        (make-left-column-markup (list
          (make-center-column-markup (list
            (make-line-markup (insert-markups nums "+"))
            den))))))))

#(define (format-complex-compound-time time-sig)
  (make-override-markup '(baseline-skip . 0)
    (make-number-markup
      (make-line-markup
        (insert-markups (map format-time-fraction time-sig)
                        (make-vcenter-markup "+"))))))

#(define (format-compound-time time-sig)
  (cond
    ((not (pair? time-sig)) (null-markup))
    ((pair? (car time-sig)) (format-complex-compound-time time-sig))
    (else (format-time-fraction time-sig))))


question = \once \override Score . TimeSignature #'stencil = #(lambda (grob) (grob-interpret-markup grob (markup #:override '(baseline-skip . 0) (#:column (#:huge #:bold "?" #:number "4")))))

air = { \once \override NoteHead #'stencil = %#(lambda (grob) (grob-interpret-markup grob (markup "○")))
#(lambda (grob) (grob-interpret-markup grob (markup #:draw-circle 0.5 0.1 #f)))
\once \override NoteHead #'style = #'mensural
}

compoundMeter =
#(define-music-function (parser location args) (pair?)
  (_i "Create compound time signatures. The argument is a Scheme list of
lists. Each list describes one fraction, with the last entry being the
denominator, while the first entries describe the summands in the
enumerator. If the time signature consists of just one fraction,
the list can be given directly, i.e. not as a list containing a single list.
For example, a time signature of (3+1)/8 + 2/4 would be created as
@code{\\compoundMeter #'((3 1 8) (2 4))}, and a time signature of (3+2)/8
as @code{\\compoundMeter #'((3 2 8))} or shorter
@code{\\compoundMeter #'(3 2 8)}.")
  (let* ((mlen (calculate-compound-measure-length args))
         (beat (calculate-compound-base-beat args))
         (beatGrouping (calculate-compound-beat-grouping args))
         (timesig (cons (ly:moment-main-numerator mlen)
                        (ly:moment-main-denominator mlen))))
  #{
    \once \override Score.TimeSignature #'stencil = #(lambda (grob)
                (grob-interpret-markup grob (format-compound-time $args)))
    \set Timing.timeSignatureFraction = $timesig
    \set Timing.baseMoment = $beat
    \set Timing.beatStructure = $beatGrouping
    \set Timing.beamExceptions = #'()
    \set Timing.measureLength = $mlen
  #} ))

#(define (rand-me b e)
  (+ b (/ (* (random 10000) (- e b)) 10000)))

#(define (bendy grob)
  (let* ((y0 (rand-me 1 4))
         (x1 (rand-me -1.5 1.5))
         (y1 (rand-me 1 2))
         (x2 (rand-me -1.5 1.5))
         (y2 (rand-me 1 2)))
    (make-connected-path-stencil `((0.0 ,y0 ,x1 ,(+ y0 y1) ,(+ x1 x2) ,(+ y0 y1 y2))) 0.1 0.5 1.0 #f #f)))

#(define (brown-me l n)
  (if (>= 0 n)
      l
      (brown-me (cons (map (lambda (x) (+ x (rand-me -2 2))) (car l)) l) (1- n))))

#(define (cloud grob)
  (make-connected-path-stencil (brown-me '((0.0 0.0 0.0 0.0 0.0 0.0)) 20) 0.05 0.5 1.0 #f #f))

slash = \once \override NoteHead #'style = #'slash
cross = \once \override NoteHead #'style = #'cross
tri = \once \override NoteHead #'style = #'triangle
xCircle = \once \override NoteHead #'style = #'xcircle

lyrRot = \once \override LyricText #'stencil = #(lambda (grob) (ly:stencil-rotate (ly:text-interface::print grob) 180 0 0))

noTime = \once \override Score . TimeSignature #'stencil = ##f
noHead = \once \override NoteHead #'transparent = ##t

barStub = {
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \override Staff . BarLine #'Y-extent = #'(-1 . 1)
}

unBarStub = {
  \revert Staff . BarLine #'bar-extent
  \revert Staff . BarLine #'Y-extent
}

rTrans = \once \override Rest #'transparent = ##t

lyricsUp =
#(define-music-function (parser location n) (number?)
#{
  \override LyricText #'cross-staff = ##t
  \override LyricText #'Y-offset = #$n
  \override LyricText #'whiteout = ##t
  \override LyricHyphen #'cross-staff = ##t
  \override LyricHyphen #'Y-offset = #$n
  \override LyricHyphen #'whiteout = ##t
#})

lyricsNormal = {
  \revert LyricText #'cross-staff
  \revert LyricText #'Y-offset
  \revert LyricText #'whiteout
  \revert LyricHyphen #'cross-staff
  \revert LyricHyphen #'Y-offset
  \revert LyricHyphen #'whiteout
}

longFermataMarkup =
#(make-music 'MultiMeasureTextEvent
             'tweaks (list
                      ;; Set the 'text based on the 'direction
                      (cons 'text (lambda (grob)
                                    (if (eq? (ly:grob-property grob 'direction) DOWN)
                                        (markup #:musicglyph "scripts.dlongfermata")
                                        (markup #:musicglyph "scripts.ulongfermata"))))
                      (cons 'outside-staff-priority 40)
                      (cons 'outside-staff-padding 0)))

sustainG = {
  \override Glissando #'thickness = #4
  \override Glissando #'bound-details #'left #'padding = #0.5
  \override Glissando #'bound-details #'right #'padding = #0
}

miniSustainG = {
  \override Glissando #'thickness = #4
  \override Glissando #'bound-details #'left #'padding = #0.5
  \override Glissando #'bound-details #'right #'padding = #0.5
}

tightG = {
  \override Glissando #'bound-details #'left #'padding = #0
  \override Glissando #'bound-details #'right #'padding = #0
}

normalG = {
  \revert Glissando #'thickness
  \revert Glissando #'bound-details #'left #'padding
  \revert Glissando #'bound-details #'right #'padding
}

speaking = {
  \stopStaff
  \override Staff . StaffSymbol #'line-count = #1
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \startStaff
  \override NoteHead #'style = #'mensural
  \override Stem #'flag-style = #'mensural
  \override NoteHead #'no-ledgers = ##t
  %\override Rest #'style = #'mensural
  \set melismaBusyProperties = #'(tieMelismaBusy beamMelismaBusy)
  \autoBeamOff
  %\stemUp
  \clef percussion
}

monologue = {
  \stopStaff
  \override Staff . StaffSymbol #'line-count = #1
  \override DynamicText #'outside-staff-priority = ##f
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \startStaff
  \autoBeamOff
  \hideNotes
  \override Stem #'stencil = ##f
  \stemUp
  \clef percussion
}

bedlem = {
  \stopStaff
  \override Staff . StaffSymbol #'line-count = #1
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \startStaff
  \autoBeamOff
  \stemUp
  \override NoteHead #'style = #'slash
  \override NoteHead #'no-ledgers = ##t
  \clef percussion
}

tictoc = {
  \stopStaff
  \override Staff . StaffSymbol #'line-positions = #'(-2 2)
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \startStaff
  \unHideNotes
  \revert Stem #'stencil
  \override NoteHead #'style = #'cross
  \set melismaBusyProperties = #'(tieMelismaBusy)
  \clef percussion
}

stemTrans = {
  \override Stem #'stencil = ##f
}

unStemTrans = {
  \revert Stem #'stencil
}

noLed = {
  \override NoteHead #'no-ledgers = ##t
}

noTr = \once \override TrillSpanner #'bound-details #'left #'text = ##f
swung = \markup \italic "swung"
straight = \markup \italic "straight"

cricket = {
  \revert Stem #'stencil
  \revert Accidental #'stencil
  \override Accidental #'stencil = ##f
  \stopStaff
  \override Staff . StaffSymbol #'line-count = #1
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \startStaff
  \override NoteHead #'style = #'harmonic-mixed
  \override NoteHead #'no-ledgers = ##t
  \set melismaBusyProperties = #'(tieMelismaBusy beamMelismaBusy)
  \autoBeamOff
  \clef percussion
  \stemUp
  \revert TupletNumber #'text
  \revert TupletNumber #'Y-offset
%  \set Staff.dynamicAbsoluteVolumeFunction  = #(lambda (dyn) 0.0)
}

nothing = {
  \stopStaff
  \override Staff . StaffSymbol #'line-count = #0
  \override Staff . BarLine #'bar-extent = #'(-1 . 1)
  \startStaff
  \set melismaBusyProperties = #'(tieMelismaBusy beamMelismaBusy slurMelismaBusy)
}

feelingLucky = {
  \stopStaff
  \once \override Staff . StaffSymbol #'line-positions = #'(-4 4) 
  \startStaff
  \override Stem #'stencil = ##f
  %\override Flag #'stencil = ##f
  \override NoteHead #'no-ledgers = ##t
  \set tupletFullLength = ##t  
  \override TupletNumber #'text = #(markup #:note "4" UP)
  \override TupletNumber #'Y-offset = #1
  \override TupletBracket #'bracket-visibility = ##t  
  \override TupletBracket #'direction = #UP
  \override Accidental #'stencil = ##f
}

stemInv = \once \override Stem #'transparent = ##t

goalposts = {
  \stopStaff
  \once \override Staff . StaffSymbol #'line-positions = #'(-4 4) 
  \startStaff
  \override NoteHead #'no-ledgers = ##t
}

berioGoalposts = {
  \stopStaff
  \once \override Staff . StaffSymbol #'line-positions = #'(-4 0 4) 
  \startStaff
  \override NoteHead #'no-ledgers = ##t
}

normal = {
  \stopStaff
  \revert Accidental #'stencil
  \revert DynamicText #'outside-staff-priority
  \revert Staff . StaffSymbol #'line-count
  \revert Staff . StaffSymbol #'line-positions
  \revert Staff . BarLine #'bar-extent
  \startStaff
  \revert NoteHead #'style
  \revert TupletNumber #'text
  \revert TupletNumber #'Y-offset
  \revert TupletBracket #'bracket-visibility
  \unset tupletFullLength
  \revert Stem #'flag-style
  \revert Stem #'stencil
  \revert NoteHead #'no-ledgers
  \unHideNotes
  \revert Stem #'direction
  \stemNeutral
%  \unset Staff.dynamicAbsoluteVolumeFunction
  \set melismaBusyProperties = #'(tieMelismaBusy beamMelismaBusy slurMelismaBusy)
}

saNormal = { \clef treble \normal }
tNormal = { \clef "treble_8" \normal }
bNormal = { \clef bass \normal }

subF = \markup { \center-align \concat {
\normal-text { \bold { \italic sub } }
\dynamic f } }

subFdynamic = #(make-dynamic-script subF)

subP = \markup { \center-align
\normal-text { \italic { \italic sub } }
\dynamic p }

subPd = #(make-dynamic-script subP)

fppInternal = \markup { \center-align
\dynamic "fpp" }

fpp = #(make-dynamic-script fppInternal)

fatText = {
  \once \override TextScript #'extra-spacing-width = #'(0 . 0)
  \once \override TextScript #'Y-offset = #0
  \once \override TextScript #'outside-staff-priority = ##f
  \once \override TextScript #'self-alignment-X = #LEFT
  \once \override TextScript #'font-size = #1
}

monoShift = {
  \once \override TextScript #'Y-offset = #-0.5 % #(lambda (grob) (- (* 0.5 (interval-length (ly:grob::stencil-height grob)))))
}

FatTextManual =
#(define-music-function (parser location p) (pair?)
#{
  \override TextScript #'extra-spacing-width = #$p
  \override TextScript #'Y-offset = #0
  \override TextScript #'outside-staff-priority = ##f
  \override TextScript #'self-alignment-X = #LEFT
  \override TextScript #'font-size = #1
#})

FatText = { \FatTextManual #'(0 . 0) }

MonoShift = {
  \override TextScript #'Y-offset = #-0.5 % #(lambda (grob) (- (* 0.5 (interval-length (ly:grob::stencil-height grob)))))
}

unFatText = {
  \revert TextScript #'extra-spacing-width
  \revert TextScript #'Y-offset
  \revert TextScript #'outside-staff-priority
  \revert TextScript #'self-alignment-X
  \revert TextScript #'font-size
}

unMonoShift = {
  \revert TextScript #'Y-offset
}

#(define (define-grob-property symbol type? description)
  (if (not (equal? (object-property symbol 'backend-doc) #f))
      (ly:error (_ "symbol ~S redefined") symbol))

  (set-object-property! symbol 'backend-type? type?)
  (set-object-property! symbol 'backend-doc description)
  symbol)

#(define-grob-property 'buddies list? "List of grobs")
#(define-grob-property 'my-name symbol? "List of grobs")
#(define-grob-property 'searching list? "List of grobs")

%%%%%%%%%%%%%%%%%
%% HAIRY STUFF %%
%%%%%%%%%%%%%%%%%

#(define (sinusoid thick x1 y1 x2 y2) ;(format #t "info ~a ~a ~a ~a\n" x1 y1 x2 y2)
  (let ((half-x (/ (- x2 x1) 2))
        (half-y (/ (- y2 y1) 2)))
  (ly:stencil-add
    (ly:stencil-translate
      (make-connected-path-stencil `((0.33 ,(/ 3.1416 6.0) 0.66 1. 1. 1.)) thick (- half-x) (- half-y) #f #f)
      (cons half-x half-y))
    (ly:stencil-translate
      (make-connected-path-stencil `((0.33 ,(/ 3.1416 6.0) 0.66 1. 1. 1.)) thick half-x half-y #f #f)
      (cons (interval-center (if (< half-x 0) (cons x2 x1) (cons x1 x2))) (interval-center (if (< half-y 0) (cons y2 y1) (cons y1 y2))))))))

#(define (royal-hack sym)
  (lambda (grob) ;(format #t "SYM ~a ~a\n" sym (ly:grob-property grob 'buddies))
    (if (null? (ly:grob-property grob 'buddies))
        #f
       (if (not (ly:grob-common-refpoint grob (assoc-get sym (ly:grob-property grob 'buddies)) Y))
         #f
         (let* ((buddy (assoc-get sym (ly:grob-property grob 'buddies)))
                (refpy (ly:grob-common-refpoint grob buddy Y))
                (cy1 (ly:grob-relative-coordinate grob refpy Y))
                (cy2 (ly:grob-relative-coordinate buddy refpy Y))
                (refpx (ly:grob-common-refpoint grob buddy X))
                (cx1 (ly:grob-relative-coordinate grob refpx X))
                (cx2 (ly:grob-relative-coordinate buddy refpx X)))
     ;(format #t "goods ~a ~a ~a ~a ~a\n" cx1 cx2 cy1 cy2 refpx)
          (ly:stencil-add
            (ly:stencil-translate-axis (sinusoid 0.1 0 0 (- cx2 cx1) (- (- cy2 cy1) 2)) 2 Y)
            (ly:stencil-translate-axis (sinusoid 0.1 0 0 (- cx2 cx1) (- (- cy2 cy1) 1)) 1 Y)
            (sinusoid 0.1 0 0 (- cx2 cx1) (- cy2 cy1))
            (ly:stencil-translate-axis (sinusoid 0.1 0 0 (- cx2 cx1) (+ (- cy2 cy1) 1)) -1 Y)
            (ly:stencil-translate-axis (sinusoid 0.1 0 0 (- cx2 cx1) (+ (- cy2 cy1) 2)) -2 Y)))))))

#(define (royal-hack-single sym)
  (lambda (grob) ;(format #t "SYM ~a ~a\n" sym (ly:grob-property grob 'buddies))
    (if (null? (ly:grob-property grob 'buddies))
        #f
       (if (not (ly:grob-common-refpoint grob (assoc-get sym (ly:grob-property grob 'buddies)) Y))
         #f
         (let* ((buddy (assoc-get sym (ly:grob-property grob 'buddies)))
                (refpy (ly:grob-common-refpoint grob buddy Y))
                (cy1 (ly:grob-relative-coordinate grob refpy Y))
                (cy2 (ly:grob-relative-coordinate buddy refpy Y))
                (refpx (ly:grob-common-refpoint grob buddy X))
                (cx1 (ly:grob-relative-coordinate grob refpx X))
                (cx2 (ly:grob-relative-coordinate buddy refpx X)))
     ;(format #t "goods ~a ~a ~a ~a ~a\n" cx1 cx2 cy1 cy2 refpx)
          (ly:stencil-add
            (sinusoid 0.1 0 0 (- cx2 cx1) (- cy2 cy1))))))))

buddyEngraver =
    #(let ((match-list '())
           (name-list '()))
       (list
         (cons 'acknowledgers
               (list
                 (cons 'grob-interface
                       (lambda (engraver grob source-engraver)
                               (let ((name (ly:grob-property grob 'my-name))
                                     (searching (ly:grob-property grob 'searching)))
                                    (set! name-list (cons (cons name grob) name-list))
                                    (set! match-list (append (map (lambda (x) (cons name x)) searching) match-list)))))))
         (cons 'finalize
              (lambda (trans)
                (for-each
                  (lambda (x) ;(format #t "MATCHING ~a\n" x)
                    (let ((grob1 (assoc-get (car x) name-list))
                          (grob2 (assoc-get (cdr x) name-list)))
                    (ly:grob-set-property! grob2 'buddies (cons (cons (car x) grob1) (ly:grob-property grob2 'buddies)))
                    (ly:grob-set-property! grob1 'buddies (cons (cons (cdr x) grob2) (ly:grob-property grob1 'buddies)))))
                  match-list)))))

\include "bendtest.ly"
