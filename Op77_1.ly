
\header { title = \markup "Kohler Op 77 Study 1" }

PartPOneVoiceOne =  \relative c' {
    \clef "treble" 
    \numericTimeSignature\time 4/4 
    \key c \major
    \tempo 4 = 120

    % Measures 1 to 8
    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    d8 e16 f16 g16 a16 b16 c16 d16 c16 b16 a16 g16 f16 e16 d16

    e8 f16 g16 a16 b16 c16 d16 c16 b16 a16 g16 f16 e16 d16 e16

    f8 g16 a16 b16 c16 d16 e16 f16 e16 d16 c16 b16 a16 g16 f16

    g8 a16 b16 c16 d16 e16 f16 g16 f16 e16 d16 c16 b16 a16 g16

    a8 b16 c16 d16 e16 f16 g16 a16 g16 f16 e16 d16 c16 b16 a16

    b8 c16 d16 e16 f16 g16 a16 b16 a16 g16 f16 e16 d16 c16 b16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    d8 e16 f16 g16 a16 b16 c16 d16 c16 b16 a16 g16 f16 e16 d16

    e8 f16 g16 a16 b16 c16 d16 c16 b16 a16 g16 f16 e16 d16 e16
    
    f8 g16 a16 b16 c16 d16 e16 f16 e16 d16 c16 b16 a16 g16 f16

    g8 a16 b16 c16 d16 e16 f16 g16 f16 e16 d16 c16 b16 a16 g16

    a8 b16 c16 d16 e16 f16 g16 a16 g16 f16 e16 d16 c16 b16 a16


    g8 a16 b16 c16 d16 e16 f16 g16 f16 e16 d16 c16 b16 a16 g16

    f8 g16 a16 b16 c16 d16 e16 f16 e16 d16 c16 b16 a16 g16 f16

    e8 f16 g16 a16 b16 c16 d16 e16 d16 c16 b16 a16 g16 f16 e16
    
    d8 e16 f16 g16 a16 b16 c16 d16 c16 b16 a16 g16 f16 e16 d16

    c8 d16 e16 f16 g16 a16 b16 c16 b16 a16 g16 f16 e16 d16 c16

    b8 c16 d16 e16 f16 g16 a16 b16 a16 g16 f16 e16 d16 c16 b16

    a8 b16 c16 d16 e16 f16 g16 a16 g16 f16 e16 d16 c16 b16 a16
    
    g8 a16 b16 c16 d16 e16 f16 g16 f16 e16 d16 c16 b16 a16 g16

    \relative c'
    c2 r2

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