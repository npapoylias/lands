*Parsec
binMsg
	^ RBMessageNode
		receiver: nil "will be supplied later"
		selector: self first string asSymbol
		arguments: (self second isNode ifTrue: [ self second ] ifFalse: [ self second lit ])