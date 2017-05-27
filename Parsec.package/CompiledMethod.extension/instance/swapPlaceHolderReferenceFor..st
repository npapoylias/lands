*Parsec
swapPlaceHolderReferenceFor: anObject

	|globalVar|
	
	"probably this works incrementally with multiple refs since they are incrementally swapped"
	
	globalVar := (GlobalVariable key: #PlaceHolderReference value: PlaceHolderReference).
	
	1 to: self numLiterals do: [ :i | 
		(self literalAt: i) = globalVar
			ifTrue: [ globalVar value: anObject. ^ self literalAt: i put: globalVar ]	
	]