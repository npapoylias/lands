*Parsec
stmts

	^ self deepFlatten select: [ :i | i isSequence ]