accessing
transitions

	^ super transitions ==> [ :values | 
		values second select: [ :v | v isToken not ]
	]

	