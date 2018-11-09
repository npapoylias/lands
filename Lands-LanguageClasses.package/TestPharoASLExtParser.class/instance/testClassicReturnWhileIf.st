tests
testClassicReturnWhileIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self returnWhileIfPostcard.
	self assert: (RBParser parseMethod: original) = (PharoASLExtParser new parseval: extented) first.