tests
testParseval

	self assert: (:eval '((lambda (x) (+ x x)) 5)) = 10.
	self assert: (:parseval '((lambda (x) (+ x x)) 5)') = 10.
