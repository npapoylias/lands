accessing
loop

	^ super loop ==> [ :values |  
		values third |> { #whileTrue: . values fifth }	
	]
	