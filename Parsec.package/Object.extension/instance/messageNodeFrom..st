*Parsec
messageNodeFrom: message
	^ message isSymbol
		ifTrue: [ "unary" message msg ]
		ifFalse: [ message first last = $:
				ifTrue: [ message keyMsg ]
				ifFalse: [ message binMsg ] ]