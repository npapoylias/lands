tests
testClassicReturnWhileIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self returnWhileIfPostcard.
	self assert: (RBParser parseMethod: original) = (PharoExtParser new parseval: extented) first.