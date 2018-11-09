as yet unclassified
at: aSymbol put: value

	^ (self keys includes: aSymbol)
		ifTrue: [ super at: aSymbol put: value ]
		ifFalse: [ outerEnvironment at: aSymbol put: value ]