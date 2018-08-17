as yet unclassified
recursiveAlternativesFor: aState
	|alternatives|
	alternatives := self alternativesFor: aState.
	^ aState ruleAtDot  == aState rule parent
		ifTrue: [ |index from|
			index := aState rule parent indexOf: aState rule. 
			from := index + (aState rule recursiveIndex).
			(alternatives 
				copyFrom: from to: alternatives size)
				addAll: (alternatives copyFrom: 1 to: from -1); 
				yourself
		] ifFalse: [ alternatives ]

	