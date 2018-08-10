as yet unclassified
recursiveAlternativesFor: aState
	|alternatives|
	alternatives := self alternativesFor: aState.
	^ aState ruleAtDot  == aState rule parent
		ifTrue: [ |index|
			index := aState rule parent indexOf: aState rule. 
			alternatives copyFrom: index + (aState rule recursiveIndex) to: alternatives size  
		] ifFalse: [ alternatives ]

	