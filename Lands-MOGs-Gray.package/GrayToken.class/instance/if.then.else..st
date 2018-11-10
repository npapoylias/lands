instance creation
if: aString then: aBlock else: anotherBlock

	^ self string = aString ifTrue: aBlock ifFalse: anotherBlock