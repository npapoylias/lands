as yet unclassified
testDefine

	self assert: (LiseInterpreter parseval: '(begin (define x 3) (* x x))') = 9.
	self assert: (LiseInterpreter parseval: '(begin (set x (+ x 1)) (+ x 1))') = 5.
	