instance creation
printString

	^ 'Token(' , (input atAll: (grayState from + 1 to: grayState to)) trim , ')'