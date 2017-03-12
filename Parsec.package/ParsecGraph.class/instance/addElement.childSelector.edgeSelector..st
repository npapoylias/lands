instance creation
addElement: anElement childSelector: aChildSelector edgeSelector: anEdgeSelector

	(gElements includes: anElement) 
		ifFalse: [ 
			gElements add: anElement.
			gEdges addAll: (anElement perform: anEdgeSelector).
			(anElement perform: aChildSelector) do: [ :child | 
				self addElement: child childSelector: aChildSelector edgeSelector: anEdgeSelector  
			]
		]	
	

	