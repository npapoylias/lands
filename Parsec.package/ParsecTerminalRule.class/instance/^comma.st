ops
, aStringOrDfa

	aStringOrDfa isString ifTrue: [  
		rightHandSide last addLast: (aStringOrDfa asParsecRegex asDFA regExpr: aStringOrDfa)
	] ifFalse: [ "assume DFA"
		rightHandSide last addLast: aStringOrDfa
	]