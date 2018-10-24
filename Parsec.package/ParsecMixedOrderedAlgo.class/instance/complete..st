changing suspended state
complete: aState

	aState rule isOrdered
		ifTrue: [
			charts memoizeLastSeenStack.
			super complete: aState.
		] ifFalse: [super completeUnordered: aState].
	