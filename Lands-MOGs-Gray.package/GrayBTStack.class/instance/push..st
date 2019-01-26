adding
push: anItem
	"protocol: adding"

	anItem lastSeenStackIndex: charts lastSeenStackCopy.
 
	"self 
		detect: [ :state | state hasFailed and: [state equalTo: anItem ]]
		ifNone: ["
	(self check: anItem state) ifNil: [ "]" "Do we need both checks here ?" self add: anItem ]