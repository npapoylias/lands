tests
testImpInvFuncInvVarImpDeclForFblockClassicReturnWhileIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self impInvFuncInvVarImpDeclForFBlockReturnWhileIfPostcard. 
	self assert: (RBParser parseMethod: original) = (PharoASLExtParser new parseval: extented) first.