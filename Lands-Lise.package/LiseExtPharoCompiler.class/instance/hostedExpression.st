accessing
hostedExpression

	^ super hostedExpression ==> {  
		[ :values | values second ].
		[ :values | 
			values second |> { #polyValueWithArguments: . values nodes allButFirst array } <-> values
		].
	} 