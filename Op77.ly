


PartPOneVoiceOne =  \relative c' {
    \clef "treble" 
    \numericTimeSignature\time 4/4 
    \key c \major
    \tempo 4 = 120

    % Measures 1 to 8
    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    d8 e16 f16 g16 a16 b16 c16 d16 c16 b16 a16 g16 f16 e16 d16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

     % Measures 9 to 16
    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16
    
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
    \midi {\tempo 4 = 120 }
}