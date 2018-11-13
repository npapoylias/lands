tests
testCdr

	self assert: (:cdr '(3434.3 afsdf 'asdfasdfasd' 5)) = { #afsdf . 'asdfasdfasd' . 5 } 