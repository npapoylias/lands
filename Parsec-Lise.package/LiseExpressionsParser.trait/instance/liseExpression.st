accessing
liseExpression

	^ super liseExpression ==> { 
		[ :values | 
			values second |> { #valueWithArguments: . values nodes allButFirst array } <-> values
		].
		[ :values | values second ].
		[ :values | values second ].
		[ :values | values second ].
		[ :value | value ].
		[ :value | value ].
		[ :value | value symbol var <-> value ].
	}