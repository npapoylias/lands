tests
testString

	|result|	
	
	result := (GrayLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"').
	self assert: result asList = {#GrayLexerConcat. {
						{#GrayLexerOperand. $"}. 
						{#GrayLexerStar. 
							{#GrayLexerOption. {
								{#GrayLexerConcat. {
									{#GrayLexerEscape. $\}. 
									{#GrayLexerGroup. 
									{#GrayLexerOption. {
										{#GrayLexerEscape. $\}. 
										{#GrayLexerOperand. $/}. 
										{#GrayLexerOperand. $"}. 
										{#GrayLexerOperand. $b}. 
										{#GrayLexerOperand. $f}. 
										{#GrayLexerOperand. $n}. 
										{#GrayLexerOperand. $r}. 
										{#GrayLexerOperand. $t}}}}}}. 
						 		{#GrayLexerConcat. {
									{#GrayLexerEscape. $\}. 
									{#GrayLexerOperand. $u}. 
									{#GrayLexerRepetition. { #GrayLexerGroup. 
									{#GrayLexerOption. {
										{#GrayLexerRange. $0->$9}. 
										{#GrayLexerRange. $a->$f}. 
										{#GrayLexerRange. $A->$F}}}}}}}. 
								{#GrayLexerNotGroup. 
									{#GrayLexerOption. {
										{#GrayLexerEscape. $\}. 
										{#GrayLexerOperand. $"}}}}}}}. 
						{#GrayLexerOperand. $"}}}.
		self assert: (result match: '"hallo world\n"').
		self assert: (result match: '"hallo world\n') not.