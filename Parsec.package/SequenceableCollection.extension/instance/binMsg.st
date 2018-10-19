*Parsec
binMsg
	^ RBMessageNode
		receiver: nil lit "will be supplied later"
		selector: self first string asSymbol
		arguments: (self second isNode ifTrue: [ {self second} ] ifFalse: [ {self second lit} ])