accessing
block: anObject
	anObject argumentCount = 1
		ifTrue: [ block := anObject ]
		ifFalse: [ block := [ :b | b allButFirst inject: b first into: anObject ] ]