Parsec-LanguageClasses
number

	^ super number ==> [ :token |  
			RBLiteralValueNode
				value: (Number readFrom: token value)
				start: token start
				stop: token stop
	]