rules
loop

	^ super loop ==> [ :tokens | [ |value|
			tokens third whileTrue: [ 
				tokens sixth do: [ :stmt | value := stmt value ] ]. "if and optinal else"
			value "return last"
		] ]
	