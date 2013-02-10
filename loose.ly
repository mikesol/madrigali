\version "2.14.0"

{ \repeat unfold 16 d'32 
  <<
    { \repeat unfold 48 d'32 }

    \new Staff \with {
      \remove "Time_signature_engraver"
      alignAboveContext = #"main"
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
      \override StaffSymbol #'thickness = #(magstep -3)
      firstClef = ##f
    }
    { s4 \key cis \major ais4 ais ais ais ais }
  >>
}