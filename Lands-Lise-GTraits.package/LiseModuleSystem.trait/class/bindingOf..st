compiling
bindingOf: anObject
	
	 ^ (self canUnderstand: anObject below: Object) 
		ifTrue: [ anObject -> (self default perform: anObject) ]
		ifFalse: [ super bindingOf: anObject ].
	