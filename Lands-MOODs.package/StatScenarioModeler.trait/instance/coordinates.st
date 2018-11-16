as yet unclassified
coordinates

	^ super coordinates ==> [ :values | |direction l|
		direction := (1 to: values size by: 3) collect: [:i | (values at: i) symbol ].
		l := (2 to: values size by: 3) collect: [ :i | (values at: i) number ].
		(l collectWithIndex: [ :n :i | (direction at: i) -> n  ]) asOrderedCollection
	]