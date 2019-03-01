\version "2.19.82"

\relative c'' {
  <<
    { a2 g }
    { f2 e }
    { d2 b }
  >>
}

\relative c'' {
  c2 << c e>> |
  << {e2 f} {g2 <<b2 d>>} >> |
}

%% Multiply staves
\relative c'' {
  <<
    \new Staff { \clef "treble" c4 }
    \new Staff { \clef "bass" c,,4 }
  >>
}

%% Staff group
\relative c'' {
  \new PianoStaff <<
    \new Staff { \time 2/4 c4 e | g g, | } 
    \new Staff { \clef "bass" c,,4 c' | e c | }
  >>
}

%% Combining notes to chores
\relative c'' {
  r4 <c e g> <c f a>2
}

%% Songs
% lyrics
<<
  \relative c'' {
    \key g \major
    \time 6/8
    d4 b8 c4 a8 | d4 b8 g4 g8 |
    a4 b8 c b a | d4 b8 g4.   |
  }
  \addlyrics {
    Girls and boys come | out to play,
    The | moon doth shine _ as | bright as day; |
  }
>>

%% Variables
violin = \new Staff {
  \relative c'' {
    a4 b c b
  }
}

cello = \new Staff {
  \relative c {
    \clef "bass"
    e2 d
  }
}

{
  <<
    \violin
    \cello
  >>
}

% Titles
\header {
  title = "Test Header"
  composer = "Maple"
  %opus = "Op. 9"
}

{
  c'4 d' e' f'
  g' a' b' c''
}
