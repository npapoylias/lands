instance creation
printString

	^ 'Token(' , (input atAll: (parsecState from + 1 to: parsecState to)) trim , ')'