as yet unclassified
at: aSymbol

	^ self at: aSymbol ifAbsent: [ 
		outerEnvironment 
			ifNil: [ Error signal: 'Lise cannot resolve: ' , aSymbol asString ]
			ifNotNil: [outerEnvironment at: aSymbol ]
		]