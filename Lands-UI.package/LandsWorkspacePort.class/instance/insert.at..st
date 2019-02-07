lands-extentions
insert: text at: position
	| index |
	index := (position + 1) min: pluggableTextMorph text size.
	self editMorph paragraph
		replaceFrom: index 
		to: index - 1 "insertion"
		with: ((pluggableTextMorph text at: index) asString , text asString) asText
		displaying: true. 
	self augmentSelectionBy: text size + 1
	
		