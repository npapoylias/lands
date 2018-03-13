action
memoizedChildrenForestTraversingTemps

	memoizedChildrenForest ifNil: [^ {{}} "terminals"].
	
	^ memoizedChildrenForest collect: [ :children | 
			(children collect: [ :child |  
					(child isSubRule	and: [ child isTerminal not ])
						ifTrue: [ child childrenForestTraversingTemps ]
						ifFalse: [ child ]
			]) deepFlatten 
		]
