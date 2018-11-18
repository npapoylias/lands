tests
testPostcard

	self assert: (self postcard: 100).
	self assert: (self postcard: 200) equals: false.