recursive-ordering
updateLastSeenOnBackTrackFrom: oldState to: aNewState
	
	oldState ifNotNil: [ |s |
		s := lastSeenIndex at: oldState indexedParent name ifAbsent: [ nil ].
		s ifNotNil: [s ifNotEmpty: [ s pop ]].
		aNewState indexedParent 
			ifNotNil: [ (lastSeenIndex at: aNewState indexedParent name) push: aNewState index ].
	].

	"new state should have been updated from with backtrack .. add"