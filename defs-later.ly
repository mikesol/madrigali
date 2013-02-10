sal = {\once \override Staff . TextScript #'self-alignment-X = #LEFT }
globals = {
\override Staff . Slur #'direction = #UP
\override Staff . TextScript #'self-alignment-X = #CENTER
\override Staff . TupletBracket #'direction = #UP
\override Staff . TupletBracket #'outside-staff-padding = #0
\set Staff.melismaBusyProperties = #'(tieMelismaBusy)
\autoBeamOff
}

bump = { \once \override Staff . TupletBracket #'outside-staff-priority = #1 }

throat = {
\stopStaff
\override Staff . StaffSymbol #'line-count = #1
\override Staff . BarLine #'bar-extent = #'(-1.0 . 1.0)
\startStaff
\clef percussion
%\override Score . TimeSignature #'stencil =
%#(lambda (grob) (grob-interpret-markup grob (markup #:override '(baseline-skip . 0) (#:column (#:huge #:bold "?" #:number "4")))))
\override Staff . Stem #'stencil = ##f
\override Staff . Flag #'stencil = ##f
\override Staff . NoteHead #'duration-log = #3
\override Staff . Dots #'stencil = ##f
\override Staff . Glissando #'bound-details #'left #'padding = #0
\override Staff . Glissando #'bound-details #'right #'padding = #0
\override Staff.Glissando #'thickness = #4.0
\override Staff.Glissando #'minimum-length = #20
\override Glissando #'springs-and-rods = #ly:spanner::set-spacing-rods
}

norm = {
\stopStaff
\revert Staff . StaffSymbol #'line-count
\startStaff
%\revert Score . TimeSignature #'stencil
\revert Staff . BarLine #'bar-extent
\revert Staff . Stem #'stencil
\revert Staff . Flag #'stencil
\revert Staff . NoteHead #'duration-log
\revert Staff . Dots #'stencil
\revert Staff . Glissando #'bound-details #'left #'padding
\revert Staff . Glissando #'bound-details #'right #'padding
\revert Staff.Glissando #'thickness
\revert Staff.Glissando #'minimum-length
\revert Glissando #'springs-and-rods
}

tnorm = { \norm \clef "treble_8" }
bnorm = { \norm \clef bass }

