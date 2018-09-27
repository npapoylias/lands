accessing
backTrack
	| btState |

	(backTrackStack isEmpty or: [ (btState := backTrackStack pop) isNil ]) 
		ifTrue: [ ^ nil ].
	readingPosition := btState readingPosition.
	^ btState hasFailed 
		ifTrue: [ self backTrack ] "memoized failure"
		ifFalse: [
			(charts
				backTrackAt: btState chartIndex -> btState stateIndex
				with: btState state
				havingCompleted: btState completedState
				marking: backTrackStack) ifFalse: [ self backTrack ] ifTrue: [ btState]]