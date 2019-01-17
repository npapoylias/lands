copying
copySingleAlternativesWaitingFor: aState from: start to: end for: anAlgo
	"BACKTRACK--FOR THE REST OF THE ALTERNATIVES ??"

	| name chart element newState btNewState addedState backTrackList postAdd |
	name := aState rule name.
	backTrackList := GrayCollection new.
	chart := self at: aState fromTerminal + 1.
	chart size to: 1 by: -1 do: [ :index | 
		element := chart at: index.
		((element expecting: name at: start) and: [ addedState isNil ])
			ifTrue: [ | stateAdded |
				newState := self copy: element till: end.
				newState ancestor: element.
				addedState := newState.
				"we may be memoizing for duplicates here.." "stateAdded := self currentAddWithState: newState."
				(stateAdded := self alreadyInCharts: newState) = newState
					ifTrue: [self memoizeLastSeenStack. current add: newState ].
				self
					updateChildrenWaitingFor: aState
					withNewState: newState
					andStateAdded: stateAdded.
				stateAdded == newState ifFalse: [ stateAdded := nil ] 
			] ifFalse: [ (element expecting: name at: start)
					ifTrue: [ 
						btNewState := self copy: element till: end. 
						btNewState ancestor: element.
						backTrackList addFirst: btNewState ] ] ].
			
	backTrackList isEmpty "single alternative chaining"
		ifTrue: [ newState ifNotNil: [ 
				(newState isComplete and: [ newState rule isOrdered and: [aState rule isEof not] ])
					ifTrue: [ "current removeLast."newState ignore.  algo complete: newState"self copySingleAlternativesWaitingFor: newState from: newState from to: newState to for: anAlgo"  ] ]]
		ifFalse: [
			backTrackList
				do: [ :s | anAlgo backTrackAdd: s for: addedState thatCompleted: aState ]	"should be added in BTStack in reverse"
		]

	"^ copiedStates"