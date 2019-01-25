tests
testDefine

	(:begin (define x 3) (* x x)) |=? 9. "not global in the compiled case"
	(:begin (define x 3) (set x (+ x 1)) (+ x 1)) |=? 5.
	