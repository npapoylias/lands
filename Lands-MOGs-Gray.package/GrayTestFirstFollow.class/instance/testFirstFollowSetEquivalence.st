tests
testFirstFollowSetEquivalence

	|grammar|

	grammar := MOGrammar firstFollowExample.
	self assert: (grammar at: #E) firstsAsStrings = (grammar at: #F) firstsAsStrings.
	self assert: (grammar at: #E) firstsAsStrings = (grammar at: #T) firstsAsStrings.
	self assert: (grammar at: #E) followAsStrings = (grammar at: #E_) followAsStrings.
	self assert: (grammar at: #T) followAsStrings = (grammar at: #T_) followAsStrings.
