accessing
backTrack
	| btState |
	
	(backTrackStack isNotEmpty "and: [ self atChartAndStateEnd ]") "review this condition on backtracking for mixed and mixed filtered"
		ifFalse: [ ^ self ].
	btState := backTrackStack pop.
	readingPosition := btState readingPosition.
	charts
		backTrackAt: btState chartIndex -> btState stateIndex
		with: btState state