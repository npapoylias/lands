accessing
string

	"this should be trimmedEnd ~ fix !"
	^ (input atAll: (parsecState from + 1 to: parsecState to)) trim