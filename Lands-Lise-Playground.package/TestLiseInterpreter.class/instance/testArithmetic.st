as yet unclassified
testArithmetic

	self assert: (LiseInterpreter parseval: '(+ 2 2)') = 4.
	self assert: (LiseInterpreter parseval: '(+ (* 2 100) (* 1 10))') = 210.