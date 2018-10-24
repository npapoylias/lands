recursive-ordering
updateLastSeenOnCompleteFor: aState
	|s |

	"aState rule parent ifNil: [ ^ self ]."
	(aState rule  isOrdered and: [(aState rule recursiveIndexOf: aState index) = -1])
		ifTrue: [ self exitCurrentLastSeenScope ]
		ifFalse: [ 
			s := self lastSeenIndex at: aState rule name ifAbsentPut: [ Stack new ].
			s ifNotEmpty: [ [s pop = aState index] whileFalse ]
		].
