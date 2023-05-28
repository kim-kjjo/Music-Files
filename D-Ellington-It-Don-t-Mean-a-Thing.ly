\version "2.20.0"
#(set-global-staff-size 20)
#(set-default-paper-size "letter")
\include "english.ly"

\header {
  title = "It Don't Mean a Thing"
  composer = "D. Ellington"
  instrument = "(Flute Score)"
}

global =  {
	\clef "treble"
	\key bf \major
	\numericTimeSignature
  \time 4/4
	\tempo 4 = 220
	\set Staff.midiInstrument = "Flute"
	\set Staff.instrumentName = "Flute"
}

music = {
    r4 g'' bf'' g''
    \relative c' {d''8 bf8 r8 c8~ c4 r4}

  \relative c' {r4 g'' bf g}
   \relative c' {d''4. df8~ df4 r4}

  r4 g'' bf'' g''
  \relative c' {df''8 bf8 r8 c8~ c4 bf8 g8}

r1 r1 r1
}

\score {
{
  \global
  \music
}

 \layout {}
 \midi {\tempo 4 = 220}}