*Parsec
msgs

	^ self deepFlatten select: [ :i | i isMessage ]