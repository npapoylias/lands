changing suspended state
complete: aState

	aState rule isOrdered
		ifTrue: [ super complete: aState] 
		ifFalse: [super completeUnordered: aState].
	