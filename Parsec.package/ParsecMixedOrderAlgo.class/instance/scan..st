as yet unclassified
scan: aState

	aState ruleAtDot isOrdered
		ifTrue: [ super scan: aState ]
		ifFalse: [ super scanUnordered: aState ]