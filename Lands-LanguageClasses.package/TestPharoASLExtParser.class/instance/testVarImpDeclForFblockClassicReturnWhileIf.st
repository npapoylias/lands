tests
testVarImpDeclForFblockClassicReturnWhileIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self varImpDeclForFBlockReturnWhileIfPostcard. 
	self assert: (RBParser parseMethod: original) = (PharoASLExtParser new parseval: extented) first.