recursive-ordering
updateLastSeenOnBackTrackFrom: oldState to: aNewState given: aBtState
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

	(aBtState lastSeenStackIndex = 0
		or: [ aBtState lastSeenStackIndex isNil ])
		ifFalse: [ | btIndex lastIndex |
			btIndex := aBtState lastSeenStackIndex.
			btIndex value to: lastSeenStack size do: [ :i | lastIndex := lastSeenStack pop ].
			lastIndex ifNotNil: [ 
				lastIndex values do: [ :indexes | | i |
							i := 0.
							indexes 
								detect: [ :index | i := i + 1. index y >= aBtState readingPosition ]
								ifFound: [ :index | "self halt." indexes removeAllFromIndex: i ] ].
					"self halt."
					lastSeenStack push: lastIndex	"btIndex key shallowValueCopy" ] 
		].
	
	aBtState completedState
		ifNotNil: [ aBtState completedState rule isOrdered
				ifTrue: [ self popLastSeenAt: aBtState completedState ] ]
	"btStates that were
		pushed together share the same lastSeenIndex"

	"(aNewState rule isOrdered and: [ aNewState indexedParent isNotNil])
			ifTrue: [ 
				s := (lastSeenIndex at: aNewState indexedParent name ifAbsentPut: [ Stack new ]).
				aNewState isComplete not 
					ifTrue: [ s push: aNewState index ].
			]"




	"new state should have been updated from with backtrack .. add"