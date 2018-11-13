tests
testLambda

	self assert: (:(lambda (x) (+ x x)) 5) = 10.
	self assert: (:begin (define t (lambda (x) (* 2 x))) (t 5)) = 10.