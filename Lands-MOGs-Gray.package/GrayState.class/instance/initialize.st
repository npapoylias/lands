initialization
initialize

	childrenStates := Dictionary new.
	alternative := false.
	fromTerminal := toTerminal := 0.
	ancestor := nil.
	canBeCompletedAt := 0