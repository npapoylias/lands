lands-extentions
augmentSelectionBy: numberOfChars

	pluggableTextMorph 
		selectFrom: (pluggableTextMorph selectionInterval first) 
		to: pluggableTextMorph selectionInterval last + numberOfChars.
	self editMorph updateFromParagraph.
	
	
		