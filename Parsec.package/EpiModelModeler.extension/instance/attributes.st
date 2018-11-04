accessing
attributes

	^ super attributes ==> [ :values | 
		Dictionary new 
			at: values second symbol
			put: (values fourth select: [ :v | v isToken not ] thenCollect: [ :v | v symbol ])
	]