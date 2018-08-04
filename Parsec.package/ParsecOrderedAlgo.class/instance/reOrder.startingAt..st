accessing
reOrder: aCollection startingAt: index

	^ index == 1 
		ifTrue: [aCollection]
		ifFalse: [(aCollection copyFrom: index to: aCollection size) "addAll: (aCollection copyFrom: 1 to: index - 1); yourself"]