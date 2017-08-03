action
childrenForestTraversingTemps

	childrenForest ifNil: [^ {{}} "terminals"].
	
	^ childrenForest collect: [ :children | 
			(children collect: [ :child |  
					(child isSubRule	and: [ child isTerminal not ])
						ifTrue: [ child childrenForestTraversingTemps ]
						ifFalse: [ child ]
			]) deepFlatten 
		]
