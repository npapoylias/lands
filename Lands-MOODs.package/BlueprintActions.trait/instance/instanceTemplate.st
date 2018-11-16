traits
instanceTemplate

	^ super instanceTemplate ==> [ :values | |c state instance|
		c := Smalltalk globals at: values first string asSymbol.
		state := (values size = 5
			ifTrue: [ values fourth ]
			ifFalse: [ values sixth ]) asDictionary. "extends"	
		instance := c new.
		instance name: values second symbol.
		"update the whole instance before validation, to have access to all state"
		state keysAndValuesDo: [ :iv :value | |v|
			"update to Ord collection for multiple entries"
			v := (instance instVarNamed: iv)
				ifNil: [ instance instVarNamed: iv put: value ]
				ifNotNil: [ 
					v isOrderedCollection 
						ifTrue: [ v add: value ]
						ifFalse: [ v := { v . value } asOrderedCollection ] 
				]
		].
		"validation per instance"
		state keysAndValuesDo: [ :iv :value | |selector| 
			selector := (iv , ':') asSymbol.
			(instance class canUnderstand: selector)
				ifTrue: [ instance perform: selector withArguments: { value } ].
		].
		instance lit
	]