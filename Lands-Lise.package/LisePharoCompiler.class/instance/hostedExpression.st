accessing
hostedExpression

	^ super hostedExpression ==> {  
		[ :values | values ].
		[ :values | 
			values first |> { #polyValueWithArguments: . values allButFirst array } <-> values
		].
	} 