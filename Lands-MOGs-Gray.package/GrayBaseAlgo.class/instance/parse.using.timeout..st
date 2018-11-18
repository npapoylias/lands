parsing
parse: aString using: aGrammar timeout: seconds
	
	"used for debugging, spurious long parses or cases"
	[
		(Delay forSeconds: seconds) wait.
		charts succeeded ifFalse: [ charts interrupt ].
	] fork.
	^ self parse: aString using: aGrammar.
	