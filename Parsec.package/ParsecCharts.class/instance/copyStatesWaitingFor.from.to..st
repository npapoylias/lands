copying
copyStatesWaitingFor: aState from: start to: end

	| name chart element newState |

	name := aState rule name.
	
	chart := (self at: aState fromTerminal + 1).

    1 to: chart size do: [ :index |
		element := chart at: index.
		(element expecting: name at: start)
			ifTrue: [  |stateAdded|
				newState := element copy.
				newState fromTerminal: element fromTerminal; toTerminal: chartIndex - 1.
				newState advanceDot end: end.
				stateAdded := self currentAddWithState: newState.
				self
					updateChildrenWaitingFor: aState
					withNewState: newState
					andStateAdded: stateAdded 
			]
	]