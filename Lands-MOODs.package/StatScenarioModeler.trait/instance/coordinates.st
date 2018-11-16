as yet unclassified
coordinates

	^ super coordinates ==> [ :values | |direction l|
		direction := (3 to: values size by: 3) collect: [:i | (values at: i) symbol ].
		l := (4 to: values size by: 3) collect: [ :i | (values at: i) number ].
		(l collectWithIndex: [ :n :i | (direction at: i) -> n  ]) asDictionary
	]