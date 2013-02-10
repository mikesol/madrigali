
key =
#(define-music-function (parser location tonic pitch-alist music)
   ((ly:pitch? '()) (list? '()) ly:music?)
   (_i "Set key to @var{tonic} and scale @var{pitch-alist}.
If both are null, just generate @code{KeyChangeEvent}.")
(make-music 'SequentialMusic
'elements (cons
   (cond ((null? tonic) (make-music 'KeyChangeEvent))
         ((null? pitch-alist)
          (ly:parser-error parser (_ "second argument must be pitch list")
                           location)
          (make-music 'SequentialMusic 'void #t))
         (else
          (ly:music-transpose
           (make-music 'KeyChangeEvent
                'tonic (ly:make-pitch 0 0 0)
                'pitch-alist pitch-alist)
           tonic)))
(ly:music-property music 'elements))))

\displayMusic {
  \key b \major { a b c d }
}


%\displayMusic { \key b \major a b c d }