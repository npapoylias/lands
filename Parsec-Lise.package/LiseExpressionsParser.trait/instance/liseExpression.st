accessing
liseExpression

	^ super liseExpression ==> { 
		[ :values | 
			values nodes first |> { #valueWithArguments: . values nodes allButFirst } <-> values
		].
		[ :values | values second ].
		[ :values | { #quote . values second } array <-> values ].
		[ :values | values second ].
		[ :value | value ].
		[ :value | value ].
		[ :value | value symbol var <-> value ].
	}