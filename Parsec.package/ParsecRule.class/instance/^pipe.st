logical operations
| aSymbolOrString

	rightHandSide addLast: ParsecCollection new.
	self , aSymbolOrString.
	rightHandSide size ~= recursiveIndex size
		ifTrue: [	 recursiveIndex add: 0 ]. "self recursive by default if this is ordered"