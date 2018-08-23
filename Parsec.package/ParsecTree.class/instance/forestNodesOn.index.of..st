visual-nodes
forestNodesOn: element index: atIndex of: forestSize
	| surroundingElement controls |
	surroundingElement := self defaultForestSurroundingShape element.
	controls := self controlsIndex: atIndex size: forestSize.	
	surroundingElement eqEmbed: { 
		(element isCollection ifTrue: [ element first] ifFalse: [element]) . 
		controls
	} deepFlatten horizontally: 2.
	^ surroundingElement allElements