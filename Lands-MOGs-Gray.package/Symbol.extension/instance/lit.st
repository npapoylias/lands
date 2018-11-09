*Lands-MOGs-Gray
lit
	|s|
	s := self string.
	^ s = 'self'
		ifTrue: [ self var ]
		ifFalse: [  
			s = 'super'
				ifTrue: [ self var ]
				ifFalse: [  
					s = 'thisContext'
						ifTrue: [ self var ]
						ifFalse: [ super lit ]	
				]	
		]