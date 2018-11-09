tests
testExpression

	self assert: (EgParser new parseval: 'example') first = 'example was parsed !' 