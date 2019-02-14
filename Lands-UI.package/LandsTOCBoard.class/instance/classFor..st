accessing-classes
classFor: anItem
	
	^ Smalltalk globals at: (self classNameFor: anItem) asSymbol