accessing
addGlobalSelectorAsBlock: s 
	
	"Should we handle this with polymorphic valueWithArguments: a special # ? or ASL here ?"
	
	^ s isUnary 
		ifTrue: [ Compiler evaluate: '[ :a | ' , 'a ' , s asString , ']' ]
		ifFalse: [  
			s isBinary
				ifTrue: [ Compiler evaluate: '[ :a :b | ' , 'a ' , s asString , ' b' , ']' ]
				ifFalse: [  |args bl|
					args := (#at:put: findTokens: ':') addFirst: 'xRcvr'; yourself.
					bl := '[' , (args inject: '' into: [:t :n | t , ' :' , n  ]) , ' | xRcvr' ,
					(args allButFirst inject: '' into: [:t :n | t , n , ': ' , n , ' '  ]) , ' ]'.
					Compiler evaluate: bl
				]	
		]
	