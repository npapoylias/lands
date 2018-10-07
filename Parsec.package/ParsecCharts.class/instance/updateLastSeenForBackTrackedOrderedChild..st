recursive-ordering
updateLastSeenForBackTrackedOrderedChild: stateAdded

	(stateAdded rule parent isOrdered and: [ stateAdded isIncomplete ])
		ifTrue: [ (stateAdded rule parent recursiveIndexOf: stateAdded index) = -1
				ifTrue: [ self enterNewLastSeenScope ]
				ifFalse: [ (self lastSeenIndex
						at: stateAdded rule parent name
						ifAbsentPut: [ Stack new ]) push: stateAdded index ] ]	"backTrack for previous complete returning to child of ordered rule"