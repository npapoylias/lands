accessing
quotedExpression

	^ super quotedExpression ==> {  
		[ :values | self halt. (values copyFrom: 2 to: values size - 1) array <-> values ].
		[ :values | { #quote . values } array <-> values ].
		[ :value | value ].
		[ :value | value ].
		[ :value | value sym <-> value ].
	}