parsing
canParse: aString
	|res err |
	res := [self parse: aString] on: Error do: [:e | err := e].
	err ifNotNil: [ ^ false ].
	res ifNil: [ ^ false  ].
	^ true