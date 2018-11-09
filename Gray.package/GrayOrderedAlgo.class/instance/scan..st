public api
scan: aState
	
	"in pure succeed mode, leaving this here for further experiments"
	
	^ super scan: aState
	
	"^ (super scan: aState)
		ifFalse: [self backTrack]
		ifTrue: [ true ]"

	
