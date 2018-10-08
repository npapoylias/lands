accessing
trimmedInterval

	^ trimmedEnd ifNil: [ self interval ] ifNotNil: [from -> trimmedEnd]