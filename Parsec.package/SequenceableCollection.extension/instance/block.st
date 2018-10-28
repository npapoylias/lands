*Parsec
block

	|args temps stmts|
	
	stmts := self stmts sequence.
	args := self 
		detect: [ :i | 
			i isOrderedCollection and: [ 
				|nodes| 
				nodes := i nodes.  
				nodes ifNotEmpty: [ i nodes first isVar ] ifEmpty: [ false ] ] 
			] ifNone: [#()].	 
	temps := (self select: [ :i | i isArray ]) deepFlatten select: [:i | i isVar or: [i isToken]].
	
	stmts <-> temps. "if tokens are present, first and last will be the || bars"
	stmts temporaries: (temps select: [ :t | t isToken not ]).
	
	^ RBBlockNode 
		arguments: (args select: [ :a | a isVar ])
		body: stmts.