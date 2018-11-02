tests
testFblockClassicReturnWhileIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self fBlockReturnWhileIfPostcard.
	self assert: (RBParser parseMethod: original) = (PharoExtParser new parseval: extented) first.