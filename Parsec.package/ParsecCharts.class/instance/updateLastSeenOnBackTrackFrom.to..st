recursive-ordering
updateLastSeenOnBackTrackFrom: oldState to: aNewState
	
	oldState ifNotNil: [ |s| 
		s := lastSeenIndex at: oldState rule name ifAbsentPut: [ Stack new ].
		s ifNotEmpty: [s pop]
	]