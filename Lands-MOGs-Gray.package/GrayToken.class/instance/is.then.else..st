instance creation
is: aString then: aBlock else: anotherBlock

	^ self string = aString ifTrue: aBlock ifFalse: anotherBlock