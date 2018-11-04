accessing
parameters

	^ super parameters ==> [ :values | 
		values second odds collect: [ :v | v symbol ] 
	]

	