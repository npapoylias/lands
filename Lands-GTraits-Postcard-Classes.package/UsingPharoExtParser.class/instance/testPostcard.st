tests
testPostcard

	self assert: self.postcard(100).
	self assert: self.postcard(200) equals: false.
	self.assert(self altPostcard: 100).
	self.assert(self altPostcard: 200. equals=false).
	"this last one will fail due to some var name loss in the extented versions -- direct parsing is green"
	self.assert((self.class()>>#postcard:).ast() . equals=(self class >> #altPostcard:) ast) 
	