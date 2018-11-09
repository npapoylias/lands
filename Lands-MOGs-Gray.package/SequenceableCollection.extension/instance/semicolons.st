*Lands-MOGs-Gray
semicolons

	^ self deepFlatten select: [ :value | value isToken and: [ value string = ';' ] ]