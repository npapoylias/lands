tests
testAllPostcards

	self assert: self.postcard(100).
	self assert: self.postcard(200) equals: false.
	self.assert(self altLisePostcard: 100).
	self.assert(self altLisePostcard: 200. equals=false).
	self.assert(self altLiseMixedPostcard: 100).
	self.assert(self altLiseMixedPostcard: 200. equals=false).