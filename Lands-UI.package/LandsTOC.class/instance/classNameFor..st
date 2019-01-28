accessing
classNameFor: anItem
	^ anItem isSymbol
		ifTrue: [ anItem ]
		ifFalse: [ classPreFix , (anItem x key select: [ :c | c isAlphaNumeric ]) ]