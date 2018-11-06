accessing
liseExpression

	^ super liseExpression ==> { 
		[ :values | values copyFrom: 2 to: values size - 1 ].
		[ :values | values second ].
		[ :values | { #quote . values second } ].
		[ :values | values second ].
		[ :value | value ].
		[ :value | value ].
		[ :value | value ].
	}