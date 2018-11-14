tests
testMisc

	self assert: (:+ 1 2 3) equals: 6.
	self assert: ((:dict (list (cons #key 1))) at: #key) equals: 1. 
	self assert: (:(lambda () 3)) equals: 3. 