\version "2.18.2"

\header {

}

%\relative c'' {
  %c4 a b c
%}

% equals to

%\book {
  %\score {
    %\new Staff {
      %\new Voice {
        %\relative c'' {
          %c4 a b c
        %}
      %}
    %}
    %\layout {  }
  %}
%}

melody = \relative c'' { r4 d8\noBeam g, c4 r }
text = \lyricmode { And God said, }
upper = \relative c'' { <g d g,>2~ <g d g,> }
lower = \relative c { b2 e }

\score {
  <<
    \new Staff = "singer" <<
      \new Voice = "vocal" { \melody }
      \addlyrics { \text }
    >>
    \new PianoStaff = "piano" <<
      \new Staff = "upper" { \upper }
      \new Staff = "lower" {
        \clef "bass"
        \lower
      }
    >>
  >>
  \layout {  }
}

%% With
\new Staff = "main" {
  \relative g'' {
    r4 g8 g c4 c8 d |
    e4 r8
    <<
      { f8 c c }
      \new Staff \with {
        alignAboveContext = #"main"
      } { f8 f c }
    >>
    r4 |
  }
}

%% use `\\` to separate voices
\relative c'' {
  \key g \major
  % Voice
  <<
    { g4 fis8( g) a4 g } \\ { d4 d d d }
  >>
}

\relative c'' {
  \key d \minor
  << { r4 g g4. a8 } \\ { d,2 d4 g } >> |
  << { bes4 bes c bes } \\ { g4 g g8( a) g4 } >> |
  << { a2. r4 } \\ { fis2. s4 } >> |
}

\new Staff \relative c' {
  % Main voice
  c16 d e f
  <<
    {
      \voiceOneStyle
      g4 f e
    }
    \\
    {
      \voiceTwoStyle
      r8 e4 d c8~
    }
  >> |
  <<
    { d2 e }
    \\
    { c8 b16 a b8 g~ g2 }
    \\
    { 
      \voiceThreeStyle
      s4 b c2
    }
  >> |
}

