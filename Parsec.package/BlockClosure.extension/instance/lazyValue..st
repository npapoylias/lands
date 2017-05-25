*Parsec
lazyValue: anArgument

	^ anArgument isCollection "what about more nested cases ? -- should check and use
	a more dedicated value method ?"
		ifTrue: [ [ self value: (anArgument collect: [ :arg | arg value ]) ] ]
		ifFalse: [ [ self value: anArgument value ] ]