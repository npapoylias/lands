changing suspended state
complete: aState

	| s |
	"rewind last seen -- for every complete or stack indexes ?"
	aState rule isOrdered
		ifTrue: [ 
			super complete: aState.
			s := lastSeenIndex at: aState rule name ifAbsentPut: [ Stack new ].
			s ifNotEmpty: [ s pop ].  
		] ifFalse: [super completeUnordered: aState].
	