as yet unclassified
selectionCornerAsGlobalBound

	^ (self editMorph owner transform localBoundsToGlobal: 
		self editMorph paragraph selectionRects last) corner 