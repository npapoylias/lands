recursive-ordering
updateLastSeenForBackTrackedOrderedChild: stateAdded

	(stateAdded rule parent isOrdered and: [ stateAdded isIncomplete ])
		ifTrue: [ (stateAdded rule parent recursiveIndexOf: stateAdded index) = -1
				ifTrue: [ stateAdded isStarting ifTrue: [self enterNewLastSeenScope] ]
				ifFalse: [ 
					self lastSeenAt: stateAdded rule parent name push: stateAdded 
					]	"backTrack for previous complete returning to child of ordered rule" ]