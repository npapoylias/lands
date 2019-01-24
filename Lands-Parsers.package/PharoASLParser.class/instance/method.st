as yet unclassified
method

	^ super method ==> [ :values | 
			(values first method: {  
				values pragmas.
				values allButFirst vars.
				values stmts  
			}) <-> values
	] 