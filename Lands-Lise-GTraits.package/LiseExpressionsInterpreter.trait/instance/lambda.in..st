primitives
lambda: aList in: anEnvironment

	^ UserProcedure 
		params: aList second
		body: aList third
		env: anEnvironment
	