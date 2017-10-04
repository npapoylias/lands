copying
copySingleAlternativesWaitingFor: aState from: start to: end for: anAlgo
	"BACKTRACK--FOR THE REST OF THE ALTERNATIVES ?? -- SHOULD SHORT ACCORDING TO PRECENCE"

	| name chart element newState addedState backTrackList|
	
	
	name := aState rule name.
	backTrackList := OrderedCollection new.
	
	chart := self at: aState fromTerminal + 1.
	
	chart size to: 1 by: -1 do: [ :index | 
		element := chart at: index.
		newState := element copy.
		newState fromTerminal: element fromTerminal; toTerminal: chartIndex - 1.
		newState advanceDot end: end.
		((element expecting: name at: start) and: [addedState isNil])
			ifTrue: [ | stateAdded |
				addedState := newState.
				stateAdded := self currentAddWithState: newState.
				self
					updateChildrenWaitingFor: aState
					withNewState: newState
					andStateAdded: stateAdded 
			] ifFalse: [ 
				(element expecting: name at: start)
					ifTrue: [ 
						backTrackList addFirst: newState. "should be added in BTStack in reverse"
						"anAlgo
							backTrackAdd: newState
							for: addedState
							thatCompleted: aState" 
					]	"child handling or keep alternative optimization ??" ] ].
			
		backTrackList do: [ :s | anAlgo backTrackAdd: s for: addedState thatCompleted: aState ]. "should be added in BTStack in reverse"

	"^ copiedStates"