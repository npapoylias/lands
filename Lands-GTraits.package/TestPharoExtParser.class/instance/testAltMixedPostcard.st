tests
testAltMixedPostcard

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self altMixedPostcard. 
	self assert: (RBParser parseMethod: original) = (PharoExtParser new parseval: extented) first.