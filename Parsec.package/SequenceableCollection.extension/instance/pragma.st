*Parsec
pragma

	^ self size = 1
			ifTrue: [ self prgm ] "unary"
			ifFalse: [ 
				self first last = $:
					ifFalse: [ self binPrgm ] "binary"
					ifTrue: [ self keyPrgm ] "keyword" 
			]
