tests
testLambda

	self assert: (LiseCompiler compileval: '((lambda (x) (+ x x)) 5)') = 10.
	self assert: (LiseCompiler compileval: '(begin (define twice (lambda (x) (* 2 x))) (twice 5))') = 10.