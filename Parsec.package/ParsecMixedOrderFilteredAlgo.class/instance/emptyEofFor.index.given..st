as yet unclassified
emptyEofFor: rule index: anIndex given: aState

	^ rule isEmpty
		ifTrue: [ charts
				nextEmptyAdd:
					(aState
						asScannerStateFrom: readingPosition
						to: readingPosition
						withIndex: anIndex). true ]
		ifFalse: [ input size == aState to
				ifTrue: [ charts
						nextAdd:
							(aState
								asScannerStateFrom: readingPosition
								to: readingPosition
								withIndex: anIndex). true ] ifFalse: [ false ] ]