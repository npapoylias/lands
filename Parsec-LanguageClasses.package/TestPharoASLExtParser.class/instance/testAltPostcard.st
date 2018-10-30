tests
testAltPostcard

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self altPostcard. 
	self assert: (RBParser parseMethod: original) = (PharoASLExtParser new parseval: extented) first.