ops
, aStringOrDfa

	aStringOrDfa isString ifTrue: [  
		rightHandSide last addLast: (aStringOrDfa asGrayRegex asDFA regExpr: aStringOrDfa)
	] ifFalse: [ "assume DFA"
		rightHandSide last addLast: aStringOrDfa
	]