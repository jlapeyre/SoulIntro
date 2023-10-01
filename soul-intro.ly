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

\version "2.10.0"

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
%    \set Staff.midiInstrument = "alto sax"
    \set Staff.midiInstrument = "trumpet"
   \times 2/3 { <bes d f>8  <a d e>  <bes ~ d ~ f ~> } | % 1
      <bes~ d~ f~>2 |   %2
    <bes d f>2. |  % 3 
     <c ~ fis ~ a ~> | % 4
    <c fis a>  | %5
    <ees g bes> < d f bes> <c ~ e ~ bes' ~> <c  e  bes' >4 r r
    \times 2/3 { <des f aes>8 < c e g> <des~ f~ aes~> } 
       <des~ f~ aes~>2 <des f aes>2.
      <ees~ a~ c~>2. <ees a c>2. 
    \times 2/3 { <ees bes' des>8  <des a' c> <ees~ bes'~ des~>}
    <ees~ bes'~ des~>2 <ees bes' des>2.
    <c~ f~ bes~>2. <c f bes>2.
    r8 <c~ g'~ bes~> <c~ g'~ bes~>2 <c g' bes>2.
    <ees g bes>4 <d f bes> <c ees bes'> 
%    <bes-. d bes'>8 
    <d f bes>8 
    r8 r4 r4
    <ees~ g~ bes~ ees~ >2. <ees g bes ees>2. 
    <bes~ f'~ bes~ d~>2.
    <bes f' bes d>2. \bar "||"

 }

bassguitar = \context Staff  \relative c' \new Voice{
    \set Staff.midiInstrument = "electric bass (finger)"
    \times 2/3 {bes8 a bes ~ } bes4  \times 2/3 { r8 g f } | % 1
    bes,8. bes16 d4 f4 | % 2
    ges2 ~   \times 2/3 { ges8 ~ ges a } | %3
    d4 a gis  | % 4
      g bes ees | %5 
     d bes f | % 6
      <c e>
     \times 2/3 {r8 g a} \times 2/3 {c e g } bes4 r
     \times 2/3 {r8 r aes}
     \times 2/3 {des c des~} des4 \times 2/3 {r8 bes aes}
      des,8. des16 f4 aes4 a2~ \times 2/3 {a8~ a c} f4
      \times 2/3 {r8 a g } \times 2/3 { f c a }
      \times 2/3 {bes8 a bes} \times 2/3 {r des, ees}
      ges4 \times 2/3 {des'8 c des} \times 2/3 {r des ees}
      f8 r f,4 f8 f f f f f f f f f
      r f f f f f f f f f f bes,
      \textSpannerDown
       \override TextSpanner #'edge-text = #'("poco rall " . "")
      ees4\startTextSpan d  c bes8-.\stopTextSpan 
     \break
       r_\markup { \italic a tempo } r4 r
      ees2.~ees bes~bes \bar "||"
    
}

\score {
%
 %   \context Staff <<
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
	%    \override SpacingSpanner #'spacing-increment = #3
	}
    }

    \midi {
      \context {
       \Score
%        tempoWholesPerMinute = #(ly:make-moment 60 4)
       }
     }


}

