copying
copySingleAlternativesWaitingFor: aState from: start to: end for: anAlgo
	"BACKTRACK--FOR THE REST OF THE ALTERNATIVES ??"

	| name chart element newState addedState|
	
	
	name := aState rule name.
	
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
			] ifFalse: [ (element expecting: name at: start)
					ifTrue: [ anAlgo
							backTrackAdd: newState
							for: addedState
							thatCompleted: aState 
					]	"child handling or keep alternative optimization ??" ] ]

	"^ copiedStates"