\include "defsHelsinki.ly"

marks = {
  \partial 16
  \chiquitaT
  \time 6/16
  s16 |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  \time 2/4
  \allezT
  s2 |
  \time 3/4
  \girlT
  s2.
  \time 3/8
  s4.
  \time 3/16
  \bangT
  s8. |
  s8. |
  s8. |
  s8. |
  s8. |
  s8. |
  s8. |
  s8. |
  s8. |
  s8. |
  \time 2/8
  \jShoT
  s4 |
  \time 3/8
  s4. |
  \time 4/8
  s2 |
  \time 4/4
  % same as before
  %\mark "*"
  \firstSchlossT
  s2.. \chiquitaT s8 |
  \time 6/16
  s4. |
  s4. |
  s4. %{\breathe%} |
  \time 3/4
  \girlT
  s2.
  \time 3/8
  s4.
  \time 3/4
  s2.
  \time 3/8
  s4.
  \time 3/4
  s2.
  \time 3/8
  s4.
  \time 4/4
  \vacuumT
  s1 |
  s1 |
  s1 |
  s1 |
  \bossaT
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  \time 3/8
  s4. |
  \time 6/16
  \chiquitaT
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  \time 2/4
  \sillyT
  s2 |
  s2 |
  s2 |
  \time 4/4
  s1 |
  \time 6/16
  \chiquitaT
  s4. |
  \time 3/4
  \girlT
  s2. |
  \time 3/8
  s4. |
  \time 3/4
  \monstreT
  s2. |
  \time 2/4
  s2 |
  \time 3/4
  s2. |
  \time 5/8
  s1*5/8 |
  \time 5/4
  s1*5/4 |
  \time 5/8
  s1*5/8 |
  \time 3/4
  s2. |
  \time 4/4
  \bossaT
  s1 |
  \time 7/8
  s1*7/8 |
  s1*7/8 |
  \time 3/16
  \bangT
  s8. | s8. | s8. | s8. | s8. | s8. | s8. | s8. | s8. | s8. |
  \time 3/4
  \girlT
  s2. |
  \time 3/8
  s4. |
  \time 3/4
  s2. |
%{
  \time 3/8
  s4. |
  \time 4/4
  \freiheitT
  s1 |
  s1 |
  \time 9/8
  s1*9/8 |
%}
  $(skip-of-length ditz)
  \time 3/8
  \chiquitaT
  s4. |
  %%%%%%%%%%%%%
  %\break
  %%%%%%%%%%%%
  \time 5/16
  s4*5/4 |
  \time 3/8
  \sillyT
  s4. |
  \time 4/4
  \monstreTT
  s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
  \time 3/4
  s2. |
  \time 5/8
  s1*5/8 |
  \time 4/4
  \noT
  s1 | s1 |
  \time 2/4
  s2 |
  \time 4/4
  \girlT
  s1 |
  s1 |
  \bossaT
  s1 |
  s1 |
  s1 |
  \time 6/16
  \chiquitaT
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  s4. |
  \time 9/16
  s4.*3/2 |
  \time 2/2
  \interludeT
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  \time 3/4
  s2. |
  \time 2/4  
  s2 |
  \time 3/4
  \override Score . MetronomeMark #'self-alignment-X = #CENTER
  \override Score . MetronomeMark #'break-visibility = ##(#t #t #t)
  \rhythmMark "" \normalHalf \normalQuarter
  \revert Score . MetronomeMark #'self-alignment-X
  \revert Score . MetronomeMark #'break-visibility
  \mark "*"
  s2. |
  \time 5/4
  s1*5/4 |
  \time 3/4
  s2. |
  \time 6/4
  s1. |
  \time 7/4
  s1*7/4 |
  \time 5/4
  s1*5/4 |
  s1*5/4 |
  \time 3/4
  s2. |
  \time 2/2
  \interludeT
  s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
  \time 4/4
  \credoT
  s1 |
  s1 |
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  \girlT
  \mark "*"
  s1*5/4 |
  \time 3/4
  s2. |
  \time 7/8
  s1*7/8 |
  \time 3/4
  s2. |
  \time 9/8
  s1*9/8 |
  \time 4/4
  \allezT
  s1 |
  s1 |
  s1 |
  \time 6/4
  s1. |
  \time 4/4
  \mark "†"
  \vacuumT
  s1 | s1 | s1 | s1 | s1 | s1 | s1 |
  \allezT
  s1 | s1 | s1 | s1 | s1 |
  \time 3/4
  \credoT
  s2. |
  \time 4/4
  s1 |
  \jShoT
  s1 |
  \time 3/16
  \bangT
  s8. | s8. | s8. | s8. | s8. | s8. | s8. | s8. |
  \time 10/8
  \partOfMeT
  s1*5/4 | s1*5/4 | s1*5/4 | s1*5/4 | s1*5/4 | s1*5/4 | s1*5/4 | s1*5/4 | s1*5/4 | s1*5/4 \bar "|."
}
