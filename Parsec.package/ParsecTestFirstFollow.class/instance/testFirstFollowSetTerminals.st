tests
testFirstFollowSetTerminals

	|grammar|

	grammar := ParsecGrammar firstFollowExample.
	self assert: (grammar at: #E) firsts = { '(' , '[a-zA-Z][a-zA-Z0-9]*' } asSet.
	self assert: (grammar at: #E_) firsts = { '+' , #e } asSet.
	self assert: (grammar at: #T_) firsts = { '*' , #e } asSet.
	self assert: (grammar at: #E) follow = {')' , #Eof} asSet.	
	self assert: (grammar at: #T) follow = {'+', ')' , #Eof} asSet.	
	self assert: (grammar at: #T) follow = {'*' , '+', ')' , #Eof} asSet.	