as yet unclassified
alternativesFor: aState

	| firsts currentRule |
	
	alternatives := ParsecCollection new.

	currentRule := aState ruleAtDot.
	firsts := currentRule firsts.
	1 to: firsts size do: [ :j | 
		| alternative |
		alternative := firsts at: j.
		1 to: alternative size do: [ :i | 
			|rule "added"|
			rule := alternative at: i. 
			rule isEmptyOrEof
				ifTrue: [ "added :=" self emptyEofFor: rule index: j given: aState ]
				ifFalse: [ "added :="  self try: rule index: j for: aState]. 
			"currentRule isOrdered & added ifTrue: [ ^ alternatives ]." "LL(1) ?"
		]
	].

	^ alternatives
	