as yet unclassified
recursiveAlternativesFor: aState
	|alternatives index from|
	alternatives := self alternativesFor: aState.
	lastSeenIndex 
		at: aState rule parent 
		put: (aState rule parent indexOf: aState rule). 
	index := lastSeenIndex at: aState ruleAtDot ifAbsent: [1]. 
	from := index + (aState rule recursiveIndex).
	^ (alternatives 
		copyFrom: from to: alternatives size)
		addAll: (alternatives copyFrom: 1 to: from -1); 
		yourself

	