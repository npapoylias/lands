tests
testStringParts

	|result|	
	"start with this an build your way through"
	result := (GrayLexer new parse: '"(\\[\\/"bfnrt])*"').
	self assert: (result match: '"\"\\\/\b\f\n\r\t\n"').
	result := (GrayLexer new parse: '"[^\\"]*"').
	self assert: (result match: '"meh"').
	result := (GrayLexer new parse: '"(\\u[0-9a-fA-F]{4})*"').
	self assert: (result match: '"\u0aBc\u1dfE"').
	result := (GrayLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"').
	self assert: (result match: '"hallo world\n"').

	
