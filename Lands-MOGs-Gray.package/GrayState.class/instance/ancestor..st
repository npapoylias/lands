comparing
ancestor: anotherState

	ancestor := anotherState.
	self isComplete ifTrue: [ self setCanBeCompletedAt: to ] 