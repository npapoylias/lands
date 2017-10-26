as yet unclassified
proceed

	^ (chartIndex + 1) <= self size
			ifTrue: [ chartIndex := chartIndex + 1. current := self at: chartIndex. true ]
			ifFalse: [ false ]