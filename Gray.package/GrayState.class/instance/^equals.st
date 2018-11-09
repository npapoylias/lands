comparing
= anotherState

	^ anotherState class == self class
		ifFalse: [ false ]
		ifTrue: [ self equalTo: anotherState ]