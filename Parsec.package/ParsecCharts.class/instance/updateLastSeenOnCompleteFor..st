recursive-ordering
updateLastSeenOnCompleteFor: aState
	|s|
	s := lastSeenIndex at: aState rule name ifAbsentPut: [ Stack new ].
	s ifNotEmpty: [ s pop ].  