adding
push: anItem

	anItem lastSeenStackIndex: charts lastSeenStackCopy. 
	
	self 
		detect: [ :state | state hasFailed and: [state equalTo: anItem ]]
		ifNone: [ self add: anItem ]