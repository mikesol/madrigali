\version "2.14.0"

#(define tester 0)

\relative c' {
  \override NoteHead #'extra-offset = #(lambda (grob) (set! tester (1+ tester)) (format #t "~a called\n" tester) '(0.0 . 0.0))
  a b c d
}