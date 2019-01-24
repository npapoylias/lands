accessing
parameters

	^ super parameters ==> [ :values | 
		values allButFirst odds collect: [ :v | v symbol ] 
	]

	