accessing
setCanBeCompletedAt: aPosition

	canBeCompletedAt := aPosition.
	ancestor ifNotNil: [ ancestor setCanBeCompletedAt: aPosition ] 