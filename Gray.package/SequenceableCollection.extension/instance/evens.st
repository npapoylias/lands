*Gray
evens
	
	|evens|
	evens := self class new.
	self doWithIndex: [ :item :i | i % 2 == 1 ifTrue: [ evens add: item ] ].
	^ evens