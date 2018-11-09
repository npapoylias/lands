tests
testClassicWhileIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self whileIfPostcard.
	self assert: (RBParser parseMethod: original) = (PharoASLExtParser new parseval: extented) first.