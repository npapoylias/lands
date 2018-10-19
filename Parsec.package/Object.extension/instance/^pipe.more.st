*Parsec
|> message
	| messageNodes |
	messageNodes := message isSymbol
		ifTrue: [ "unary" { message msg } ]
		ifFalse: [ 
			message first isSymbol
				ifTrue: [ {self messageNodeFrom: message} ]
				ifFalse: [ message collect: [ :m | self messageNodeFrom: m ] ]
		].
	^ (self isNode ifTrue: [ self ] ifFalse: [ self lit]) |> messageNodes