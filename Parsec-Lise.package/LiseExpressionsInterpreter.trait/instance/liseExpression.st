accessing
liseExpression

	^ super liseExpression ==> { 
		[ :values | values second ].
		[ :values | values copyFrom: 2 to: values size - 1 ].
		[ :values | { #quote . values second } ].
		[ :values | values second ].
		[ :value | value ].
		[ :value | value ].
		[ :value | value ].
	}