changing suspended state
complete: aState

	aState rule name == #gamma ifTrue: [ 
		charts successfullTrees add: aState ].
	
	charts copyStatesWaitingFor: aState 
			from: aState from"previousReadingPosition"
			to: aState to
