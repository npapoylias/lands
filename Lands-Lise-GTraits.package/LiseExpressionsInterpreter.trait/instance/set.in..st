primitives
set: aList in: anEnvironment

	^ anEnvironment "return the val search recursively" 
		at: aList second 
		put: (self eval: aList third in: anEnvironment) 
	
	