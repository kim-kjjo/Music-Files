
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" 
    \numericTimeSignature\time 4/4 
    \key c \major
    \tempo 4 = 160 

    % Measure 1
    \stemUp c8 [ \stemUp d16 \stemUp e16 ] \stemUp f16 [
    \stemUp g16 \stemUp a16 \stemUp b16 ] \stemUp c16 [ \stemUp b16
    \stemUp a16 \stemUp g16 ] \stemUp f16 [ \stemUp e16 \stemUp d16
    \stemUp c16 ] | 

    % Measure 2
    \stemUp d8 [ \stemUp e16 \stemUp f16 ] \stemUp g16 [ \stemUp a16
    \stemUp b16 \stemUp c16 ] \stemDown d16 [ \stemDown c16 \stemDown b16
    \stemDown a16 ] \stemUp g16 [ \stemUp f16 \stemUp e16 \stemUp d16 ]
    \break | 

    % Measure 3
    \stemUp e8 [ \stemUp f16 \stemUp g16 ] \stemDown a16 [ \stemDown b16
    \stemDown c16 \stemDown d16 ] \stemDown e16 [ \stemDown d16
    \stemDown c16 \stemDown b16 ] \stemUp a16 [ \stemUp g16 \stemUp f16
    \stemUp e16 ] | 

    % Measure 4
    \stemUp f8 [ \stemUp g16 \stemUp a16 ] \stemDown b16 [ \stemDown c16
    \stemDown d16 \stemDown e16 ] \stemDown f16 [ \stemDown e16
    \stemDown d16 \stemDown c16 ] \stemUp b16 [ \stemUp a16 \stemUp g16
    \stemUp f16 ] \bar "|."
    }

\score 
{
    <<
        
        \new Staff
        <<
            \context Staff 
                << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
        >>
        
    >>
    \layout {}
    \midi {\tempo 4 = 160 }
}