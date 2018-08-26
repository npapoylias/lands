visual-nodes
forestNodesOn: element index: atIndex of: forestSize
	| surroundingElement controls |
	surroundingElement := self defaultForestSurroundingShape elementOn: element model.
	element model: nil.
	controls := self controlsIndex: atIndex size: forestSize for: element model.
	surroundingElement embed: { 
		(element isCollection ifTrue: [ element first] ifFalse: [element]) . 
		controls
	} deepFlatten horizontally: 2.
	^ surroundingElement "allElements"