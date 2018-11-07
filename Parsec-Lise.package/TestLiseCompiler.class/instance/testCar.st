tests
testCar

	self assert: 
		(LiseCompiler compeval: '(car ''(3434.3 afsdf ''asdfasdfasd'' 5))') = 
		3434.3