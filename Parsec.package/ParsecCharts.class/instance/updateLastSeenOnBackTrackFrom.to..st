recursive-ordering
updateLastSeenOnBackTrackFrom: oldState to: aNewState
	
	oldState rule parent ifNotNil: [ |s| 
		s := lastSeenIndex at: oldState rule parent name ifAbsent: [ nil ].
		s ifNotNil: [s ifNotEmpty: [ s pop ]]
	].

	"new state should have been updated from with backtrack .. add"