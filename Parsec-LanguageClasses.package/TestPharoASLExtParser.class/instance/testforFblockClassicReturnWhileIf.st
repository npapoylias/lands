tests
testforFblockClassicReturnWhileIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self forFBlockReturnWhileIfPostcard.
	self assert: (RBParser parseMethod: original) = (PharoASLExtParser new parseval: extented) first.