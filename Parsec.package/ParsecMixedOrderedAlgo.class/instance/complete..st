changing suspended state
complete: aState

	aState rule isOrdered
		ifTrue: [ super complete: aState ]
		ifFalse: [ super completeUnordered: aState ].
	"rewind last seen -- for every complete or stack indexes ?"
	lastSeenIndex 
		at: aState rule parent 
		put: 1. 