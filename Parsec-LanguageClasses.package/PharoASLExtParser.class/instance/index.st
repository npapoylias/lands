Parsec-LanguageClasses
index

	^ super index ==> [ :value | 
		value isCollection 
			ifTrue: [ value first -> value last ] "slice"
			ifFalse: [ value ]
		]