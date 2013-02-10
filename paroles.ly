<<
\new Staff
\relative c' {
\repeat unfold 10 { a4 b c d e f g }
}
\new Staff {
\repeat unfold 10 { s1^"foo" s1^"bar" }
}
\new Staff
\relative c' {
\repeat unfold 10 { a4 b c d e f g }
}
>>