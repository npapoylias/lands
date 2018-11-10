tests
testFirstFollowSetTerminals

	|grammar|

	grammar := MOGrammar firstFollowExample.
	self assert: (grammar at: #E) firstsAsStrings = { '\(' . '[a-zA-Z][a-zA-Z0-9]*' } asSet.
	self assert: (grammar at: #E_) firstsAsStrings = { '\+' . #e } asSet.
	self assert: (grammar at: #T_) firstsAsStrings = { '\*' . #e } asSet.
	self assert: (grammar at: #E) followAsStrings = {'\)' . #Eof} asSet.	
	self assert: (grammar at: #T) followAsStrings = {'\+'. '\)' . #Eof} asSet.	
	self assert: (grammar at: #F) followAsStrings = {'\*' . '\+' . '\)' . #Eof} asSet.	