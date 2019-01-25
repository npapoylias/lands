tests
testArithmeticViaSymbolPerform

	self assert: (LiseCompiler compileval: '(''+ 2 2)') = 4.
	self assert: (LiseCompiler compileval: '(''+ (* 2 100) (* 1 10))') = 210.