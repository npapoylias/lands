tests
testParseAsString
	|result|
	result := (ParsecLexer new parseAsString: 'hallo+*[]world\n').
	self assert: result asList = {#ParsecLexerConcat. {
							{#ParsecLexerOperand.  'hallo+*[]world'}. 
							{#ParsecLexerEscape. Character cr}. 
						}}.
	self assert: (result match: 'hallo+*[]world\n') not.
	self assert: (result match: 'hallo+*[]world
').
	self assert: (result asNFA match: 'hallo+*[]world\n') not.
	self assert: (result asNFA match: 'hallo+*[]world
	').
	self assert: (result asDFA match: 'hallo+*[]world\n') not.
	self assert: (result asDFA match: 'hallo+*[]world
	').