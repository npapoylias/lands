*Parsec
block

	|args temps stmts|
	
	stmts := self stmts sequence.
	args := self detect: [ :i | i isOrderedCollection ] ifNone: [#()].	 
	temps := self detect: [ :i | i isArray ] ifNone: [ #() ].
	
	stmts <-> temps. "if tokens are present, first and last will be the || bars"
	stmts temporaries: (temps select: [ :t | t isToken not ]).
	
	^ RBBlockNode 
		arguments: args
		body: stmts.