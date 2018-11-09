*Gray
|> message
	| messageNodes |
	messageNodes := (message isSymbol or: [ message isToken ])
		ifTrue: [ "unary" { message msg } ]
		ifFalse: [ 
			(message first isSymbol or: [ message first isToken ])
				ifTrue: [ {self messageNodeFrom: message} ]
				ifFalse: [ message collect: [ :m | self messageNodeFrom: m ] ]
		].
	^ (self isNode 
			ifTrue: [ self ] 
			ifFalse: [ 
				self isLiteral 
					ifTrue: [self lit] "if this is not literal treat obj as global" 
					ifFalse: [self printString asSymbol var]
			 ]) |> messageNodes