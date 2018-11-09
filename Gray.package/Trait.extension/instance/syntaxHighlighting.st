*Gray
syntaxHighlighting
	|shMethod|
	shMethod := self classTrait methods 
		detect: [ :m | m selector = #syntaxHighlighting ]
		ifNone: [ nil ].
	^ shMethod 
		ifNil: [ self defaultSyntaxHighlighting ]
		ifNotNil: [ shMethod valueWithReceiver: self arguments: #()  ]