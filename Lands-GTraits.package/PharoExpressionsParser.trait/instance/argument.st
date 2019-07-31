accessing
argument

	^ super argument ==> { 
		[ :values | 
			values first |> values allButFirst <-> values  
		].
		[ :v | v ].
		[ :v | v ].
		[ :v | v ]
	}