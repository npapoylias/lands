*Parsec
pragmas

	^ self deepFlatten select: [ :i | i isPragma ]