tests
testLisePostcardWithFuncDeclaration

	self assert: (: (:self lisePostCard) 100). 
	self assert: (: (:self lisePostCard) 200) equals: false.