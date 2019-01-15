as yet unclassified
alternativesFor: aState
	
	"inlined super and filter alternatives"
	
	| newStates rule |
	
	newStates := GrayCollection new.
	rule := aState ruleAtDot.
	
	1 to: rule rightHandSide size do: [ :i | "we can use either predict either first here"
		((rule directRefsAt: i) first isNot | (self check: (rule predict at: i) at: aState to))
				ifTrue: [  
					newStates
						add:
						((GrayState
							on: aState ruleAtDot
							alternative: i
							from: aState to
							to: aState to
							dot: 0)
							fromTerminal: aState toTerminal;
							toTerminal: aState toTerminal) ] 
					ifFalse: [ newStates add: nil ]
	].
				
	^ newStates
