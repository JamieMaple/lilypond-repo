% version statement
\version "2.18.2"

% first test
{
  c' e' g' e'
}

%% PICHES
\relative c' {
  c d e f
  g a b c
}

\relative c' {
  d f a g
  c b f d
}

\relative c'' {
  e c a c
}

% if c'', 3 staff spaces going up or going down
\relative c'' {
  b c 
  b d
  b e
  b a
  b g
  b f
}

% use single quote for larger intervals
% use comma (,) for lower intervals
\relative c'' {
  a a, c' f,
  g g'' a,, f'
}

%% DURATION
\relative c'' {
  a1
  a2 a4 a8 a
  a16 a a a a32 a a a a64 a a a a a a a a2
}

% dot
\relative c'' {
  a4 a a4. a8
  a8. a16 a a8. a8 a4.
}

% rest
\relative c'' {
  a4 r r2
  r8 a r4. r8
}

% time signature
\relative c'' {
  \time 3/4
  a4 a a
  \time 6/8
  a4. a
  \time 4/4
  a4 a a a
}

% tempo marks
\relative c'' {
  \time 3/4
  \tempo "Andante"
  a4 a a
  \time 6/8
  \tempo 4. = 96
  a4. a
  a4. a
  \time 4/4
  \tempo "Presto" 4 = 120
  a4 a a a
}

% clef
\relative c' {
  \clef "treble"
  c1
  \clef "alto"
  c1
  \clef "tenor"
  c1
  \clef "bass"
  c1
}

% full example
\relative c, {
  \clef "bass"
  \time 3/4
  \tempo "Andante" 4 = 120
  c2 e8 c'
  g'2.
  f4 e d
  c4 c, r
}

%% BAR LINE

\relative c'' {
  g1 e1 \bar "||" c2. c'4 \bar "|."
}

%% ACCIDENTALS
%{
  sharp  -- is 升
  flat   -- es 降
  double -- `twice`, like `isis` or `eses`
%}
\relative c'' {
  cis4 ees fisis, aeses
}

%% KEY SIGNATURES
\relative c'' {
  \key d \major
  a1 |
  \key c \minor
  a1 |
}

\relative c'' {
  \key d \major
  cis4 d fis
}

%% TIES AND SLURS

\relative c'' {
  g4~ g c2~ | c4~ c8 a~a2 |
  d4( c16) cis( d e c cis d) e( d4)
  g4\( g8( a) b( c) b4\)
}

%% ARTICULATIONS
\relative c'' {
  c4-^ c-+ c-- c-!
  c4-> c-. c2-_
}

%% DYNAMICS\
% end with (de)cresendo or `\!`
\relative c'' {
  c4\ff c\mf c\p c\pp
  c4\< c\ff\> c c\!
}


