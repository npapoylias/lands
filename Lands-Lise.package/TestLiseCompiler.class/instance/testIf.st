tests
testIf

	self assert: (LiseCompiler compileval: '(if (> 6 5) (+ 1 1) (+ 2 2))') = 2.
	self assert: (LiseCompiler compileval: '(if (< 6 5) (+ 1 1) (+ 2 2))') = 4.