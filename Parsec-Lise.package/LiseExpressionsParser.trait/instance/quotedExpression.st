accessing
quotedExpression

	^ super quotedExpression ==> {  
		[ :values | (values copyFrom: 2 to: values size - 1) array ].
		[ :values | { #quote . values } array ].
		[ :value | value ].
		[ :value | value ].
		[ :value | value ].
	}