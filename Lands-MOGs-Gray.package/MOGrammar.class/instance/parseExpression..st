accessing
parseExpression: source
	|results|
	results := self parseval: source.
	self assert: results size = 1. "should add a hook here for delegating to ambiguity handlers"
	^ results first