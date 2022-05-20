\version "2.20.1"
#(set-global-staff-size 20)
#(set-default-paper-size "letter")
\include "english.ly"

\header {
  title = "It Don't Mean a Thing"
  composer = "D. Elllington"
  instrument = "Flute Score"
}

global =  {
	\clef "treble"
	\key bf \major
	\numericTimeSignature
  \time 4/4
	\tempo 4 = 200
	\set Staff.midiInstrument = "flute)"
}

music = {
    r4 g'' bf'' g''
    \relative c' 
    {
    d''8 bf8 r8 c8~ c4 r4
    }
    r4 g'' bf'' g''
}

\score {
{
  \global
  \music
}

  \layout {}
  \midi {\tempo 4 = 200}
}