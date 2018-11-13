tests
testDefine

	self assert: (:begin (define x 3) (* x x)) = 9. "not global in the compiled case"
	self assert: (:begin (define x 3) (set x (+ x 1)) (+ x 1)) = 5.
	