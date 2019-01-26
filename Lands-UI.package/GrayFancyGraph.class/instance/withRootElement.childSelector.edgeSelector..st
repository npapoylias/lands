instance creation
withRootElement: anElement childSelector: aChildSelector edgeSelector: anEdgeSelector

	gElements := Set new. gEdges := Set new.
	self 
		addElement: anElement 
		childSelector: aChildSelector 
		edgeSelector: anEdgeSelector.

	