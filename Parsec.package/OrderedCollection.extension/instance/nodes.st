*Parsec
nodes

	^ self deepFlatten select: [ :i | i isNode ]