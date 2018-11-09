accessing
method

	^ super method ==> [ :values | 
		{ values first } method: { 
			values second lit return 
		} 
	]