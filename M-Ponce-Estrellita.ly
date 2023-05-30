\version "2.22.1"
\include "english.ly"
\include "articulate.ly"

#(set-global-staff-size 25)
#(set-default-paper-size "letter")

\header 
{
  title = "Estrellita"
  instrument = "Guitar"
  composer = "Manuel Ponce"
}

global =  
{
  \key a \major
  \numericTimeSignature
  \time 2/4
  % Andante is 72 to 76 bpm
  \tempo "Andante" 4 = 76
  \set Staff.midiInstrument = "acoustic grand"
  \set Staff.instrumentName = "Guitar"
}

voltaFirst = \markup \text "1"
voltaSecond = \markup \text "2"

guitar = 
{
  \global
  \clef treble
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
  \set Score.currentBarNumber = #1
  \bar ""

  % Pickup measure 1
  r4  e'8. fs'16 \bar ".|:" |

  % Volta first time repeat mesures
  \repeat volta 2
  {
    % 2 - 6
    <a gs'>8 cs'~ <cs' a'> <e' cs''>16 e''16 |
    <gs'' b''>4.  <fs'' a''>8 |
    <d' fs'' a''>8. b'16 <d' fs' a' b'>8 cs'8 |
    b8 d'8 fs'8 <a' d'' fs''>8 |
    <e gs' d'' fs''>8 b16 <cs' as'>16  <d' gs' b'>8 e16 <as as' cs''>16 |

    % 7 - 12
    <b gs' d''>8 fs'8 e'8 <fs bs' fs''>8 |
    <a cs'' fs''>8. gs''16 <cs'' e''>8 e'8 |
    <a' cs''> fs' e'8. fs'16 |
    <a gs'>8 cs'~ <cs' a'> <e' cs''>16 e''16 |
    <a'' cs'''>4.  <es'' gs''>8 |
    <d' gs'' b''>8. a''16 <d' fs' a' b'>8 cs'8 |

    % 13 - 16
    b8 <es'' gs''>16 <b'' gs''>16 <a'' fs''>16 <es'' gs''>16 < fs'' a''>16 <d'' fs''>16 |
    <e d'' fs''>8. e''16 <cs'' a''>8. cs''16 |
    <as gs' cs''>8 <b d''>8 <e d' gs' fs''>8 r16 <e d' gs'>16 |
    <a cs' a'>8 e'8 cs'8 e8 |
  }

  \alternative 
  {
    {
      \set Score.repeatCommands = #(list(list 'volta voltaFirst))
      % Bar 17
      a4  e8.  fs'16  \bar "||"
    }{

      \set Score.repeatCommands = #(list(list 'volta voltaSecond))
      a4 <fs' a' d''>4
    }
  }

  % 19 - 22
  <e gs' cs''>8  <cs' as'>16  <d' b'>16  <d'' fs'' e>4
  ~<d'' fs'' e>8   e'8  <gs' e''>8  cs''8
  <a d' b'>8 <e' cs''>16 a'16 <cs' e'>8 b16 a16
  <e e'>8 cs'8 <fs' a' d''>4

  % 23 - 26
  <e' gs' cs''>8 <cs' as'>16 <d' b'>16 <fs' gs' d''>4
  <e' gs' cs''>4 e8 <d' gs' b'>8
  <a fs' a'>8.  <e' a' cs''>16 <cs' e' a'>8 fs8
  e8 cs'8 e' 8. fs'16

  % 27 - 30
  <a gs'>8 cs'8~  <cs'  a'>8 <e' cs''>16  e''16
  <cs' a'' cs'''>4 es''8 gs''8
  <d' gs'' b''>8. a''16 <d' fs' a' b'>8 cs'8
  b8 <es'' gs''>16 <b'' gs''>16 <a'' fs''>16 <es'' gs''>16 < fs'' a''>16 <d'' fs''>16 |

  % 31 - 34
  <e cs'' fs''>8. e''16 <cs'' a''>8. cs''16|
  <a gs' cs''>8 <b d''>8 <e d' gs' fs''> r16 <e d ' gs'>16|
  <a cs' a'>4 e'4|
  <a e' cs'' a''>4 r4
}

% PDF SCORE
\score {
  \guitar
  \layout{ }
}

% MIDI SCORE
\score {
  \unfoldRepeats {\guitar}
  \midi{}
}
