accessing
backTrackAt: indexPair with: aNewState

	"should update currentDo: also"

	chartIndex := indexPair key. current := self at: chartIndex.
	stateIndex := indexPair value.
	
	logging ifTrue: [
		Transcript
			show: 'BT: [Chart' , chartIndex asString , '(' , stateIndex asString , ')' ,  ']';  
			show: '======================'; cr.
	].
	(self at: chartIndex) at: stateIndex put: aNewState.
	chartIndex + 1 to: self size do: [:i | self removeIndex: i  ]. "remove"
	stateIndex + 1 to: self current size do: [ :i | self current removeIndex: i ].
	self halt.
	stateIndex := stateIndex - 1. "replay"