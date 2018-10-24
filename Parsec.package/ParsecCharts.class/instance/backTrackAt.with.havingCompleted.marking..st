accessing
backTrackAt: btState with: aNewState havingCompleted: completedState marking: backTrackStack
	"should update currentDo: also ~ there are code evolution duplications here btState holds most other info"

	| stateAdded oldState |
	chartIndex := btState chartIndex.	"indexPair key."
	current := self at: chartIndex.
	stateIndex := btState stateIndex.	"indexPair value."
	backTrackStack markFailureFor: (self current at: stateIndex).
	logging
		ifTrue: [ Transcript
				show:
					'BT: [Chart' , chartIndex asString , '(' , stateIndex asString , ')'
						, ']';
				show: '====================== # ' ].
	chartIndex + 1 to: self size do: [ :i | self removeIndex: i ].	"remove"
	oldState := self current at: stateIndex.
	logging
		ifTrue: [ Transcript
				show: aNewState;
				show: 'instead of: # ';
				show: oldState;
				cr ].
	stateIndex to: self current size do: [ :i | self current removeIndex: i ].

	"aNewState rule name = #message ifTrue: [ self halt ]."
	self
		updateLastSeenOnBackTrackFrom: oldState
		to: aNewState
		given: btState.
	stateAdded := self currentAddWithState: aNewState.	"new state should be last seen here only if added.."

	"backTrack for previous complete returning to child of ordered rule"
	"self updateLastSeenForBackTrackedOrderedChild: stateAdded."

	self
		updateChildrenWaitingFor: completedState
		withNewState: aNewState
		andStateAdded: stateAdded.
	^ stateAdded == aNewState
		ifTrue: [ stateIndex := stateIndex - 1.
			true ]
		ifFalse: [ "(self at: chartIndex) at: stateIndex put: aNewState."
			"replay"
			stateIndex := stateIndex - 1.
			false ]