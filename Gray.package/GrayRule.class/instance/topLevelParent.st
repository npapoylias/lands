copying
topLevelParent

	^ self isSubRule 
		ifFalse: [ self ]
		ifTrue: [ self parent topLevelParent]