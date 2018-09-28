adding
push: anItem

	anItem lastSeenIndex: charts lastSeenIndexCopy. 
	
	self 
		detect: [ :state | state hasFailed and: [state equalTo: anItem ]]
		ifNone: [ self add: anItem ]