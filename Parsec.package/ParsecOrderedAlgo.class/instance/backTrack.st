accessing
backTrack
	| btState |

	(backTrackStack isEmpty" and: [ self atChartAndStateEnd ]")
		ifTrue: [ ^ nil ].
	btState := backTrackStack pop.
	readingPosition := btState readingPosition.
	^ btState hasFailed 
		ifTrue: [ self backTrack ] "memoized failure"
		ifFalse: [
			(charts
				backTrackAt: btState chartIndex -> btState stateIndex
				with: btState state
				havingCompleted: btState completedState
				marking: backTrackStack) ifFalse: [ self backTrack ] ifTrue: [btState]]