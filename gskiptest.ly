\version "2.15.0"

\relative c' {
  
  a \glissando \once \override NoteColumn #'glissando-skip = ##t b' c, d e
}