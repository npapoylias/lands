tests
testQuote

	self assert: (:quote (testing 1 (2.0) -3.14)) equals:
		{ #testing.  1 . {2.0} . -3.14}.  