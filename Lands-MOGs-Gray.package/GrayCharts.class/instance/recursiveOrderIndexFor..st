recursive-ordering
recursiveOrderIndexFor: aState

	| index recursiveAddedIndex |
	index := self lastSeenAt: aState ruleAtDot name.
	index isEmpty
		ifTrue: [ index := 1. recursiveAddedIndex := 0 ] 
		ifFalse: [ 
					index := index top x. 
					recursiveAddedIndex := aState ruleAtDot recursiveIndexOf: index 
		]. 
	^ recursiveAddedIndex = -1 ifTrue: [ -1 ] ifFalse: [ index + recursiveAddedIndex ]