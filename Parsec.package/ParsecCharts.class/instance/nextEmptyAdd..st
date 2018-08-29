adding
nextEmptyAdd: aState
	|next|
	next := self next.
	1 to: next size do: [ :i | ((next at: i) equalTo: aState) ifTrue: [ ^ self ]  ].
	self atEnd
		ifTrue: [ self augment ].
	self next add: aState