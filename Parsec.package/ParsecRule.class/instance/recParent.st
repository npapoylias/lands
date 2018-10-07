copying
recParent

	^ self isOrdered 
		ifFalse: [ self parent ]
		ifTrue: [ self ]