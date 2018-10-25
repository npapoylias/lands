recursive-ordering
updateLastSeenOnCompleteFor: aState
	| s |
	aState rule name = #expression
		ifTrue: [ self halt ].
	"aState rule parent ifNil: [ ^ self ]."
	(aState rule isOrdered
		and: [ (aState rule recursiveIndexOf: aState index) = -1 ])
		ifTrue: [ self exitCurrentLastSeenScope ]
		ifFalse: [ self popLastSeenAt: aState rule name ]