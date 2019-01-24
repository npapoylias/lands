primitives
define: aList in: anEnvironment

	^ anEnvironment "return the val of the define" 
		define: aList second 
		as: (self eval: aList third in: anEnvironment)