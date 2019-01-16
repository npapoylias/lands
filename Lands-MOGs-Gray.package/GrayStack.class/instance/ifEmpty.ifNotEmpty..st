accessing
ifEmpty: aBlock ifNotEmpty: anotherBlock

	^ self isEmpty ifTrue: [ aBlock value ] ifFalse: [ anotherBlock value ]