tests
testForFblockClassicReturnWhileIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self forFBlockReturnWhileIfPostcard.
	self assert: (RBParser parseMethod: original) = (PharoExtParser new parseval: extented) first.