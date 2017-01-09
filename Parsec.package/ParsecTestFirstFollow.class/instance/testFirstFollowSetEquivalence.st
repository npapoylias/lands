tests
testFirstFollowSetEquivalence

	|grammar|

	grammar := ParsecGrammar firstFollowExample.
	self assert: (grammar at: #E) flattenFirsts = (grammar at: #F) flattenFirsts.
	self assert: (grammar at: #E) flattenFirsts = (grammar at: #T) flattenFirsts.
	self assert: (grammar at: #T) follow = (grammar at: #T_) follow.
	self assert: (grammar at: #E) follow = (grammar at: #E_) follow.
	
