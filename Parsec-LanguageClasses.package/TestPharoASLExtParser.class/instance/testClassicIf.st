tests
testClassicIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self ifPostcard.
	self assert: (RBParser parseMethod: original) = (PharoASLExtParser new parseval: extented) first.