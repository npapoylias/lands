*Parsec
msg

	^ RBMessageNode
			receiver: nil lit "will be supplied later"
			selector: self string asSymbol
			arguments: #() "will be filled later if needed"
	