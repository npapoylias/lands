tests
testParseAsString
	|result|
	result := (GrayLexer new parseAsString: 'hallo+*[]world\n').
	self assert: result asList = {#GrayLexerConcat. {
							{#GrayLexerOperand.  'hallo+*[]world'}. 
							{#GrayLexerEscape. Character cr}. 
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