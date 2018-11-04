as yet unclassified
metaModelNameFor: aName
	|nameIndex entityNames index|
	nameIndex := 0.
	index := 1.
	entityNames := { 'Modeler' . 'Domain' . 'Blueprint' }. 
	[index <= entityNames size and: [nameIndex = 0]] whileTrue: [  
		nameIndex := self class name 
			findLastOccurrenceOfString: (entityNames at: index) 
			startingAt: 1.
			index := index + 1
	].
	^ nameIndex = 0 
		ifTrue: [ aName ]
		ifFalse: [  aName copyFrom: 1 to: nameIndex - 1 ]