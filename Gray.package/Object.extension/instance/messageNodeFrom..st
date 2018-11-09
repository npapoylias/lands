*Gray
messageNodeFrom: message
	^ (message isSymbol or: [ message isToken  ])
		ifTrue: [ "unary" message msg ]
		ifFalse: [ 
			message size = 1 
				ifTrue: [ message first msg ]
				ifFalse: [
					message first string last = $:
						ifTrue: [ message keyMsg ]
						ifFalse: [ message binMsg ] ]
		]