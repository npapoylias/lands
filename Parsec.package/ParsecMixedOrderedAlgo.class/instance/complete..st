changing suspended state
complete: aState

	aState rule isOrdered
		ifTrue: [ charts memoizeLastSeenIndex. super complete: aState] 
		ifFalse: [super completeUnordered: aState].
	