accessing
start

	^ super start ==> [ :values | 
		{ values first } method: { values allButFirst array return } 	
	]