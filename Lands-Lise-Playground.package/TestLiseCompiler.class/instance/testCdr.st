tests
testCdr

	self assert: 
		(LiseCompiler compileval: '(cdr ''(3434.3 afsdf ''asdfasdfasd'' 5))') = 
		{ #afsdf . 'asdfasdfasd' . 5 } 