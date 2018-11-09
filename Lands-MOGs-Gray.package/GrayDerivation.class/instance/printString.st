instance creation
printString

	^ grayState rule name , '(' , (input atAll: (grayState from + 1 to: grayState to)) , ')'