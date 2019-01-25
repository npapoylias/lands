tests
testCons

	self assert: 
		(LiseInterpreter parseval: '(cons 1 ''(3434.3 afsdf ''asdfasdfasd'' 5))') = 
		{1 . 3434.3 . #afsdf . 'asdfasdfasd' . 5 } asOrderedCollection