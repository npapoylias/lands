*Lands-MOGs-Gray
vars

	^ self deepFlatten select: [ :i | i isVar ]