copying
copyStatesWaitingFor: aState from: start to: end
	| name chart element newState |
	
	name := aState rule name.
	chart := self at: aState fromTerminal + 1.
	1 to: chart size do: [ :index | 
		element := chart at: index.
		(element expecting: name at: start)
			ifTrue: [ 
				newState := element copy.
				newState
					fromTerminal: element fromTerminal;
					toTerminal: chartIndex - 1.
				newState advanceDot end: end.
				1 to: newState alternativeSelf size do: [ :i | 
					(newState alternativeSelf at: i) 
						advanceDot;
						fromTerminal: element fromTerminal;
						toTerminal: chartIndex - 1;
						end: end ].
				self if: (self currentAddReturningState: newState) update: newState with: aState. ] ]