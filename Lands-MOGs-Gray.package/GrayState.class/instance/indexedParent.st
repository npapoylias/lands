accessing
indexedParent

	^ rule isOrdered
			ifTrue: [ rule ]
			ifFalse: [ rule parent ] 