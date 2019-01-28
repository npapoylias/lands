accessing
classNameFor: anItem
	^ anItem isSymbol
		ifTrue: [ anItem ]
		ifFalse: [ toc classPreFix , (anItem x key select: [ :c | c isAlphaNumeric ]) ]