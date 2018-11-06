accessing
quotedExpression

	^ super quotedExpression ==> {  
		[ :values | (values copyFrom: 2 to: values size - 1) ].
		[ :values | { #quote . values } ].
		[ :value | value ].
		[ :value | value ].
		[ :value | value ].
	}