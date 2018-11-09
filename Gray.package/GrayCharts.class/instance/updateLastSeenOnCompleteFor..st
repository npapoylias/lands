recursive-ordering
updateLastSeenOnCompleteFor: aState

	"aState rule parent ifNil: [ ^ self ]."
	(aState rule isOrdered
		and: [ (aState rule recursiveIndexOf: aState index) = -1 ])
		ifTrue: [ self exitCurrentLastSeenScope ]
		ifFalse: [ self popLastSeenAt: aState ]