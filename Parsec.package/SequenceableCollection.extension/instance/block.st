*Parsec
block

	|args temps stmts t|
	
	stmts := self stmts.
	
	t := self second detect: [ :v | v isToken ] ifNone: [ nil ].
	
	t 
		ifNil: [ args := #(). temps := self vars "can be empty" ]
	 	ifNotNil: [ t string = '|' 
			ifTrue: [ 
				args := self second vars. 
				self third isSequence
					ifTrue: [ temps := #() ]
					ifFalse: [ temps := self third vars. stmts <-> self third  ]
			]
		].
	
	^ RBBlockNode 
		arguments: args
		body: stmts.