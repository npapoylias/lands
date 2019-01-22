as yet unclassified
scanEof: aState

	^ (input size = aState to or: [ input peek = Character null ])
		ifTrue: [ 
			charts nextAdd: 
				(aState asScannerStateFrom: readingPosition upTo: readingPosition ending: readingPosition withIndex: 1). true ]
		ifFalse: [ false ]	
