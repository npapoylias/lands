tests
testPostcard

	self assert: self.postcard(100).
	self assert: self.postcard(200) equals: false.
	self.assert(self altPostcard: 100).
	self.assert(self altPostcard: 200. equals=false).
	
	