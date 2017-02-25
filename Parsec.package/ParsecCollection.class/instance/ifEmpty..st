accessing
ifEmpty: aBlock

	^ self isEmpty 
		ifTrue: [ aBlock value ]
		ifFalse: [ self ]