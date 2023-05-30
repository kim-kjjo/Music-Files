\version "2.22.1"
\include "english.ly"
\include "articulate.ly"

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  a4 b c d
  g b a2
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  a2 c
  c4 d e f
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
