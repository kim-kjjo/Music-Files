\version "2.22.1"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    encodingsoftware =  "MuseScore 3.6.2"
    encodingdate =  "2022-05-05"
    }

#(set-global-staff-size 19.997457142857144)
\paper {
    
    paper-width = 21.0\cm
    paper-height = 29.7\cm
    top-margin = 1.5\cm
    bottom-margin = 1.5\cm
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    indent = 1.6153846153846152\cm
    short-indent = 0.25506072874493924\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 \key c \major | % 1
    \tempo 4=60 \stemUp c8 [ \stemUp d16 \stemUp e16 ] \stemUp f16 [
    \stemUp g16 \stemUp a16 \stemUp b16 ] \stemUp c16 [ \stemUp b16
    \stemUp a16 \stemUp g16 ] \stemUp f16 [ \stemUp e16 \stemUp d16
    \stemUp c16 ] | % 2
    \stemUp d8 [ \stemUp e16 \stemUp f16 ] \stemUp g16 [ \stemUp a16
    \stemUp b16 \stemUp c16 ] \stemDown d16 [ \stemDown c16 \stemDown b16
    \stemDown a16 ] \stemUp g16 [ \stemUp f16 \stemUp e16 \stemUp d16 ]
    \break | % 3
    \stemUp e8 [ \stemUp f16 \stemUp g16 ] \stemDown a16 [ \stemDown b16
    \stemDown c16 \stemDown d16 ] \stemDown e16 [ \stemDown d16
    \stemDown c16 \stemDown b16 ] \stemUp a16 [ \stemUp g16 \stemUp f16
    \stemUp e16 ] | % 4
    \stemUp f8 [ \stemUp g16 \stemUp a16 ] \stemDown b16 [ \stemDown c16
    \stemDown d16 \stemDown e16 ] \stemDown f16 [ \stemDown e16
    \stemDown d16 \stemDown c16 ] \stemUp b16 [ \stemUp a16 \stemUp g16
    \stemUp f16 ] \bar "|."
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            \set Staff.instrumentName = "Flute, Piano, \new:"
            \set Staff.shortInstrumentName = "Fl."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 60 }
    }

