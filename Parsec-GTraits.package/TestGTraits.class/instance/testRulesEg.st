tests
testRulesEg

	self assert: (TestGTraitParser new parseval: 'test') results first = 'whatever'	