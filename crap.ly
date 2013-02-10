\version "2.14.0"

\include "defs.ly"

\paper {
  ragged-right = ##f
}

foo = {
  a
  %\stopStaff
  \once \override Staff . Stem #'searching = #'(bar)
  \once \override Staff . Stem #'my-name = #'foo
  \once \override Staff . Stem #'stencil =
#(lambda (grob)
  (let* ((buddy (assoc-get 'bar (ly:grob-property grob 'buddies)))
         (refpy (ly:grob-common-refpoint grob buddy Y))
         (cy1 (ly:grob-relative-coordinate grob refpy Y))
         (cy2 (ly:grob-relative-coordinate buddy refpy Y))
         (refpx (ly:grob-common-refpoint grob buddy X))
         (cx1 (ly:grob-relative-coordinate grob refpx X))
         (cx2 (ly:grob-relative-coordinate buddy refpx X)))
  (make-line-stencil 1.0 cx1 cy1 cx2 cy2)))
  %\startStaff
  \bar ""
  a a a a a a a
}

bar = {
  a
  \once \override Staff . Stem #'my-name = #'bar
  \bar ""
  a a a a a a a a
}

\score {
  <<
    \new Staff \foo
    \new Staff \bar
  >>
\layout {
  \context {
   \Staff
  }
  \context {
    \Score
    \consists
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
                  (lambda (x)
                    (let ((grob1 (assoc-get (car x) name-list))
                          (grob2 (assoc-get (cdr x) name-list)))
                    (ly:grob-set-property! grob2 'buddies (cons (cons (car x) grob1) (ly:grob-property grob2 'buddies)))
                    (ly:grob-set-property! grob1 'buddies (cons (cons (cdr x) grob2) (ly:grob-property grob1 'buddies)))))
                  match-list)))))
  }
}
}
