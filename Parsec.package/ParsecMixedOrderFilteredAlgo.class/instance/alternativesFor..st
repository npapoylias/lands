as yet unclassified
alternativesFor: aState
	| firsts newStates currentRule |
	
	newStates := ParsecCollection new.
	currentRule := aState ruleAtDot.
	firsts := currentRule firsts.
	
	1 to: firsts size do: [ :j | 
		| alternative|
		alternative := firsts at: j.
		alternative doWithIndex: [ :rule :i |
			rule isEmptyOrEof
				ifTrue: [ self emptyEofFor: rule given: aState ]
				ifFalse: [ self try: rule index: j for: aState given: newStates ]. "check how more than one matches are handled here"		
			currentRule isOrdered ifTrue: [ newStates isNotEmpty ifTrue: [ ^ newStates ] ] "ordered case"
		]
	].
	"newStates isEmpty ifTrue: [ ]."	"no need for follow since e is treated as terminal"
	^ newStates