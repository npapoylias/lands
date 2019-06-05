recursive-ordering
lastSeenIndex

	^ lastSeenStack top ifNil: [ lastSeenStack push: Dictionary new ]