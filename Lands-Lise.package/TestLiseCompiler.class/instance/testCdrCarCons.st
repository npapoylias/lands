tests
testCdrCarCons

	self assert: 
		(LiseCompiler compileval: '(cons 
	(car (cdr ''(3434.3 afsdf ''asdfasdfas'' 5)))
	''(5))') = 
		{#afsdf . 5 } 