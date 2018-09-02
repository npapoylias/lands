menu
proceed

	"interrupt ifTrue: [ self halt: 'Parsing is taking too long ? Investigate !' ]."

	^ (chartIndex + 1) <= self size
			ifTrue: [ chartIndex := chartIndex + 1. current := self at: chartIndex. true ]
			ifFalse: [ false ]