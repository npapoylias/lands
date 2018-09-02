parsing
parse: aString using: aGrammar timeout: seconds
	
	"used for debugging, spurious long parses or cases"
	|p|
	p := Processor activeProcess.
	[
		(Delay forSeconds: seconds) wait.
		charts succeeded ifFalse: [ 
			p signalException: (TimedOut new messageText: 'Parsing taking too long ?? Investigate !')
		]
	] fork.
	^ self parse: aString using: aGrammar.
	