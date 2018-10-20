*Parsec
lit
	|s|
	s := self string.
	^ s = 'nil'
		ifTrue: [ self nil ]
		ifFalse: [ s = 'false' 
				ifTrue: [ self false ]
				ifFalse: [ s = 'true' 
					ifTrue: [ self true ]
					ifFalse: [ self error: 'Token is not a default literal' ] 
				]
		]