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
	chartIndex + 1 to: self size do: [:i | self removeIndex: i  ]. "remove"
	stateIndex to: self current size do: [ :i | self current removeIndex: i ].
	^ (self currentAdd: aNewState) 
		ifTrue: [ stateIndex := stateIndex - 1. true ] 
		ifFalse: [ stateIndex := stateIndex - 2. false ]
	"(self at: chartIndex) at: stateIndex put: aNewState."
	
	 "replay"