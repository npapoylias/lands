*Parsec
|> message
	| messageNodes |
	messageNodes := message isSymbol
		ifTrue: [ "unary" { message msg } ]
		ifFalse: [ message collect: [ :m | self messageNodeFrom: m ] ].
	^ self lit |> messageNodes