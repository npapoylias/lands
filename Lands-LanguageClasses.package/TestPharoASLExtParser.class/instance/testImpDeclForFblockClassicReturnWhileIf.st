tests
testImpDeclForFblockClassicReturnWhileIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self impDeclForFBlockReturnWhileIfPostcard. 
	self assert: (RBParser parseMethod: original) = (PharoASLExtParser new parseval: extented) first.