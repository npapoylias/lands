tests
testParseval

	self assert: (LiseInterpreter parseval: '(eval ''( (lambda (x) (+ x x)) 5) )') = 10.
	self assert: (LiseInterpreter parseval: '(parseval ''((lambda (x) (+ x x)) 5)'')') = 10.
