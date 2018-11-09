instance creation
printNameOn: aStream
	| title |
	title := grayState ifNil: [ self class name ] ifNotNil: [ grayState rule name ].
	aStream
		nextPutAll: (title first isVowel ifTrue: ['an '] ifFalse: ['a ']);
		nextPutAll: title