changing suspended state
complete: aState

	aState rule isOrdered
		ifTrue: [ charts updateLastSeenBackTrackCopy. super complete: aState] 
		ifFalse: [super completeUnordered: aState].
	