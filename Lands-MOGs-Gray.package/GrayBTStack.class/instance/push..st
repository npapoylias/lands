adding
push: anItem

	anItem lastSeenStackIndex: charts btLastSeenIndex.
	
	"self 
		detect: [ :state | state hasFailed and: [state equalTo: anItem ]]
		ifNone: [" (self check: anItem state) ifNil: [ self add: anItem ]"]" "Do we need both checks here ?"
		
	