tests
testArithmeticViaObjectPerform

	"in fact you can extend this to do both perform: symbol or perform: block (ie (2 + 2)) 
	or break it into multiple keys …"

	self assert: (LiseCompiler compeval: '(2 ''+ 2)') = 4.
	self assert: (LiseCompiler compeval: '((* 2 100) ''+ (* 1 10))') = 210.