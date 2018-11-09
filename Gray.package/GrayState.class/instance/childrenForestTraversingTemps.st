action
childrenForestTraversingTemps

	^ childrenForestTraversingTemps
		ifNil: [ 
			childrenForest 
				ifNil: [ childrenForestTraversingTemps := {{}} "terminals"]
				ifNotNil: [
					childrenForestTraversingTemps := childrenForest collect: [ :children | 
						(children collect: [ :child |  
						(child isSubRule	and: [ child isTerminal not ])
							ifTrue: [ child childrenForestTraversingTemps ]
							ifFalse: [ child ]
						]) deepFlatten 
					]
				]
		]
