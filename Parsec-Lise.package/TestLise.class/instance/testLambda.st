as yet unclassified
testLambda

	self assert: (LiseInterpreter parseval: '((lambda (x) (+ x x)) 5)') = 10.
	self assert: (LiseInterpreter parseval: '(begin (define twice (lambda (x) (* 2 x))) (twice 5))') = 10.