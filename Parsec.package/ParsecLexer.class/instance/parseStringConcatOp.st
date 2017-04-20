parseAsString
parseStringConcatOp

 	|atom peek|
	atom := '' writeStream.
	peek := stream peek.
	$\ == peek ifTrue: [ ^ self parseEscape ].
	[stream peek == $\] 
		whileFalse: [ atom nextPut: stream next ].
	^ ParsecLexerOperand new: atom contents.
		