adding
push: anItem

	anItem lastSeenIndex: charts lastSeenIndex deepCopy. "this is a copy for every btState,
	there is room for optimizations here"
	
	self 
		detect: [ :state | state hasFailed and: [state equalTo: anItem ]]
		ifNone: [ self add: anItem ]