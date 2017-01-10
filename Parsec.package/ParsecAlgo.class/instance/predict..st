as yet unclassified
predict: aState

	"(aState expectingAnd or: [ aState expectingNot ]) 
		ifTrue: [ ^ self forkToHandle: aState ]."
	

	charts currentAddAll: (self alternativesFor: aState)
		