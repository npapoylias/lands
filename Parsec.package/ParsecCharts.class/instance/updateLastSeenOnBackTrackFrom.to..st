recursive-ordering
updateLastSeenOnBackTrackFrom: oldState to: aNewState
	
	oldState ifNotNil: [ |s |
		oldState indexedParent ifNotNil: [
			s := lastSeenIndex at: oldState indexedParent name ifAbsent: [ nil ].
			s ifNotNil: [s ifNotEmpty: [ s pop ]].
			logging ifTrue: [ 
				Transcript cr; cr; show: oldState indexedParent name; show: ' has now RI: '; show: s; cr.
			].
		].
		(aNewState rule isOrdered not and: [ aNewState indexedParent isNotNil])
			ifTrue: [ 
				s := (lastSeenIndex at: aNewState indexedParent name ifAbsent: [ nil ]).
				(s isNotNil and: [aNewState isComplete not]) ifTrue: [ s push: aNewState index ].
				logging ifTrue: [ 
					Transcript cr; cr; show: aNewState indexedParent name; show: ' has now RI: '; show: s; cr.
				].
			]
	].

	

	"new state should have been updated from with backtrack .. add"