tests
testCompositeReg
	
	|result|

	result := (GrayLexer new parse: 'asdf+aaa?|a*(abc|d)?').
	self assert: result class = GrayLexerOption.
	self assert: result first class = GrayLexerConcat.
	self assert: result first first class = GrayLexerPlus.
	self assert: result first first operand operand = 'asdf'.
	self assert: result first second class = GrayLexerOpt.
	self assert: result first second operand operand = 'aaa'.
	self assert: result second class = GrayLexerConcat.
	self assert: result second first class = GrayLexerStar.
	self assert: result second first operand operand = $a.
	self assert: result second second class = GrayLexerOpt.
	self assert: result second second operand class = GrayLexerOption.	
	self assert: result second second operand first class = GrayLexerOperand.	
	self assert: result second second operand first operand = 'abc'.	
	self assert: result second second operand second class = GrayLexerOperand.	
	self assert: result second second operand second operand = $d.	
	