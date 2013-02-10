\version "2.14.0"
  \new ChoirStaff <<
    \new Staff { a''1 s a'' }
    \new Staff \with { \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 1)) } { a'' s a'' }
    \new Staff \with { \override VerticalAxisGroup #'staff-staff-spacing = #'((basic-distance . 1)
       (minimum-distance . 1)
       (padding . 1))
  \override BarLine #'transparent = ##t
  \override TimeSignature #'stencil = ##f
  \override Clef #'stencil = ##f
  \override StaffSymbol #'line-count = #0
}
      { s1 s4 s2.^"foo" s1 }
    \new Staff { a''1 s a'' }
    \new Staff { a''1 s a'' }
>>

