parsing
parse: aString using: aGrammar timeout: seconds
	
	"used for debugging, spurious long parses or cases"
	|p|
	p := Processor activeProcess.
	[
		(Delay forSeconds: seconds) wait.
		[charts succeeded] whileFalse: [ |answer|
			answer := (ProceedDialogWindow new 
				title: 'Parsing is Taking too Long ??';
				text: 'Ok to Procceed / Cancel to Terminate & Investigate') openModal.
			answer 
				ifFalse: [  
					p terminate."could suspend / resume"
					self halt.	
				] ifTrue: [ (Delay forSeconds: seconds) wait. ]
		]
	] fork.
	^ self parse: aString using: aGrammar.
	