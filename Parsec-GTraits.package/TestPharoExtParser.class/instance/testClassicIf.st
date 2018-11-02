tests
testClassicIf

	|original extented|
	original := (self class >> #postcard:) sourceCode.
	extented := self ifPostcard.
	self assert: (RBParser parseMethod: original) = (PharoExtParser new parseval: extented) first.