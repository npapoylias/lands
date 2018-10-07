recursive-ordering
updateLastSeenOnCompleteFor: aState
	|s|
	"aState rule name = #message ifTrue: [ self halt ]." 
	aState rule recParent ifNil: [ ^ self ].
	(aState rule recParent isOrdered and: [(aState rule recParent recursiveIndexOf: aState index) = -1])
		ifTrue: [ self exitCurrentLastSeenScope ]
		ifFalse: [ 
			s := self lastSeenIndex at: aState rule recParent name ifAbsentPut: [ Stack new ].
			s ifNotEmpty: [ s pop ]
		].
