tests
testLisePostcard

	self assert: (self lisePostcard: 100). 
	self assert: (self lisePostcard: 200) equals: false.