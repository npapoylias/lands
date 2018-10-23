tests
testASLEquivalencePostcard

	"need to fix the trimmed end case for comments"

	self assert: self aslAST = self rbAST.
	self assert: self mogAslAST = self rbAST