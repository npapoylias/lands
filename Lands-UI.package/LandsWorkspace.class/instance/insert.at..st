lands-extentions
insert: text at: position
	| index |
	index := (position + 1) min: (pluggableTextMorph text size + 1).
	self editMorph paragraph
		replaceFrom: index 
		to: index - 1 "insertion"
		with: text asText
		displaying: true. 
	self augmentSelectionBy: text size
	
		