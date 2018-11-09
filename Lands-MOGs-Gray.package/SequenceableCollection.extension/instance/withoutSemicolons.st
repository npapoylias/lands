*Lands-MOGs-Gray
withoutSemicolons

	^ self select: [ :value | (value isToken and: [ value string = ';' ]) not ]