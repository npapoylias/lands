accessing
parameters

	^ super parameters ==> [ :values | 
		values second 
			select: [ :v | v isToken not ]
			thenCollect: [ :v | v symbol ] 
	]

	