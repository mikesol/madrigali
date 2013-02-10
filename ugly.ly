#(define (lyric-hack::pure-y-offset grob start end) 5.0)
#(define (lyric-hack::y-offset grob) 5.0)

#(define (pure-stencil-height grob start stop)
  (let* ((sten (ly:grob-property-data grob 'stencil))
         (pure-height-callback (assoc-get sten pure-print-to-height-conversions)))
    (cond ((or
            (ly:stencil? sten)
            (memq sten pure-print-callbacks))
           (ly:grob::stencil-height grob))
          ((procedure? pure-height-callback)
           (pure-height-callback grob start stop))
          (else
           '(0 . 0)))))

#(define (pure-chain-offset-callback grob start end prev-offset) prev-offset)

#(define pure-conversions-alist
  `(
    (,ly:accidental-interface::height . ,ly:accidental-interface::pure-height)
    (,ly:axis-group-interface::calc-staff-staff-spacing . ,ly:axis-group-interface::calc-pure-staff-staff-spacing)
    (,ly:axis-group-interface::height . ,ly:axis-group-interface::pure-height)
    (,ly:grob::stencil-height . ,pure-stencil-height)
    (,ly:hara-kiri-group-spanner::y-extent . ,ly:hara-kiri-group-spanner::pure-height)
    (,ly:rest-collision::force-shift-callback-rest . ,pure-chain-offset-callback)
    (,ly:rest::height . ,ly:rest::pure-height)
    (,ly:self-alignment-interface::y-aligned-on-self . ,ly:self-alignment-interface::pure-y-aligned-on-self)
    (,ly:side-position-interface::y-aligned-side . ,ly:side-position-interface::pure-y-aligned-side)
    (,ly:slur::height . ,ly:slur::pure-height)
    (,ly:slur::outside-slur-callback . ,ly:slur::pure-outside-slur-callback)
    (,ly:stem::height . ,ly:stem::pure-height)
    (,lyric-hack::y-offset . ,lyric-hack::pure-y-offset)
    (,ly:system::height . ,ly:system::calc-pure-height)))
