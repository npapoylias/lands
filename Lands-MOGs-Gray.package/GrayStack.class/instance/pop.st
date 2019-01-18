accessing
pop

	^ currentSize = 0 ifTrue: [nil] ifFalse: [self removeLast]