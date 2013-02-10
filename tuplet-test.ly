%{
emoteMe = #(define-music-function (parser location v) (string?)
#{
\tweak #'stencil #(lambda (grob)
 (ly:stencil-translate
  (grob-interpret-markup grob
   (markup #:raise 0.5 #:epsfile X 3.0 v)) (cons -1.38 -1.38))
\tweak #'Y-extent #'(-1.38 . 1.38)
\tweak #'X-extent #'(-1.38 . 1.38)
#})
%}

\relative c'' {

\tweak #'stencil #(lambda (grob)
 (ly:stencil-translate
  (grob-interpret-markup grob
   (markup #:raise 0.5 #:epsfile X 3.0 "emoticons/smile.eps")) (cons -1.38 -1.38))
\tweak #'Y-extent #'(-1.38 . 1.38)
\tweak #'X-extent #'(-1.38 . 1.38)


%\emoteMe #"emoticons/smile.eps"
\times 2/2 { a \times 2/3 { r4 a a } a  }
}