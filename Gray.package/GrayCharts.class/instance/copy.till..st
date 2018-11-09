copying
copy: element till: end
	| newState |
	newState := element copy.
	newState
		fromTerminal: element fromTerminal;
		toTerminal: chartIndex - 1.
	newState advanceDot end: end.
	^ newState