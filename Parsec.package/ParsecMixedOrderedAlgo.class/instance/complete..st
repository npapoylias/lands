changing suspended state
complete: aState

	| s |
	"rewind last seen -- for every complete or stack indexes ?"
	s := lastSeenIndex at: aState rule parent ifAbsentPut: [ Stack new ].
	s ifNotEmpty: [ s pop ].
	aState rule isOrdered
		ifTrue: [ super complete: aState ]
		ifFalse: [ super completeUnordered: aState ].
	