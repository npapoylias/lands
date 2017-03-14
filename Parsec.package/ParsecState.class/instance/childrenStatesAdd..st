adding
childrenStatesAdd: aState

	^ (childrenStates 
		at: aState from 
		ifAbsent: [ childrenStates at: aState from put: OrderedCollection new ]) add: aState