tests
testCdr

	self assert: 
		(LiseInterpreter parseval: '(cdr ''(3434.3 afsdf ''asdfasdfasd'' 5))') = 
		{ #afsdf . 'asdfasdfasd' . 5 } asOrderedCollection