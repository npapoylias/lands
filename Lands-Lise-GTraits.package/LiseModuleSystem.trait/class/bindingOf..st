compiling
bindingOf: anObject

	 ^ (self canUnderstand: anObject) 
		ifTrue: [ anObject -> (self default perform: anObject) ]
		ifFalse: [ super bindingOf: anObject ].
	