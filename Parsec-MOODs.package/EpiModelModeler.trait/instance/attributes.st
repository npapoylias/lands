accessing
attributes

	^ super attributes ==> [ :values | 
		Dictionary new 
			at: values second symbol
			put: (values fourth odds collect: [ :v | v symbol ]);
			yourself
	]

	