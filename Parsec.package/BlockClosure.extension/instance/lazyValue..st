*Parsec
lazyValue: anArgument

	^ anArgument isCollection "what about more nested cases ? -- should check and use
	a more dedicated value method ?"
		ifTrue: [ [ self value: (self deepValue: anArgument) ] ]
		ifFalse: [ [ self value: anArgument value ] ]