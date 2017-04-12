action
copy

	|clone|
	clone := super copy.
	clone childrenStates:  childrenStates copy.
	^ clone.
