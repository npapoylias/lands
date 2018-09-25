accessing
backTrackAt: indexPair with: aNewState havingCompleted: completedState marking: backTrackStack

	"should update currentDo: also"

	|stateAdded oldState|

	chartIndex := indexPair key. current := self at: chartIndex.
	stateIndex := indexPair value.
	
	backTrackStack markFailureFor: (self current at: stateIndex). 
	
	logging ifTrue: [
		Transcript
			show: 'BT: [Chart' , chartIndex asString , '(' , stateIndex asString , ')' ,  ']';  
			show: '====================== # '.
	].
	
	chartIndex + 1 to: self size do: [:i | self removeIndex: i  ]. "remove"
	
	oldState := self current at: stateIndex.
	
	logging ifTrue: [ 
		Transcript show: aNewState; show: 'instead of: # '; show: oldState; cr.
	].

	stateIndex to: self current size do: [ :i | self current removeIndex: i ].
	
	stateAdded := self currentAddWithState: aNewState.
	
	
	self
		updateChildrenWaitingFor: completedState
		withNewState: aNewState
		andStateAdded: stateAdded.
		
	^ (stateAdded == aNewState) 
		ifTrue: [ 
			self updateLastSeenOnBackTrackFrom: oldState to: aNewState. 
			stateIndex := stateIndex - 1. true  
		] 
		ifFalse: [ stateIndex := stateIndex - 1. false ]
	"(self at: chartIndex) at: stateIndex put: aNewState."
	
	 "replay"