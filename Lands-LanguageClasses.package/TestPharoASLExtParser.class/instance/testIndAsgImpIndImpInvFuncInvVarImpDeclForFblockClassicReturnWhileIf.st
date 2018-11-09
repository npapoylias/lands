tests
testIndAsgImpIndImpInvFuncInvVarImpDeclForFblockClassicReturnWhileIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self indAsgImpIndImpInvFuncInvVarImpDeclForFBlockReturnWhileIfPostcard. 
	self assert: (RBParser parseMethod: original) = (PharoASLExtParser new parseval: extented) first.