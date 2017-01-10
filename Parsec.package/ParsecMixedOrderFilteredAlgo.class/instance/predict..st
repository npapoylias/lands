as yet unclassified
predict: aState

	| firsts currentRule |

	currentRule := aState ruleAtDot.
	firsts := currentRule firsts.
	1 to: firsts size do: [ :j | 
		| alternative |
		alternative := firsts at: j.
		1 to: alternative size do: [ :i | 
			|rule added|
			rule := alternative at: i. 
			rule isEmptyOrEof
				ifTrue: [ added := self emptyEofFor: rule given: aState ]
				ifFalse: [ added := self try: rule index: j for: aState]. 
			currentRule isOrdered & added ifTrue: [ ^ self ].
		]
	].
	