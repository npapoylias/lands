as yet unclassified
recursiveAlternativesFor: aState

	^ self 
		reOrder: (super alternativesFor: aState) 
		startingAt: (ruleToAlternativeIndex at: aState ruleAtDot ifAbsent: [1])