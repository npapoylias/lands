as yet unclassified
alternativesFor: aState
	| firsts newStates currentRule |
	newStates := ParsecCollection new.
	currentRule := aState ruleAtDot.
	firsts := currentRule firsts.
	1 to: firsts size do: [ :j | 
		| alternative |
		alternative := firsts at: j. "too expensive should be done before"
		1 to: alternative size do: [ :i | 
			|rule|
			rule := alternative at: i. 
			rule isEmptyOrEof
				ifTrue: [ self emptyEofFor: rule given: aState ]
				ifFalse: [ self try: rule index: j for: aState given: newStates ].
			currentRule isOrdered
				ifTrue: [ newStates isNotEmpty ifTrue: [ ^ newStates ]  ]
		].
	].
	"newStates isEmpty ifTrue: [ ]."	"no need for follow since e is treated as terminal"
	^ newStates