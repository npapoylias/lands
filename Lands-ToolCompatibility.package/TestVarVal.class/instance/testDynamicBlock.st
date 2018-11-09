tests
testDynamicBlock

	"you can optimize var @ or as value to just search the contexts for the values,
	and extend for setting x := 5 or returning (asReturnValue ?)"
	
	"both headless and headfull reproductions of this pass locally but fail on travis..."

	"self assert: self aMethod = { #key -> 3 } asDictionary.
	self assert: self aMethod2 = { #key -> 3 } asDictionary"