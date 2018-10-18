*Parsec
method: aCollection

	|mNode|

	self size = 1
		ifTrue: [ mNode := self dclr ] "unary"
		ifFalse: [ 
			self first last = $:
				ifFalse: [ mNode := self binDclr ] "binary"
				ifTrue: [ mNode := self keyDclr ] "keyword" 
		].
	
	mNode pragmas: aCollection pragmas.
	mNode body: aCollection stmts sequence.
	mNode body temps: aCollection vars.
	
	^ mNode