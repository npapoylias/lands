*Parsec
vars

	^ self deepFlatten select: [ :i | i isVar ]