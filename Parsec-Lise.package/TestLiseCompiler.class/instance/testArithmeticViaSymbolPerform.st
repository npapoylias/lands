tests
testArithmeticViaSymbolPerform

	self assert: (LiseCompiler compeval: '(''+ 2 2)') = 4.
	self assert: (LiseCompiler compeval: '(''+ (* 2 100) (* 1 10))') = 210.