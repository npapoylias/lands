as yet unclassified
testIf

	self assert: (LiseInterpreter parseval: '(if (> 6 5) (+ 1 1) (+ 2 2))') = 2.
	self assert: (LiseInterpreter parseval: '(if (< 6 5) (+ 1 1) (+ 2 2))') = 4.