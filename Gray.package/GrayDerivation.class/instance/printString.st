instance creation
printString

	^ parsecState rule name , '(' , (input atAll: (parsecState from + 1 to: parsecState to)) , ')'