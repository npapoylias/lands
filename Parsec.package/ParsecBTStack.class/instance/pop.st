adding
pop

	| ret |
	self isEmpty ifTrue: [ ^ nil ].
	ret := self at: currentSize.
	self at: currentSize put: nil.
	currentSize := currentSize - 1.
	ret hasFailed ifTrue: [ ^ self pop ].
	^ ret