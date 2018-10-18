*Parsec
msg

	^ RBMessageNode
			receiver: nil "will be supplied later"
			selector: self string asSymbol
			arguments: #() "will be filled later if needed"
	