tests
testCdr

	self assert: 
		(LiseCompiler compeval: '(cdr ''(3434.3 afsdf ''asdfasdfasd'' 5))') = 
		{ #afsdf . 'asdfasdfasd' . 5 } asOrderedCollection