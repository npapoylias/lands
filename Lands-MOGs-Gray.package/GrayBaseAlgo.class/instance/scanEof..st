as yet unclassified
scanEof: aState

	^ input size = aState to
		ifTrue: [ 
			charts nextAdd: 
				(aState asScannerStateFrom: readingPosition upTo: readingPosition ending: readingPosition withIndex: 1). true ]
		ifFalse: [ false ]	
