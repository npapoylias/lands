tests
testArithmetic

	self assert: ((LiseCompiler parseval: '(+ 2 2)') isKindOf: RBProgramNode).
	self assert: ((LiseCompiler parseval: '(+ (* 2 100) (* 1 10))') isKindOf: RBProgramNode).