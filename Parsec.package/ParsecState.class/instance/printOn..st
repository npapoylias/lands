printing
printOn: aStream

	aStream nextPutAll: rule prettyName; nextPutAll: ' --> '.
	
	dRefRightHand ifNotNil: [
		dRefRightHand doWithIndex: [:item :index |
			dotPosition + 1 = index ifTrue: [ aStream nextPutAll: ' . ' ].
			aStream nextPutAll: item prettyName; nextPutAll: ' '.
		]
	].

	aStream nextPutAll: ' [ '; nextPutAll: (from->to) asString; nextPutAll: ' ] '.	
	aStream nextPutAll: ' [ '; nextPutAll: (fromTerminal->toTerminal) asString; nextPutAll: ' ] '.	
