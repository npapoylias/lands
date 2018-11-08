accessing
quotedExpression

	^ super quotedExpression ==> {  
		[ :values | (values copyFrom: 2 to: values size - 1) ].
		[ :value | value ].
		[ :values | { #quote . values } ].
		[ :value | value ].
		[ :value | value ].
	}