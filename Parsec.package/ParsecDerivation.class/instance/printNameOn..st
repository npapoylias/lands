instance creation
printNameOn: aStream
	| title |
	title := parsecState ifNil: [ self class name ] ifNotNil: [ parsecState rule name ].
	aStream
		nextPutAll: (title first isVowel ifTrue: ['an '] ifFalse: ['a ']);
		nextPutAll: title