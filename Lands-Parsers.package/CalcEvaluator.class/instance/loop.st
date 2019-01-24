accessing
loop

	^ super loop ==> [ :values |  
		values third block |> { #whileTrue: . values fifth }	
	]
	