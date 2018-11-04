accessing
instanceTemplate

	^ super instanceTemplate ==> [ :values | |class state instance|
		class := Smalltalk globals at: values first string asSymbol.
		state := (values size = 5
			ifTrue: [ values fourth ]
			ifFalse: [ values sixth ]) asDictionary. "extends"	
		instance := class new.
		"update the whole instance before validation, to have access to all state"
		state keysAndValuesDo: [ :iv :value | instance instVarNamed: iv put: value ].
		"validation per instance"
		state keysAndValuesDo: [ :iv :value | |selector| 
			selector := (iv , ':') asSymbol.
			(instance class canUnderstand: selector)
				ifTrue: [ instance perform: selector withArguments: { value } ].
		].
		instance
	]