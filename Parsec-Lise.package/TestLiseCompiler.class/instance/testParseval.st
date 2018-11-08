tests
testParseval

	self assert: (LiseCompiler compileval: '(eval ''( (lambda (x) (+ x x)) 5) )') = 10.
	self assert: (LiseCompiler compileval: '(parseval ''((lambda (x) (+ x x)) 5)'')') = 10.
