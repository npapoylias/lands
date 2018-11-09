eval
parseval: aString

	^ self eval: (self parse: aString)
		in: Environment global.