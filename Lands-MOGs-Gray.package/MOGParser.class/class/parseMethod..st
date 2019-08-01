parsing
parseMethod: source
	|results|

	results := self new parseval: source.
	self assert: results size = 1. "should add a hook here for delegating to ambiguity handlers"
	^ results first