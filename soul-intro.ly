\header {
  title = "Soul Intro to The Chicken"
  subtitle = ""
  source = "from a transcription by Mark Welcome"
  composer = "Alfred \"Pee Wee\" Ellis"
  arranger = "arr. Jaco Pastorius"
  enteredby = "gjl"
  copyright = ""
  tagline = "transcription by Mark Welcome. modified by John Lapeyre v 0.1"
}

\version "2.24.0"

ob = { s2. \bar "|" }

global =  {
  \key bes \major
  \time 3/4
}

ch =  \new ChordNames \chords { bes2. s d:7 s ees
                         bes  c:7 s des s f:7 s
                          fis s f:7 s f:7 s ees4  bes/d c:m7 bes s2
                          ees2. s bes }

horns = \context Staff \relative c''
\new Voice {
  \voiceOne
  \set Staff.midiInstrument = "trumpet"
  \tuplet 3/2 {<bes d f>8  <a d e>  <bes ~ d ~ f ~>}
  <bes~ d~ f~>2 | % 1
  <bes d f>2. | % 2
  <c ~ fis ~ a ~> | % 3
  <c fis a>  | % 4
  <ees g bes> | % 5
  < d f bes> | % 6
  <c ~ e ~ bes' ~> | % 7
  <c  e  bes'>4 r r | % 8
  \tuplet 3/2 {<des f aes>8 < c e g> <des~ f~ aes~>}
  <des~ f~ aes~>2 |
  <des f aes>2. |
  <ees~ a~ c~>2. |
  <ees a c>2. |
  \tuplet 3/2 {<ees bes' des>8  <des a' c> <ees~ bes'~ des~>}
  <ees~ bes'~ des~>2 |
  <ees bes' des>2. |
  <c~ f~ bes~>2. |
  <c f bes>2. |
  r8 <c~ g'~ bes~> <c~ g'~ bes~>2 |
  <c g' bes>2. |
  <ees g bes>4 <d f bes> <c ees bes'> |
  <d f bes>8 r8 r4 r4 |
  <ees~ g~ bes~ ees~ >2. |
  <ees g bes ees>2. |
  <bes~ f'~ bes~ d~>2. |
  <bes f' bes d>2. \bar "||"
}

bassguitar = \context Staff  \relative c'
\new Voice{
  \set Staff.midiInstrument = "electric bass (finger)"
  \tuplet 3/2 {bes8 a bes ~ } bes4  \tuplet 3/2 {r8 g f} | % 1
  bes,8. bes16 d4 f4 | % 2
  ges2 ~ \tuplet 3/2 {ges8 ~ ges a} | %3
  d4 a gis  | % 4
  g bes ees | %5
  d bes f | % 6
  <c e> \tuplet 3/2 {r8 g a} \tuplet 3/2 {c e g} |
  bes4 r \tuplet 3/2 {r8 r aes} |
  \tuplet 3/2 {des c des~} des4 \tuplet 3/2 {r8 bes aes}
  des,8. des16 f4 aes4 a2~ \tuplet 3/2 {a8~ a c} f4
  \tuplet 3/2 {r8 a g } \tuplet 3/2 {f c a}
  \tuplet 3/2 {bes8 a bes} \tuplet 3/2 {r des, ees}
  ges4 \tuplet 3/2 {des'8 c des} \tuplet 3/2 {r des ees}
  f8 r f,4 f8 f f f f f f f f f
  r f f f f f f f f f f bes,
  \textSpannerDown
  \override TextSpanner.edge-text = #'("poco rall " . "")
  ees4\startTextSpan d  c bes8-.\stopTextSpan
  \break
  r_\markup { \italic a tempo } r4 r
  ees2.~ees bes~bes \bar "||"
}

\score {
      <<
        \ch
	\new Staff = "treble" <<
	    \global
            \set Staff.instrumentName = #"Horns"
	    \clef treble
	    \horns
	    >>
	\new Staff = "bass" <<
	    \global
            \set Staff.instrumentName = #"Bass g."
	    \clef bass
	    \bassguitar
	>>
     >>

    \layout {
	\context {
	    \Score
	}
    }

    \midi {
      \context {
       \Score
       }
     }
}
