copying
copyStatesWaitingFor: aState from: start to: end

	| name chart element newState added|

	name := aState rule name.
	added := 0.	
	chart := (self at: aState fromTerminal + 1).

    1 to: chart size do: [ :index |
		element := chart at: index.
		(element expecting: name at: start)
			ifTrue: [  |stateAdded|
				newState := element copy.
				newState fromTerminal: element fromTerminal; toTerminal: chartIndex - 1.
				newState advanceDot end: end.
				newState ancestor: element.
				stateAdded := self alreadyInCharts: newState.
				stateAdded == newState 
					ifTrue: [ current add: newState. added := added + 1 ]
					ifFalse: [ ambiguous := true ].
				self
					updateChildrenWaitingFor: aState
					withNewState: newState
					andStateAdded: stateAdded.
				
			]
	].

	(added = 1 and: [ newState isComplete and: [newState rule isOrdered not and: [aState rule isEof not]] ]) 
		"ifFalse: [ postAdd do: [ :a | current add: a] ]"
		ifTrue: [ "current removeLast."newState ignore. algo complete: newState"self copyStatesWaitingFor: newState from: newState from to: newState to" ]

	"postAdd do: [:a | current add: a ]"