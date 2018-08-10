as yet unclassified
recursiveAlternativesFor: aState
	|alternatives|
	alternatives := self alternativesFor: aState.
	^ aState ruleAtDot  == aState rule parent
		ifTrue: [ |index|
			index := aState rule parent indexOf: aState rule. 
			alternatives copyFrom: index + 1 to: alternatives size  
		] ifFalse: [ alternatives ]

	