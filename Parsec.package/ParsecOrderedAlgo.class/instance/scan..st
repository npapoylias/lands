public api
scan: aState

	^ (super scan: aState)
		ifFalse: [self backTrack]
		ifTrue: [ true ]

	
