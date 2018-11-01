tests
testMogAslMethod

	|out|
	out := (MOGMethodParser new parseval: 'test <start> ::= <expression>') first.
	self assert: out class = RBMethodNode.