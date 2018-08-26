visual-nodes
forestNodesOn: element index: atIndex of: forestSize
	| surroundingElement controls |
	surroundingElement := self defaultForestSurroundingShape elementOn: element model.
	controls := self controlsIndex: atIndex size: forestSize for: element model.
	element model: nil.
	surroundingElement embed: { 
		(element isCollection ifTrue: [ element first] ifFalse: [element]) . 
		controls
	} deepFlatten horizontally: 2.
	^ surroundingElement "allElements"