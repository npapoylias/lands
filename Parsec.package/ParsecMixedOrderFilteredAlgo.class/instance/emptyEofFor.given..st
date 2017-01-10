as yet unclassified
emptyEofFor: rule given: aState
	^ rule isEmpty
		ifTrue: [ charts
				nextEmptyAdd:
					(aState
						asScannerStateFrom: readingPosition
						to: readingPosition
						withIndex: 1). true ]
		ifFalse: [ input size == aState to
				ifTrue: [ charts
						nextAdd:
							(aState
								asScannerStateFrom: readingPosition
								to: readingPosition
								withIndex: 1). true ] ifFalse: [ false ] ]