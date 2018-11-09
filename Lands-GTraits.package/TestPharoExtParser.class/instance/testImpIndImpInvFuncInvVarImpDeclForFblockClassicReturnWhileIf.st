tests
testImpIndImpInvFuncInvVarImpDeclForFblockClassicReturnWhileIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self impIndImpInvFuncInvVarImpDeclForFBlockReturnWhileIfPostcard. 
	self assert: (RBParser parseMethod: original) = (PharoExtParser new parseval: extented) first.