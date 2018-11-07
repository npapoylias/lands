tests
testCons

	self assert: 
		(LiseCompiler compileval: '(cons 1 ''(3434.3 afsdf ''asdfasdfasd'' 5))') = 
		{1 . 3434.3 . #afsdf . 'asdfasdfasd' . 5 } 