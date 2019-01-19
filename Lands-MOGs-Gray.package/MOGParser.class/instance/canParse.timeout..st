parsing
canParse: aString timeout: mSec
	|res p err |
	p := [ [res := self parse: aString] on: Error do: [:e | err := e]] fork.
	(Delay forMilliseconds: mSec) wait.
	p terminate.
	err ifNotNil: [ ^ false ].
	res ifNil: [ ^ false  ].
	^ true