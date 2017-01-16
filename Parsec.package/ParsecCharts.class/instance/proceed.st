as yet unclassified
proceed

	^ (chartIndex := chartIndex + 1) <= self size
			ifTrue: [ current := self at: chartIndex. true ]
			ifFalse: [ false ]