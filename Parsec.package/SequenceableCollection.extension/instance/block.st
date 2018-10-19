*Parsec
block

	|args temps stmts|
	
	stmts := self stmts sequence.
	args := (self detect: [ :i | i isOrderedCollection ] ifNone: [#()])
		collect: [ :a | a var ].	 
	temps := (self detect: [ :i | i isArray ] ifNone: [ #() ])
		collect: [ :t | t isToken ifTrue: [ t ] ifFalse: [ t var ] ].
	
	stmts <-> self temps. "if tokens are present, first and last will be the || bars"
	stmts temporaries: (self temps select: [ :t | t isToken not ]).
	
	^ RBBlockNode 
		arguments: args
		body: stmts.