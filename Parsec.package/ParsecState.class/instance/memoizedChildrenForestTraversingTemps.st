action
memoizedChildrenForestTraversingTemps

	| memoizedChildrenForestTraversingTemps |
	^ memoizedChildrenForestTraversingTemps
		ifNil: [ 
			memoizedChildrenForest 
				ifNil: [ memoizedChildrenForestTraversingTemps := {{}} "terminals"]
				ifNotNil: [ memoizedChildrenForestTraversingTemps :=
					memoizedChildrenForest collect: [ :children | 
						(children collect: [ :child |  
							(child isSubRule	and: [ child isTerminal not ])
								ifTrue: [ child childrenForestTraversingTemps ]
								ifFalse: [ child ]
							]) deepFlatten 
					]
				]
		]