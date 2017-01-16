as yet unclassified
alternativesFor: aState
	
	"inlined super and filter alternatives"
	
	| newStates rule |
	
	newStates := ParsecCollection new.
	rule := aState ruleAtDot.
	
	1 to: rule rightHandSide size do: [ :i | 
		((rule directRefsAt: i) first isNot | (self check: (rule predict at: i) at: aState to))
				ifTrue: [  
					newStates
						add:
						((ParsecState
							on: aState ruleAtDot
							alternative: i
							from: aState to
							to: aState to
							dot: 0)
							fromTerminal: aState toTerminal;
							toTerminal: aState toTerminal) ] 
	].
				
	^ newStates
