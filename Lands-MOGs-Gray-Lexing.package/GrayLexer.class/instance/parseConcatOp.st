parsing
parseConcatOp

	|operand|
	operand := self parseAtom.
	('+*?{' includes: stream peek) 
		ifTrue: [ ^ self parseUnaryOp: operand ]
		ifFalse: [ "flatOp optimization"
			((operand isKindOf: GrayLexerOperand) ifTrue: [ ^ operand ] ifFalse: [ ^ GrayLexerOperand new: operand ]).  ]