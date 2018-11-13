tests
testIf

	self assert: (:if (> 6 5) (+ 1 1) (+ 2 2)) = 2.
	self assert: (:if (< 6 5) (+ 1 1) (+ 2 2)) = 4.