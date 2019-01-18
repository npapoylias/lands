recursive-ordering
updateLastSeenOnBackTrackFrom: oldState to: aNewState given: aBtState
 | btIndex lastIndex |

			btIndex := aBtState lastSeenStackIndex.
			(btIndex > 1 and: [ btIndex <= lastSeenStack size ])
				ifTrue: [ btIndex to: lastSeenStack size do: [ :i | lastIndex := lastSeenStack pop. ]]
				ifFalse: [ lastIndex := lastSeenStack pop ].
				lastIndex values do: [ :indexes | | i |
							i := 0.
							indexes 
								detect: [ :index | i := i + 1. index y >= aBtState readingPosition ]
								ifFound: [ :index | "self halt." indexes removeAllFromIndex: i ] ].
			lastSeenStack push: lastIndex	"btIndex key shallowValueCopy".
	
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