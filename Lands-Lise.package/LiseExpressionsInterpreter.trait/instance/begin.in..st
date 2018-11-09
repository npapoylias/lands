primitives
begin: aList in: anEnvironment

	aList allButFirst allButLast do: [:i | self eval: i in: anEnvironment ].
	^ self eval: aList last in: anEnvironment