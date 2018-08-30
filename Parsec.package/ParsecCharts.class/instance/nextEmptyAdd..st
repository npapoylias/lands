adding
nextEmptyAdd: aState
	self atEnd
		ifTrue: [ self augment ].
	self next add: aState.
	