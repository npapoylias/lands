*Lands-MOGs-Gray
bars

	^ self deepFlatten select: [ :i | i isToken and: [ i string = '|' ] ]