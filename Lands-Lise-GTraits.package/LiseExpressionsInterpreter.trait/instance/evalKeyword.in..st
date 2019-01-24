eval
evalKeyword: anAtomOrList in: anEnvironment

	^ self perform: (anAtomOrList first asString , ':in:') asSymbol with: anAtomOrList with: anEnvironment.

