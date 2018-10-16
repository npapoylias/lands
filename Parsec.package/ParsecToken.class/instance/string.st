instance creation
string

	^ (input atAll: (parsecState from + 1 to: parsecState to)) trim