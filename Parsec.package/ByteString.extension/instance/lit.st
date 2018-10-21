*Parsec
lit

	^ RBLiteralValueNode "ie loose the quotes"
		value: (self copyFrom: 2 to: self size -1)