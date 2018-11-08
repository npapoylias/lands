tests
testQuote
	"ordered quoting to have both - + as id and number in ids as x3 etc.."
	self assert: (LiseCompiler compileval: '(quote (testing 1 (2.0) -3.14))') = 
		{ #testing.  1 . {2.0} . -3.14}.