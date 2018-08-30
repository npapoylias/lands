adding
nextAdd: aState
	"optimized version without anySatisfy.. where are my macros"
	
	|cur next|
	self atEnd ifTrue: [self augment]. 
	next := self next.
	"cur := self current.
	1 to: cur size do: [ :i | ((cur at: i) equalTo: aState) ifTrue: [ ^ self ]  ]."
	self next add: aState. 