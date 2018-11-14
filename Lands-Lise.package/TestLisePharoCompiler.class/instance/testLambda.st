tests
testLambda

	(:(lambda (x) (+ x x)) 5) |=? 10.
	(:begin (define twice (lambda (x) (* 2 x))) (twice 5)) |=? 10.