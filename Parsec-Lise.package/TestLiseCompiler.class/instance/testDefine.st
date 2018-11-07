tests
testDefine

	self assert: (LiseCompiler compileval: '(begin (define x 3) (* x x))') = 9.
	self assert: (LiseCompiler compileval: '(begin (set x (+ x 1)) (+ x 1))') = 5.
	