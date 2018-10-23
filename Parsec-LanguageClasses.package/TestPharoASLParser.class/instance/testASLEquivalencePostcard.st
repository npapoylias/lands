tests
testASLEquivalencePostcard

	"need to fix the trimmed end case for comments"
	|source|
	self assert: self aslAST = self rbAST.
	self assert: self mogAslAST = self rbAST.
	source := (self class >> #postcard:) sourceCode.
	self assert: (RBParser parseMethod: source) = (PharoASLParser new parse: source) eval first.