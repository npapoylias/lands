copying
copySingleAlternativesWaitingFor: aState from: start to: end for: anAlgo
	"BACKTRACK--FOR THE REST OF THE ALTERNATIVES ??"

	| name chart element newState addedState backTrackList |
	name := aState rule name.
	backTrackList := OrderedCollection new.
	chart := self at: aState fromTerminal + 1.
	chart size to: 1 by: -1 do: [ :index | 
		element := chart at: index.
		((element expecting: name at: start) and: [ addedState isNil ])
			ifTrue: [ | stateAdded |
				newState := self copy: element till: end.
				newState ancestor: element.
				addedState := newState.
				stateAdded := self currentAddWithState: newState.
				self
					updateChildrenWaitingFor: aState
					withNewState: newState
					andStateAdded: stateAdded ]
			ifFalse: [ (element expecting: name at: start)
					ifTrue: [ 
						newState := self copy: element till: end. 
						newState ancestor: element.
						backTrackList addFirst: newState ] ] ].
	backTrackList
		do: [ :s | anAlgo backTrackAdd: s for: addedState thatCompleted: aState ]	"should be added in BTStack in reverse"

	"^ copiedStates"