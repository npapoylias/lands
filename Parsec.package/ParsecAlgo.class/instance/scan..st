public api
scan: aState

	|match |
	
	aState expectingEmpty ifTrue: [ ^ self scanEmpty: aState ].
	aState expectingEof ifTrue: [ ^ self scanEof: aState ].

	match := aState ruleAtDot 
		terminalMatchForInput: input
		atPosition: aState to.
			
	(match > aState to)
		ifTrue: [ 
			charts nextAdd: 
				(aState 
					asScannerStateFrom: aState to 
					upTo: input lastTokenPos 
					ending: match 
					withIndex: 1). 
				"always 1 for terminals"
			match > readingPosition ifTrue: [readingPosition := match].
			^ true
		].
	
	^ false