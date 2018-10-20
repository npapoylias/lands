*Parsec
stmts

	^ self deepFlatten select: [ :i | i isVar not and: [i isPragma not and: [i isToken not] ] ]