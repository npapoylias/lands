accessing
categoryDistribution

	^ super categoryDistribution ==> [ :values | |percentages entity|
		percentages := (1 to: values size by: 4) collect: [:i | (values at: i) number ].
		entity := (3 to: values size by: 4) collect: [ :i | (values at: i) symbol ].
		(entity collectWithIndex: [ :e :i | e -> (percentages at: i)  ]) asDictionary
	]