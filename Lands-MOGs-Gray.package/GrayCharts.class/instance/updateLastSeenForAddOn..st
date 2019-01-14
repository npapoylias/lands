recursive-ordering
updateLastSeenForAddOn: aState

	aState isComplete ifTrue: [ ^ self updateLastSeenOnCompleteFor: aState].
	"aState rule ifNil: [ ^ self ]."
	aState rule isOrdered 
		ifTrue: [   
			(aState rule recursiveIndexOf: aState index) = -1
				ifTrue: [ aState isStarting ifTrue: [self enterNewLastSeenScope] ]
				ifFalse: [ 
					self lastSeenAt: aState rule name  push: aState 
				].
		]