*Lands-MOGs-Gray
dots

	^ self deepFlatten select: [ :i | i isToken and: [ i string = '.' ] ]