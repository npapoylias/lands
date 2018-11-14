tests
testLiseMixedPostcard

	self assert: (self liseMixedPostcard: 100). 
	self assert: (self liseMixedPostcard: 200) equals: false.