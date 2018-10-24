recursive-ordering
updateLastSeenOnBackTrackFrom: oldState to: aNewState given: aBtState


	aNewState rule name = #expression ifTrue: [ self halt ].

	"update for old state should be obsolete"
	"oldState ifNotNil: [ |s |
		oldState indexedParent ifNotNil: [
			s := lastSeenIndex at: oldState indexedParent name ifAbsent: [ nil ].
			s ifNotNil: [s ifNotEmpty: [ s pop ]].
			logging ifTrue: [ 
				Transcript cr; cr; show: oldState indexedParent name; show: ' has now RI: '; show: s; cr.
			].
		]."
		"nil can happen in fully ordered cases"
		aBtState lastSeenStackIndex ifNotNil: [ lastSeenStack := aBtState lastSeenStackIndex deepCopy ]. 
		"btStates that were
		pushed together share the same lastSeenIndex"
	
		"(aNewState rule isOrdered and: [ aNewState indexedParent isNotNil])
			ifTrue: [ 
				s := (lastSeenIndex at: aNewState indexedParent name ifAbsentPut: [ Stack new ]).
				aNewState isComplete not 
					ifTrue: [ s push: aNewState index ].
			]"
	

	

	"new state should have been updated from with backtrack .. add"