accessing
addGlobal: aBlock as: selector

	Smalltalk globals at: selector put: aBlock.
	^ selector
			
	