tests
testCompositeRegWithExtentions
	
	|result|

	result := (GrayLexer new parse: 'asd.\n[a-zA-Z]+aaa?|a{3}(abc|d){2,5}').
	self assert: result class = GrayLexerOption.
	self assert: result first class = GrayLexerConcat.
	self assert: result first first class = GrayLexerOperand.
	self assert: result first first operand = 'asd'.
	self assert: result first second class = GrayLexerAny.
	self assert: result first second operand = nil.
	self assert: result first third class = GrayLexerEscape.
	self assert: result first fourth class = GrayLexerPlus.
	"self assert: result first fourth operand class = TotLexerOption." "flattened"
	self assert: result second class = GrayLexerConcat.
	self assert: result second first class = GrayLexerRepetition.
	self assert: result second first operand operand = $a.
	self assert: result second second class = GrayLexerRepetition.
	self assert: result second second operand class = GrayLexerOption.	
	self assert: result second second operand first class = GrayLexerOperand.	
	self assert: result second second operand first operand = 'abc'.	
	self assert: result second second operand second class = GrayLexerOperand.	
	self assert: result second second operand second operand = $d.	
	