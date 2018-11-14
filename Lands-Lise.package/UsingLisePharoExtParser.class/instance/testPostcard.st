tests
testPostcard

	self assert: self.postcard(100).
	self assert: self.postcard(200) equals: false.
	self.assert(self altLisePostcard: 100).
	self.assert(self altLisePostcard: 200. equals=false).
	"this last one will fail due to some var name loss in the extented versions -- direct parsing is green"
	