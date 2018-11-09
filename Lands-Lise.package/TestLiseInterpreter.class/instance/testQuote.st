as yet unclassified
testQuote

	self assert: (LiseInterpreter parseval: '(quote (testing 1 (2.0) -3.14))') = 
		{ #testing.  1 . {2.0} asOrderedCollection . -3.14} asOrderedCollection.