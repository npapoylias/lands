tests
testCar

	self assert: 
		(LiseCompiler compileval: '(car ''(3434.3 afsdf ''asdfasdfasd'' 5))') = 
		3434.3