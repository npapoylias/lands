tests
testCar

	self assert: 
		(LiseInterpreter parseval: '(car ''(3434.3 afsdf ''asdfasdfasd'' 5))') = 
		3434.3