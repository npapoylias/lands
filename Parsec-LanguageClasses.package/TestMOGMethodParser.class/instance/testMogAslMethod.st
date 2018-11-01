tests
testMogAslMethod
 
	|out|
	out := (MOGMethodParser new parseval: 'test <start> ::= <expression>') first.
	self assert: out class = RBMethodNode.
	self assert: out body statements first class = RBReturnNode.
	self assert: out body statements first value value class = ParsecRule.
	self assert: out body statements first value value name = #start.