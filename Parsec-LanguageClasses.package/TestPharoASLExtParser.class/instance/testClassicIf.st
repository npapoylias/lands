tests
testClassicIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self ifPostcard.
	self assert: (RBParser parseMethod: original) = (PharoASLParser new parseval: extented) first.